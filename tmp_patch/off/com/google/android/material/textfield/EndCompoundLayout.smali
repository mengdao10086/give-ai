.class Lcom/google/android/material/textfield/EndCompoundLayout;
.super Landroid/widget/LinearLayout;
.source "EndCompoundLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;
    }
.end annotation


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private editText:Landroid/widget/EditText;

.field private final editTextWatcher:Landroid/text/TextWatcher;

.field private final endIconChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final endIconDelegates:Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;

.field private final endIconFrame:Landroid/widget/FrameLayout;

.field private endIconMinSize:I

.field private endIconMode:I

.field private endIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private endIconScaleType:Landroid/widget/ImageView$ScaleType;

.field private endIconTintList:Landroid/content/res/ColorStateList;

.field private endIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final endIconView:Lcom/google/android/material/internal/CheckableImageButton;

.field private errorIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private errorIconTintList:Landroid/content/res/ColorStateList;

.field private errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

.field private hintExpanded:Z

.field private final onEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

.field private suffixText:Ljava/lang/CharSequence;

.field private final suffixTextView:Landroid/widget/TextView;

.field final textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/widget/TintTypedArray;)V
    .registers 9

    #@0
    .line 151
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@7
    const/4 v0, 0x0

    #@8
    .line 96
    iput v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

    #@a
    .line 97
    new-instance v1, Ljava/util/LinkedHashSet;

    #@c
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    #@f
    iput-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconChangedListeners:Ljava/util/LinkedHashSet;

    #@11
    .line 114
    new-instance v1, Lcom/google/android/material/textfield/EndCompoundLayout$1;

    #@13
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/EndCompoundLayout$1;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    #@16
    iput-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editTextWatcher:Landroid/text/TextWatcher;

    #@18
    .line 127
    new-instance v1, Lcom/google/android/material/textfield/EndCompoundLayout$2;

    #@1a
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/EndCompoundLayout$2;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    #@1d
    iput-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->onEditTextAttachedListener:Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;

    #@1f
    .line 154
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@22
    move-result-object v2

    #@23
    const-string v3, "accessibility"

    #@25
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    #@2b
    iput-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@2d
    .line 156
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@2f
    const/16 v2, 0x8

    #@31
    .line 158
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/EndCompoundLayout;->setVisibility(I)V

    #@34
    .line 159
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->setOrientation(I)V

    #@37
    .line 160
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@39
    const v3, 0x800005

    #@3c
    const/4 v4, -0x2

    #@3d
    const/4 v5, -0x1

    #@3e
    invoke-direct {v0, v4, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@41
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@44
    .line 166
    new-instance v0, Landroid/widget/FrameLayout;

    #@46
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@49
    move-result-object v3

    #@4a
    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@4d
    iput-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconFrame:Landroid/widget/FrameLayout;

    #@4f
    .line 167
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@52
    .line 168
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    #@54
    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@57
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@5a
    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@61
    move-result-object v2

    #@62
    .line 172
    sget v3, Lcom/google/android/material/R$id;->text_input_error_icon:I

    #@64
    invoke-direct {p0, p0, v2, v3}, Lcom/google/android/material/textfield/EndCompoundLayout;->createIconView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;

    #@67
    move-result-object v3

    #@68
    iput-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@6a
    .line 173
    sget v4, Lcom/google/android/material/R$id;->text_input_end_icon:I

    #@6c
    invoke-direct {p0, v0, v2, v4}, Lcom/google/android/material/textfield/EndCompoundLayout;->createIconView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;

    #@6f
    move-result-object v2

    #@70
    iput-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@72
    .line 174
    new-instance v4, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;

    #@74
    invoke-direct {v4, p0, p2}, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;Landroidx/appcompat/widget/TintTypedArray;)V

    #@77
    iput-object v4, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconDelegates:Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;

    #@79
    .line 176
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    #@7b
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@7e
    move-result-object v5

    #@7f
    invoke-direct {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    #@82
    iput-object v4, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroid/widget/TextView;

    #@84
    .line 178
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/EndCompoundLayout;->initErrorIconView(Landroidx/appcompat/widget/TintTypedArray;)V

    #@87
    .line 179
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/EndCompoundLayout;->initEndIconView(Landroidx/appcompat/widget/TintTypedArray;)V

    #@8a
    .line 180
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/EndCompoundLayout;->initSuffixTextView(Landroidx/appcompat/widget/TintTypedArray;)V

    #@8d
    .line 182
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@90
    .line 184
    invoke-virtual {p0, v4}, Lcom/google/android/material/textfield/EndCompoundLayout;->addView(Landroid/view/View;)V

    #@93
    .line 185
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->addView(Landroid/view/View;)V

    #@96
    .line 186
    invoke-virtual {p0, v3}, Lcom/google/android/material/textfield/EndCompoundLayout;->addView(Landroid/view/View;)V

    #@99
    .line 188
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->addOnEditTextAttachedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;)V

    #@9c
    .line 189
    new-instance p1, Lcom/google/android/material/textfield/EndCompoundLayout$3;

    #@9e
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/EndCompoundLayout$3;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    #@a1
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@a4
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;
    .registers 1

    #@0
    .line 84
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;

    #@2
    return-object p0
.end method

.method static synthetic access$002(Lcom/google/android/material/textfield/EndCompoundLayout;Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 2

    #@0
    .line 84
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;

    #@2
    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/text/TextWatcher;
    .registers 1

    #@0
    .line 84
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editTextWatcher:Landroid/text/TextWatcher;

    #@2
    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/textfield/EndCompoundLayout;Lcom/google/android/material/textfield/EndIconDelegate;)V
    .registers 2

    #@0
    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setOnFocusChangeListenersIfNeeded(Lcom/google/android/material/textfield/EndIconDelegate;)V

    #@3
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .registers 1

    #@0
    .line 84
    invoke-direct {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->addTouchExplorationStateChangeListenerIfNeeded()V

    #@3
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .registers 1

    #@0
    .line 84
    invoke-direct {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->removeTouchExplorationStateChangeListenerIfNeeded()V

    #@3
    return-void
.end method

.method private addTouchExplorationStateChangeListenerIfNeeded()V
    .registers 3

    #@0
    .line 426
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    #@2
    if-eqz v0, :cond_15

    #@4
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@6
    if-eqz v0, :cond_15

    #@8
    .line 428
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_15

    #@e
    .line 429
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@10
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    #@12
    invoke-static {v0, v1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    #@15
    :cond_15
    return-void
.end method

.method private createIconView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;I)Lcom/google/android/material/internal/CheckableImageButton;
    .registers 6

    #@0
    .line 205
    sget v0, Lcom/google/android/material/R$layout;->design_text_input_end_icon:I

    #@2
    const/4 v1, 0x0

    #@3
    .line 206
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@6
    move-result-object p1

    #@7
    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    #@9
    .line 208
    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/CheckableImageButton;->setId(I)V

    #@c
    .line 209
    invoke-static {p1}, Lcom/google/android/material/textfield/IconHelper;->setCompatRippleBackgroundIfNeeded(Lcom/google/android/material/internal/CheckableImageButton;)V

    #@f
    .line 210
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@12
    move-result-object p2

    #@13
    invoke-static {p2}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    #@16
    move-result p2

    #@17
    if-eqz p2, :cond_22

    #@19
    .line 212
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1c
    move-result-object p2

    #@1d
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    #@1f
    .line 213
    invoke-static {p2, v1}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@22
    :cond_22
    return-object p1
.end method

.method private dispatchOnEndIconChanged(I)V
    .registers 5

    #@0
    .line 780
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconChangedListeners:Ljava/util/LinkedHashSet;

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
    if-eqz v1, :cond_18

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;

    #@12
    .line 781
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@14
    invoke-interface {v1, v2, p1}, Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;->onEndIconChanged(Lcom/google/android/material/textfield/TextInputLayout;I)V

    #@17
    goto :goto_6

    #@18
    :cond_18
    return-void
.end method

.method private getIconResId(Lcom/google/android/material/textfield/EndIconDelegate;)I
    .registers 3

    #@0
    .line 442
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconDelegates:Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;

    #@2
    # getter for: Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->customEndIconDrawableId:I
    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->access$500(Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;)I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_c

    #@8
    .line 443
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndIconDelegate;->getIconDrawableResId()I

    #@b
    move-result v0

    #@c
    :cond_c
    return v0
.end method

.method private initEndIconView(Landroidx/appcompat/widget/TintTypedArray;)V
    .registers 7

    #@0
    .line 243
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    #@2
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, -0x1

    #@8
    if-nez v0, :cond_32

    #@a
    .line 245
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconTint:I

    #@c
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1e

    #@12
    .line 248
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@15
    move-result-object v0

    #@16
    sget v3, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconTint:I

    #@18
    .line 247
    invoke-static {v0, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    #@1e
    .line 251
    :cond_1e
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconTintMode:I

    #@20
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_32

    #@26
    .line 252
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconTintMode:I

    #@28
    .line 254
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@2b
    move-result v0

    #@2c
    .line 253
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@32
    .line 257
    :cond_32
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconMode:I

    #@34
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@37
    move-result v0

    #@38
    const/4 v3, 0x0

    #@39
    if-eqz v0, :cond_60

    #@3b
    .line 259
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconMode:I

    #@3d
    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@40
    move-result v0

    #@41
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconMode(I)V

    #@44
    .line 260
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconContentDescription:I

    #@46
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_55

    #@4c
    .line 261
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconContentDescription:I

    #@4e
    .line 262
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@51
    move-result-object v0

    #@52
    .line 261
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    #@55
    .line 264
    :cond_55
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconCheckable:I

    #@57
    const/4 v1, 0x1

    #@58
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@5b
    move-result v0

    #@5c
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconCheckable(Z)V

    #@5f
    goto :goto_a2

    #@60
    .line 265
    :cond_60
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    #@62
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@65
    move-result v0

    #@66
    if-eqz v0, :cond_a2

    #@68
    .line 267
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTint:I

    #@6a
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@6d
    move-result v0

    #@6e
    if-eqz v0, :cond_7c

    #@70
    .line 270
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@73
    move-result-object v0

    #@74
    sget v4, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTint:I

    #@76
    .line 269
    invoke-static {v0, p1, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    #@79
    move-result-object v0

    #@7a
    iput-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    #@7c
    .line 272
    :cond_7c
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    #@7e
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@81
    move-result v0

    #@82
    if-eqz v0, :cond_90

    #@84
    .line 273
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleTintMode:I

    #@86
    .line 275
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@89
    move-result v0

    #@8a
    .line 274
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@8d
    move-result-object v0

    #@8e
    iput-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@90
    .line 277
    :cond_90
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleEnabled:I

    #@92
    .line 278
    invoke-virtual {p1, v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@95
    move-result v0

    #@96
    .line 279
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconMode(I)V

    #@99
    .line 280
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_passwordToggleContentDescription:I

    #@9b
    .line 281
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@9e
    move-result-object v0

    #@9f
    .line 280
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    #@a2
    .line 283
    :cond_a2
    :goto_a2
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconMinSize:I

    #@a4
    .line 286
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getResources()Landroid/content/res/Resources;

    #@a7
    move-result-object v1

    #@a8
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_min_touch_target_size:I

    #@aa
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@ad
    move-result v1

    #@ae
    .line 284
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@b1
    move-result v0

    #@b2
    .line 283
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconMinSize(I)V

    #@b5
    .line 287
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconScaleType:I

    #@b7
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@ba
    move-result v0

    #@bb
    if-eqz v0, :cond_ca

    #@bd
    .line 288
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_endIconScaleType:I

    #@bf
    .line 289
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@c2
    move-result p1

    #@c3
    invoke-static {p1}, Lcom/google/android/material/textfield/IconHelper;->convertScaleType(I)Landroid/widget/ImageView$ScaleType;

    #@c6
    move-result-object p1

    #@c7
    .line 288
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@ca
    :cond_ca
    return-void
.end method

.method private initErrorIconView(Landroidx/appcompat/widget/TintTypedArray;)V
    .registers 4

    #@0
    .line 219
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconTint:I

    #@2
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_14

    #@8
    .line 222
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@b
    move-result-object v0

    #@c
    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconTint:I

    #@e
    .line 221
    invoke-static {v0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintList:Landroid/content/res/ColorStateList;

    #@14
    .line 224
    :cond_14
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconTintMode:I

    #@16
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_2a

    #@1c
    .line 225
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconTintMode:I

    #@1e
    const/4 v1, -0x1

    #@1f
    .line 227
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@22
    move-result v0

    #@23
    const/4 v1, 0x0

    #@24
    .line 226
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2a
    .line 229
    :cond_2a
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconDrawable:I

    #@2c
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3b

    #@32
    .line 230
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_errorIconDrawable:I

    #@34
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@37
    move-result-object p1

    #@38
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3b
    .line 232
    :cond_3b
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@3d
    .line 233
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getResources()Landroid/content/res/Resources;

    #@40
    move-result-object v0

    #@41
    sget v1, Lcom/google/android/material/R$string;->error_icon_content_description:I

    #@43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@46
    move-result-object v0

    #@47
    .line 232
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@4a
    .line 234
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@4c
    const/4 v0, 0x2

    #@4d
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@50
    .line 236
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@52
    const/4 v0, 0x0

    #@53
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setClickable(Z)V

    #@56
    .line 237
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@58
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    #@5b
    .line 238
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@5d
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setFocusable(Z)V

    #@60
    return-void
.end method

.method private initSuffixTextView(Landroidx/appcompat/widget/TintTypedArray;)V
    .registers 6

    #@0
    .line 295
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroid/widget/TextView;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@7
    .line 296
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroid/widget/TextView;

    #@9
    sget v1, Lcom/google/android/material/R$id;->textinput_suffix_text:I

    #@b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    #@e
    .line 297
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroid/widget/TextView;

    #@10
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    #@12
    const/4 v2, -0x2

    #@13
    const/high16 v3, 0x42a00000    # 80.0f

    #@15
    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@1b
    .line 302
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroid/widget/TextView;

    #@1d
    const/4 v1, 0x1

    #@1e
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    #@21
    .line 305
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixTextAppearance:I

    #@23
    const/4 v1, 0x0

    #@24
    .line 306
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@27
    move-result v0

    #@28
    .line 305
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->setSuffixTextAppearance(I)V

    #@2b
    .line 307
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixTextColor:I

    #@2d
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_3c

    #@33
    .line 308
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixTextColor:I

    #@35
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->setSuffixTextColor(Landroid/content/res/ColorStateList;)V

    #@3c
    .line 310
    :cond_3c
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_suffixText:I

    #@3e
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@41
    move-result-object p1

    #@42
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setSuffixText(Ljava/lang/CharSequence;)V

    #@45
    return-void
.end method

.method private removeTouchExplorationStateChangeListenerIfNeeded()V
    .registers 3

    #@0
    .line 435
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@6
    if-eqz v1, :cond_b

    #@8
    .line 436
    invoke-static {v1, v0}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z

    #@b
    :cond_b
    return-void
.end method

.method private setOnFocusChangeListenersIfNeeded(Lcom/google/android/material/textfield/EndIconDelegate;)V
    .registers 4

    #@0
    .line 463
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 466
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndIconDelegate;->getOnEditTextFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_14

    #@b
    .line 467
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;

    #@d
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndIconDelegate;->getOnEditTextFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@14
    .line 469
    :cond_14
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndIconDelegate;->getOnIconViewFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_23

    #@1a
    .line 470
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@1c
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndIconDelegate;->getOnIconViewFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@23
    :cond_23
    return-void
.end method

.method private setUpDelegate(Lcom/google/android/material/textfield/EndIconDelegate;)V
    .registers 2

    #@0
    .line 413
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndIconDelegate;->setUp()V

    #@3
    .line 415
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndIconDelegate;->getTouchExplorationStateChangeListener()Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    #@6
    move-result-object p1

    #@7
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    #@9
    .line 416
    invoke-direct {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->addTouchExplorationStateChangeListenerIfNeeded()V

    #@c
    return-void
.end method

.method private tearDownDelegate(Lcom/google/android/material/textfield/EndIconDelegate;)V
    .registers 3

    #@0
    .line 420
    invoke-direct {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->removeTouchExplorationStateChangeListenerIfNeeded()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 421
    iput-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;

    #@6
    .line 422
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndIconDelegate;->tearDown()V

    #@9
    return-void
.end method

.method private tintEndIconOnError(Z)V
    .registers 5

    #@0
    if-eqz p1, :cond_23

    #@2
    .line 786
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object p1

    #@6
    if-eqz p1, :cond_23

    #@8
    .line 789
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDrawable()Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object p1

    #@c
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object p1

    #@10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object p1

    #@14
    .line 790
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@16
    .line 791
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getErrorCurrentTextColors()I

    #@19
    move-result v0

    #@1a
    .line 790
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    #@1d
    .line 792
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@1f
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@22
    goto :goto_2e

    #@23
    .line 794
    :cond_23
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@25
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@27
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    #@29
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2b
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    #@2e
    :goto_2e
    return-void
.end method

.method private updateEndLayoutVisibility()V
    .registers 5

    #@0
    .line 770
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconFrame:Landroid/widget/FrameLayout;

    #@2
    .line 771
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@4
    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    #@7
    move-result v1

    #@8
    const/16 v2, 0x8

    #@a
    const/4 v3, 0x0

    #@b
    if-nez v1, :cond_15

    #@d
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isErrorIconVisible()Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_15

    #@13
    move v1, v3

    #@14
    goto :goto_16

    #@15
    :cond_15
    move v1, v2

    #@16
    .line 770
    :goto_16
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@19
    .line 773
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixText:Ljava/lang/CharSequence;

    #@1b
    if-eqz v0, :cond_23

    #@1d
    iget-boolean v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->hintExpanded:Z

    #@1f
    if-nez v0, :cond_23

    #@21
    move v0, v3

    #@22
    goto :goto_24

    #@23
    :cond_23
    move v0, v2

    #@24
    .line 775
    :goto_24
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isEndIconVisible()Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_35

    #@2a
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isErrorIconVisible()Z

    #@2d
    move-result v1

    #@2e
    if-nez v1, :cond_35

    #@30
    if-nez v0, :cond_33

    #@32
    goto :goto_35

    #@33
    :cond_33
    move v0, v3

    #@34
    goto :goto_36

    #@35
    :cond_35
    :goto_35
    const/4 v0, 0x1

    #@36
    :goto_36
    if-eqz v0, :cond_39

    #@38
    move v2, v3

    #@39
    .line 776
    :cond_39
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/EndCompoundLayout;->setVisibility(I)V

    #@3c
    return-void
.end method

.method private updateErrorIconVisibility()V
    .registers 4

    #@0
    .line 757
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getErrorIconDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_19

    #@7
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@9
    .line 758
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_19

    #@f
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@11
    .line 759
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->shouldShowError()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_19

    #@17
    const/4 v0, 0x1

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move v0, v1

    #@1a
    .line 760
    :goto_1a
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@1c
    if-eqz v0, :cond_1f

    #@1e
    goto :goto_21

    #@1f
    :cond_1f
    const/16 v1, 0x8

    #@21
    :goto_21
    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    #@24
    .line 761
    invoke-direct {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateEndLayoutVisibility()V

    #@27
    .line 762
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateSuffixTextViewPadding()V

    #@2a
    .line 763
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->hasEndIcon()Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_35

    #@30
    .line 764
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@32
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateDummyDrawables()Z

    #@35
    :cond_35
    return-void
.end method

.method private updateSuffixTextVisibility()V
    .registers 4

    #@0
    .line 711
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    #@5
    move-result v0

    #@6
    .line 712
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixText:Ljava/lang/CharSequence;

    #@8
    const/4 v2, 0x0

    #@9
    if-eqz v1, :cond_11

    #@b
    iget-boolean v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->hintExpanded:Z

    #@d
    if-nez v1, :cond_11

    #@f
    move v1, v2

    #@10
    goto :goto_13

    #@11
    :cond_11
    const/16 v1, 0x8

    #@13
    :goto_13
    if-eq v0, v1, :cond_1f

    #@15
    .line 714
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    #@18
    move-result-object v0

    #@19
    if-nez v1, :cond_1c

    #@1b
    const/4 v2, 0x1

    #@1c
    :cond_1c
    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/EndIconDelegate;->onSuffixVisibilityChanged(Z)V

    #@1f
    .line 716
    :cond_1f
    invoke-direct {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateEndLayoutVisibility()V

    #@22
    .line 719
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroid/widget/TextView;

    #@24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@27
    .line 720
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@29
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateDummyDrawables()Z

    #@2c
    return-void
.end method


# virtual methods
.method addOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V
    .registers 3

    #@0
    .line 589
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconChangedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method checkEndIcon()V
    .registers 2

    #@0
    .line 512
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->performClick()Z

    #@5
    .line 514
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@7
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->jumpDrawablesToCurrentState()V

    #@a
    return-void
.end method

.method clearOnEndIconChangedListeners()V
    .registers 2

    #@0
    .line 597
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconChangedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    #@5
    return-void
.end method

.method getCurrentEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
    .registers 2

    #@0
    .line 742
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isErrorIconVisible()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 743
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@8
    return-object v0

    #@9
    .line 744
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->hasEndIcon()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_18

    #@f
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isEndIconVisible()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_18

    #@15
    .line 745
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@17
    return-object v0

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    return-object v0
.end method

.method getEndIconContentDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 546
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getContentDescription()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;
    .registers 3

    #@0
    .line 351
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconDelegates:Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;

    #@2
    iget v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

    #@4
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/EndCompoundLayout$EndIconDelegates;->get(I)Lcom/google/android/material/textfield/EndIconDelegate;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method getEndIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 531
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getEndIconMinSize()I
    .registers 2

    #@0
    .line 575
    iget v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMinSize:I

    #@2
    return v0
.end method

.method getEndIconMode()I
    .registers 2

    #@0
    .line 356
    iget v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

    #@2
    return v0
.end method

.method getEndIconScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    #@0
    .line 585
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconScaleType:Landroid/widget/ImageView$ScaleType;

    #@2
    return-object v0
.end method

.method getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;
    .registers 2

    #@0
    .line 347
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    return-object v0
.end method

.method getErrorIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 325
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getPasswordVisibilityToggleContentDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 657
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getContentDescription()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getPasswordVisibilityToggleDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 652
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getSuffixText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 616
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method getSuffixTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 629
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getSuffixTextView()Landroid/widget/TextView;
    .registers 2

    #@0
    .line 605
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method hasEndIcon()Z
    .registers 2

    #@0
    .line 601
    iget v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

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

.method isEndIconCheckable()Z
    .registers 2

    #@0
    .line 504
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isCheckable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isEndIconChecked()Z
    .registers 2

    #@0
    .line 508
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->hasEndIcon()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_10

    #@6
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method isEndIconVisible()Z
    .registers 2

    #@0
    .line 488
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconFrame:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_12

    #@8
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@a
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method

.method isErrorIconVisible()Z
    .registers 2

    #@0
    .line 752
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    return v0
.end method

.method isPasswordVisibilityToggleEnabled()Z
    .registers 3

    #@0
    .line 661
    iget v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_6

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v1, 0x0

    #@7
    :goto_7
    return v1
.end method

.method onHintStateChanged(Z)V
    .registers 2

    #@0
    .line 694
    iput-boolean p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->hintExpanded:Z

    #@2
    .line 695
    invoke-direct {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateSuffixTextVisibility()V

    #@5
    return-void
.end method

.method onTextInputBoxStateUpdated()V
    .registers 2

    #@0
    .line 699
    invoke-direct {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateErrorIconVisibility()V

    #@3
    .line 702
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->refreshErrorIconDrawableState()V

    #@6
    .line 703
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->refreshEndIconDrawableState()V

    #@9
    .line 705
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndIconDelegate;->shouldTintIconOnError()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1c

    #@13
    .line 706
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@15
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->shouldShowError()Z

    #@18
    move-result v0

    #@19
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->tintEndIconOnError(Z)V

    #@1c
    :cond_1c
    return-void
.end method

.method refreshEndIconDrawableState()V
    .registers 4

    #@0
    .line 496
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@2
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@4
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    #@6
    invoke-static {v0, v1, v2}, Lcom/google/android/material/textfield/IconHelper;->refreshIconDrawableState(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    #@9
    return-void
.end method

.method refreshErrorIconDrawableState()V
    .registers 4

    #@0
    .line 475
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@2
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@4
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintList:Landroid/content/res/ColorStateList;

    #@6
    invoke-static {v0, v1, v2}, Lcom/google/android/material/textfield/IconHelper;->refreshIconDrawableState(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    #@9
    return-void
.end method

.method refreshIconState(Z)V
    .registers 6

    #@0
    .line 392
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    #@3
    move-result-object v0

    #@4
    .line 393
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndIconDelegate;->isIconCheckable()Z

    #@7
    move-result v1

    #@8
    const/4 v2, 0x1

    #@9
    if-eqz v1, :cond_1f

    #@b
    .line 394
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@d
    invoke-virtual {v1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    #@10
    move-result v1

    #@11
    .line 395
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndIconDelegate;->isIconChecked()Z

    #@14
    move-result v3

    #@15
    if-eq v1, v3, :cond_1f

    #@17
    .line 396
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@19
    xor-int/2addr v1, v2

    #@1a
    invoke-virtual {v3, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    #@1d
    move v1, v2

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    const/4 v1, 0x0

    #@20
    .line 400
    :goto_20
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndIconDelegate;->isIconActivable()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_38

    #@26
    .line 401
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@28
    invoke-virtual {v3}, Lcom/google/android/material/internal/CheckableImageButton;->isActivated()Z

    #@2b
    move-result v3

    #@2c
    .line 402
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndIconDelegate;->isIconActivated()Z

    #@2f
    move-result v0

    #@30
    if-eq v3, v0, :cond_38

    #@32
    xor-int/lit8 v0, v3, 0x1

    #@34
    .line 403
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconActivated(Z)V

    #@37
    goto :goto_39

    #@38
    :cond_38
    move v2, v1

    #@39
    :goto_39
    if-nez p1, :cond_3d

    #@3b
    if-eqz v2, :cond_40

    #@3d
    .line 408
    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->refreshEndIconDrawableState()V

    #@40
    :cond_40
    return-void
.end method

.method removeOnEndIconChangedListener(Lcom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;)V
    .registers 3

    #@0
    .line 593
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconChangedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method setEndIconActivated(Z)V
    .registers 3

    #@0
    .line 492
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setActivated(Z)V

    #@5
    return-void
.end method

.method setEndIconCheckable(Z)V
    .registers 3

    #@0
    .line 500
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    #@5
    return-void
.end method

.method setEndIconContentDescription(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 535
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    #@f
    return-void
.end method

.method setEndIconContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 539
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconContentDescription()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p1, :cond_b

    #@6
    .line 540
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@b
    :cond_b
    return-void
.end method

.method setEndIconDrawable(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 518
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    return-void
.end method

.method setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    .line 522
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    if-eqz p1, :cond_15

    #@7
    .line 524
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@9
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@b
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    #@d
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@f
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    #@12
    .line 525
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->refreshEndIconDrawableState()V

    #@15
    :cond_15
    return-void
.end method

.method setEndIconMinSize(I)V
    .registers 3

    #@0
    if-ltz p1, :cond_13

    #@2
    .line 567
    iget v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMinSize:I

    #@4
    if-eq p1, v0, :cond_12

    #@6
    .line 568
    iput p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMinSize:I

    #@8
    .line 569
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@a
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/IconHelper;->setIconMinSize(Lcom/google/android/material/internal/CheckableImageButton;I)V

    #@d
    .line 570
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@f
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/IconHelper;->setIconMinSize(Lcom/google/android/material/internal/CheckableImageButton;I)V

    #@12
    :cond_12
    return-void

    #@13
    .line 565
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@15
    const-string v0, "endIconSize cannot be less than 0"

    #@17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw p1
.end method

.method setEndIconMode(I)V
    .registers 6

    #@0
    .line 360
    iget v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 363
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    #@8
    move-result-object v0

    #@9
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->tearDownDelegate(Lcom/google/android/material/textfield/EndIconDelegate;)V

    #@c
    .line 364
    iget v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

    #@e
    .line 365
    iput p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

    #@10
    .line 366
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->dispatchOnEndIconChanged(I)V

    #@13
    const/4 v0, 0x1

    #@14
    if-eqz p1, :cond_18

    #@16
    move v1, v0

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 v1, 0x0

    #@19
    .line 367
    :goto_19
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconVisible(Z)V

    #@1c
    .line 368
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    #@1f
    move-result-object v1

    #@20
    .line 369
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/EndCompoundLayout;->getIconResId(Lcom/google/android/material/textfield/EndIconDelegate;)I

    #@23
    move-result v2

    #@24
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconDrawable(I)V

    #@27
    .line 370
    invoke-virtual {v1}, Lcom/google/android/material/textfield/EndIconDelegate;->getIconContentDescriptionResId()I

    #@2a
    move-result v2

    #@2b
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconContentDescription(I)V

    #@2e
    .line 371
    invoke-virtual {v1}, Lcom/google/android/material/textfield/EndIconDelegate;->isIconCheckable()Z

    #@31
    move-result v2

    #@32
    invoke-virtual {p0, v2}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconCheckable(Z)V

    #@35
    .line 372
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@37
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    #@3a
    move-result v2

    #@3b
    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/EndIconDelegate;->isBoxBackgroundModeSupported(I)Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_64

    #@41
    .line 373
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setUpDelegate(Lcom/google/android/material/textfield/EndIconDelegate;)V

    #@44
    .line 381
    invoke-virtual {v1}, Lcom/google/android/material/textfield/EndIconDelegate;->getOnIconClickListener()Landroid/view/View$OnClickListener;

    #@47
    move-result-object p1

    #@48
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    #@4b
    .line 382
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;

    #@4d
    if-eqz p1, :cond_55

    #@4f
    .line 383
    invoke-virtual {v1, p1}, Lcom/google/android/material/textfield/EndIconDelegate;->onEditTextAttached(Landroid/widget/EditText;)V

    #@52
    .line 384
    invoke-direct {p0, v1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setOnFocusChangeListenersIfNeeded(Lcom/google/android/material/textfield/EndIconDelegate;)V

    #@55
    .line 386
    :cond_55
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@57
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@59
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    #@5b
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@5d
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    #@60
    .line 387
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->refreshIconState(Z)V

    #@63
    return-void

    #@64
    .line 375
    :cond_64
    new-instance v0, Ljava/lang/IllegalStateException;

    #@66
    new-instance v1, Ljava/lang/StringBuilder;

    #@68
    const-string v2, "The current box background mode "

    #@6a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6d
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@6f
    .line 377
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getBoxBackgroundMode()I

    #@72
    move-result v2

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    const-string v2, " is not supported by the end icon mode "

    #@79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object p1

    #@81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object p1

    #@85
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@88
    throw v0
.end method

.method setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    #@0
    .line 447
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    #@4
    invoke-static {v0, p1, v1}, Lcom/google/android/material/textfield/IconHelper;->setIconOnClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    #@7
    return-void
.end method

.method setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3

    #@0
    .line 452
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    #@2
    .line 453
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@4
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/IconHelper;->setIconOnLongClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    #@7
    return-void
.end method

.method setEndIconScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    #@0
    .line 579
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconScaleType:Landroid/widget/ImageView$ScaleType;

    #@2
    .line 580
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@4
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/IconHelper;->setIconScaleType(Lcom/google/android/material/internal/CheckableImageButton;Landroid/widget/ImageView$ScaleType;)V

    #@7
    .line 581
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@9
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/IconHelper;->setIconScaleType(Lcom/google/android/material/internal/CheckableImageButton;Landroid/widget/ImageView$ScaleType;)V

    #@c
    return-void
.end method

.method setEndIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 5

    #@0
    .line 550
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_f

    #@4
    .line 551
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    #@6
    .line 552
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@8
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@a
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    #@f
    :cond_f
    return-void
.end method

.method setEndIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 5

    #@0
    .line 557
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    if-eq v0, p1, :cond_f

    #@4
    .line 558
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@6
    .line 559
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@8
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@a
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    #@c
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    #@f
    :cond_f
    return-void
.end method

.method setEndIconVisible(Z)V
    .registers 3

    #@0
    .line 479
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isEndIconVisible()Z

    #@3
    move-result v0

    #@4
    if-eq v0, p1, :cond_1c

    #@6
    .line 480
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@8
    if-eqz p1, :cond_c

    #@a
    const/4 p1, 0x0

    #@b
    goto :goto_e

    #@c
    :cond_c
    const/16 p1, 0x8

    #@e
    :goto_e
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setVisibility(I)V

    #@11
    .line 481
    invoke-direct {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateEndLayoutVisibility()V

    #@14
    .line 482
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateSuffixTextViewPadding()V

    #@17
    .line 483
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@19
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->updateDummyDrawables()Z

    #@1c
    :cond_1c
    return-void
.end method

.method setErrorIconDrawable(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 314
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    .line 315
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->refreshErrorIconDrawableState()V

    #@12
    return-void
.end method

.method setErrorIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    .line 319
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 320
    invoke-direct {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateErrorIconVisibility()V

    #@8
    .line 321
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@a
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@c
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintList:Landroid/content/res/ColorStateList;

    #@e
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@10
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    #@13
    return-void
.end method

.method setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    #@0
    .line 343
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    #@4
    invoke-static {v0, p1, v1}, Lcom/google/android/material/textfield/IconHelper;->setIconOnClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    #@7
    return-void
.end method

.method setErrorIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3

    #@0
    .line 458
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    #@2
    .line 459
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@4
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/IconHelper;->setIconOnLongClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    #@7
    return-void
.end method

.method setErrorIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 5

    #@0
    .line 329
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintList:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_f

    #@4
    .line 330
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintList:Landroid/content/res/ColorStateList;

    #@6
    .line 331
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@8
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@a
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    #@f
    :cond_f
    return-void
.end method

.method setErrorIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 5

    #@0
    .line 336
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    if-eq v0, p1, :cond_f

    #@4
    .line 337
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@6
    .line 338
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@8
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@a
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->errorIconTintList:Landroid/content/res/ColorStateList;

    #@c
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    #@f
    :cond_f
    return-void
.end method

.method setPasswordVisibilityToggleContentDescription(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 643
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    .line 642
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V

    #@f
    return-void
.end method

.method setPasswordVisibilityToggleContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 647
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method setPasswordVisibilityToggleDrawable(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 634
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    .line 633
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    return-void
.end method

.method setPasswordVisibilityToggleDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 638
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    return-void
.end method

.method setPasswordVisibilityToggleEnabled(Z)V
    .registers 4

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 665
    iget v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

    #@4
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_b

    #@7
    .line 667
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconMode(I)V

    #@a
    goto :goto_11

    #@b
    :cond_b
    if-nez p1, :cond_11

    #@d
    const/4 p1, 0x0

    #@e
    .line 670
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconMode(I)V

    #@11
    :cond_11
    :goto_11
    return-void
.end method

.method setPasswordVisibilityToggleTintList(Landroid/content/res/ColorStateList;)V
    .registers 5

    #@0
    .line 675
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    #@2
    .line 676
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@4
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@6
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    #@b
    return-void
.end method

.method setPasswordVisibilityToggleTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 5

    #@0
    .line 680
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    .line 681
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@4
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@6
    iget-object v2, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconTintList:Landroid/content/res/ColorStateList;

    #@8
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    #@b
    return-void
.end method

.method setSuffixText(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 609
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    goto :goto_9

    #@8
    :cond_8
    move-object v0, p1

    #@9
    :goto_9
    iput-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixText:Ljava/lang/CharSequence;

    #@b
    .line 610
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroid/widget/TextView;

    #@d
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@10
    .line 611
    invoke-direct {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->updateSuffixTextVisibility()V

    #@13
    return-void
.end method

.method setSuffixTextAppearance(I)V
    .registers 3

    #@0
    .line 620
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroid/widget/TextView;

    #@2
    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@5
    return-void
.end method

.method setSuffixTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 624
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method togglePasswordVisibilityToggle(Z)V
    .registers 4

    #@0
    .line 685
    iget v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_11

    #@5
    .line 686
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@7
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->performClick()Z

    #@a
    if-eqz p1, :cond_11

    #@c
    .line 688
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@e
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->jumpDrawablesToCurrentState()V

    #@11
    :cond_11
    return-void
.end method

.method updateSuffixTextViewPadding()V
    .registers 6

    #@0
    .line 724
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@2
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 728
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isEndIconVisible()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1d

    #@d
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isErrorIconVisible()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_14

    #@13
    goto :goto_1d

    #@14
    .line 729
    :cond_14
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@16
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@18
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    #@1b
    move-result v0

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    #@1e
    .line 730
    :goto_1e
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->suffixTextView:Landroid/widget/TextView;

    #@20
    .line 732
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@23
    move-result-object v2

    #@24
    .line 733
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@27
    move-result-object v2

    #@28
    sget v3, Lcom/google/android/material/R$dimen;->material_input_text_to_prefix_suffix_padding:I

    #@2a
    .line 734
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2d
    move-result v2

    #@2e
    iget-object v3, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@30
    iget-object v3, v3, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@32
    .line 735
    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingTop()I

    #@35
    move-result v3

    #@36
    iget-object v4, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@38
    iget-object v4, v4, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@3a
    .line 737
    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    #@3d
    move-result v4

    #@3e
    .line 730
    invoke-static {v1, v2, v3, v0, v4}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    #@41
    return-void
.end method
