.class Lcom/google/android/material/textfield/StartCompoundLayout;
.super Landroid/widget/LinearLayout;
.source "StartCompoundLayout.java"


# instance fields
.field private hintExpanded:Z

.field private prefixText:Ljava/lang/CharSequence;

.field private final prefixTextView:Landroid/widget/TextView;

.field private startIconMinSize:I

.field private startIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private startIconScaleType:Landroid/widget/ImageView$ScaleType;

.field private startIconTintList:Landroid/content/res/ColorStateList;

.field private startIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final startIconView:Lcom/google/android/material/internal/CheckableImageButton;

.field private final textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/widget/TintTypedArray;)V
    .registers 7

    #@0
    .line 80
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@7
    .line 82
    iput-object p1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@9
    const/16 p1, 0x8

    #@b
    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setVisibility(I)V

    #@e
    const/4 p1, 0x0

    #@f
    .line 85
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setOrientation(I)V

    #@12
    .line 86
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@14
    const/4 v1, -0x1

    #@15
    const v2, 0x800003

    #@18
    const/4 v3, -0x2

    #@19
    invoke-direct {v0, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@1c
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@1f
    .line 92
    invoke-virtual {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getContext()Landroid/content/Context;

    #@22
    move-result-object v0

    #@23
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@26
    move-result-object v0

    #@27
    .line 93
    sget v1, Lcom/google/android/material/R$layout;->design_text_input_start_icon:I

    #@29
    .line 95
    invoke-virtual {v0, v1, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@2c
    move-result-object p1

    #@2d
    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    #@2f
    iput-object p1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@31
    .line 96
    invoke-static {p1}, Lcom/google/android/material/textfield/IconHelper;->setCompatRippleBackgroundIfNeeded(Lcom/google/android/material/internal/CheckableImageButton;)V

    #@34
    .line 98
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    #@36
    invoke-virtual {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getContext()Landroid/content/Context;

    #@39
    move-result-object v1

    #@3a
    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    #@3d
    iput-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@3f
    .line 100
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/StartCompoundLayout;->initStartIconView(Landroidx/appcompat/widget/TintTypedArray;)V

    #@42
    .line 101
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/StartCompoundLayout;->initPrefixTextView(Landroidx/appcompat/widget/TintTypedArray;)V

    #@45
    .line 103
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->addView(Landroid/view/View;)V

    #@48
    .line 104
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->addView(Landroid/view/View;)V

    #@4b
    return-void
.end method

.method private initPrefixTextView(Landroidx/appcompat/widget/TintTypedArray;)V
    .registers 5

    #@0
    .line 148
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@2
    const/16 v1, 0x8

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@7
    .line 150
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@9
    sget v1, Lcom/google/android/material/R$id;->textinput_prefix_text:I

    #@b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    #@e
    .line 151
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@10
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    #@12
    const/4 v2, -0x2

    #@13
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@19
    .line 153
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@1b
    const/4 v1, 0x1

    #@1c
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    #@1f
    .line 156
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixTextAppearance:I

    #@21
    const/4 v1, 0x0

    #@22
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@25
    move-result v0

    #@26
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->setPrefixTextAppearance(I)V

    #@29
    .line 157
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixTextColor:I

    #@2b
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_3a

    #@31
    .line 158
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixTextColor:I

    #@33
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->setPrefixTextColor(Landroid/content/res/ColorStateList;)V

    #@3a
    .line 160
    :cond_3a
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_prefixText:I

    #@3c
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@3f
    move-result-object p1

    #@40
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setPrefixText(Ljava/lang/CharSequence;)V

    #@43
    return-void
.end method

.method private initStartIconView(Landroidx/appcompat/widget/TintTypedArray;)V
    .registers 6

    #@0
    .line 109
    invoke-virtual {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_16

    #@a
    .line 110
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@c
    .line 111
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    #@12
    const/4 v1, 0x0

    #@13
    .line 112
    invoke-static {v0, v1}, Landroidx/core/view/MarginLayoutParamsCompat;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    .line 114
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    #@1a
    .line 115
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@1d
    .line 117
    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTint:I

    #@1f
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_31

    #@25
    .line 120
    invoke-virtual {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getContext()Landroid/content/Context;

    #@28
    move-result-object v1

    #@29
    sget v2, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTint:I

    #@2b
    .line 119
    invoke-static {v1, p1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconTintList:Landroid/content/res/ColorStateList;

    #@31
    .line 123
    :cond_31
    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTintMode:I

    #@33
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@36
    move-result v1

    #@37
    const/4 v2, -0x1

    #@38
    if-eqz v1, :cond_46

    #@3a
    .line 124
    sget v1, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconTintMode:I

    #@3c
    .line 126
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@3f
    move-result v1

    #@40
    .line 125
    invoke-static {v1, v0}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@43
    move-result-object v0

    #@44
    iput-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@46
    .line 129
    :cond_46
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconDrawable:I

    #@48
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_72

    #@4e
    .line 130
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconDrawable:I

    #@50
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V

    #@57
    .line 131
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconContentDescription:I

    #@59
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@5c
    move-result v0

    #@5d
    if-eqz v0, :cond_68

    #@5f
    .line 132
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconContentDescription:I

    #@61
    .line 133
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@64
    move-result-object v0

    #@65
    .line 132
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    #@68
    .line 135
    :cond_68
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconCheckable:I

    #@6a
    const/4 v1, 0x1

    #@6b
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@6e
    move-result v0

    #@6f
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconCheckable(Z)V

    #@72
    .line 137
    :cond_72
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconMinSize:I

    #@74
    .line 140
    invoke-virtual {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getResources()Landroid/content/res/Resources;

    #@77
    move-result-object v1

    #@78
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_min_touch_target_size:I

    #@7a
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@7d
    move-result v1

    #@7e
    .line 138
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    #@81
    move-result v0

    #@82
    .line 137
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconMinSize(I)V

    #@85
    .line 141
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconScaleType:I

    #@87
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@8a
    move-result v0

    #@8b
    if-eqz v0, :cond_9a

    #@8d
    .line 142
    sget v0, Lcom/google/android/material/R$styleable;->TextInputLayout_startIconScaleType:I

    #@8f
    .line 143
    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@92
    move-result p1

    #@93
    invoke-static {p1}, Lcom/google/android/material/textfield/IconHelper;->convertScaleType(I)Landroid/widget/ImageView$ScaleType;

    #@96
    move-result-object p1

    #@97
    .line 142
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@9a
    :cond_9a
    return-void
.end method

.method private updateVisibility()V
    .registers 5

    #@0
    .line 338
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixText:Ljava/lang/CharSequence;

    #@2
    const/16 v1, 0x8

    #@4
    const/4 v2, 0x0

    #@5
    if-eqz v0, :cond_d

    #@7
    iget-boolean v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->hintExpanded:Z

    #@9
    if-nez v0, :cond_d

    #@b
    move v0, v2

    #@c
    goto :goto_e

    #@d
    :cond_d
    move v0, v1

    #@e
    .line 339
    :goto_e
    iget-object v3, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@10
    .line 340
    invoke-virtual {v3}, Lcom/google/android/material/internal/CheckableImageButton;->getVisibility()I

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1b

    #@16
    if-nez v0, :cond_19

    #@18
    goto :goto_1b

    #@19
    :cond_19
    move v3, v2

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    :goto_1b
    const/4 v3, 0x1

    #@1c
    :goto_1c
    if-eqz v3, :cond_1f

    #@1e
    move v1, v2

    #@1f
    .line 341
    :cond_1f
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setVisibility(I)V

    #@22
    .line 344
    iget-object v1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@24
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    #@27
    .line 345
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@29
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateDummyDrawables()Z

    #@2c
    return-void
.end method


# virtual methods
.method getPrefixText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 188
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method getPrefixTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 197
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getPrefixTextView()Landroid/widget/TextView;
    .registers 2

    #@0
    .line 171
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method getStartIconContentDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 265
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getContentDescription()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getStartIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 220
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method getStartIconMinSize()I
    .registers 2

    #@0
    .line 293
    iget v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconMinSize:I

    #@2
    return v0
.end method

.method getStartIconScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    #@0
    .line 303
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconScaleType:Landroid/widget/ImageView$ScaleType;

    #@2
    return-object v0
.end method

.method isStartIconCheckable()Z
    .registers 2

    #@0
    .line 254
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isCheckable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isStartIconVisible()Z
    .registers 2

    #@0
    .line 242
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

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

.method onHintStateChanged(Z)V
    .registers 2

    #@0
    .line 332
    iput-boolean p1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->hintExpanded:Z

    #@2
    .line 333
    invoke-direct {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->updateVisibility()V

    #@5
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    #@0
    .line 165
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@3
    .line 166
    invoke-virtual {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->updatePrefixTextViewPadding()V

    #@6
    return-void
.end method

.method refreshStartIconDrawableState()V
    .registers 4

    #@0
    .line 246
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@2
    iget-object v1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@4
    iget-object v2, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconTintList:Landroid/content/res/ColorStateList;

    #@6
    invoke-static {v0, v1, v2}, Lcom/google/android/material/textfield/IconHelper;->refreshIconDrawableState(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V

    #@9
    return-void
.end method

.method setPrefixText(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 175
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
    iput-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixText:Ljava/lang/CharSequence;

    #@b
    .line 176
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@d
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@10
    .line 177
    invoke-direct {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->updateVisibility()V

    #@13
    return-void
.end method

.method setPrefixTextAppearance(I)V
    .registers 3

    #@0
    .line 201
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@2
    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@5
    return-void
.end method

.method setPrefixTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 192
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@5
    return-void
.end method

.method setStartIconCheckable(Z)V
    .registers 3

    #@0
    .line 250
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setCheckable(Z)V

    #@5
    return-void
.end method

.method setStartIconContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 258
    invoke-virtual {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getStartIconContentDescription()Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    if-eq v0, p1, :cond_b

    #@6
    .line 259
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@8
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    #@b
    :cond_b
    return-void
.end method

.method setStartIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    .line 205
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5
    if-eqz p1, :cond_1a

    #@7
    .line 207
    iget-object p1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@9
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@b
    iget-object v1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconTintList:Landroid/content/res/ColorStateList;

    #@d
    iget-object v2, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@f
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    #@12
    const/4 p1, 0x1

    #@13
    .line 208
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconVisible(Z)V

    #@16
    .line 209
    invoke-virtual {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->refreshStartIconDrawableState()V

    #@19
    goto :goto_28

    #@1a
    :cond_1a
    const/4 p1, 0x0

    #@1b
    .line 211
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconVisible(Z)V

    #@1e
    const/4 p1, 0x0

    #@1f
    .line 212
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V

    #@22
    .line 213
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@25
    .line 214
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/StartCompoundLayout;->setStartIconContentDescription(Ljava/lang/CharSequence;)V

    #@28
    :goto_28
    return-void
.end method

.method setStartIconMinSize(I)V
    .registers 3

    #@0
    if-ltz p1, :cond_e

    #@2
    .line 286
    iget v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconMinSize:I

    #@4
    if-eq p1, v0, :cond_d

    #@6
    .line 287
    iput p1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconMinSize:I

    #@8
    .line 288
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@a
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/IconHelper;->setIconMinSize(Lcom/google/android/material/internal/CheckableImageButton;I)V

    #@d
    :cond_d
    return-void

    #@e
    .line 284
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string v0, "startIconSize cannot be less than 0"

    #@12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw p1
.end method

.method setStartIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    #@0
    .line 224
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@2
    iget-object v1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    #@4
    invoke-static {v0, p1, v1}, Lcom/google/android/material/textfield/IconHelper;->setIconOnClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    #@7
    return-void
.end method

.method setStartIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3

    #@0
    .line 229
    iput-object p1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconOnLongClickListener:Landroid/view/View$OnLongClickListener;

    #@2
    .line 230
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@4
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/IconHelper;->setIconOnLongClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    #@7
    return-void
.end method

.method setStartIconScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    #@0
    .line 297
    iput-object p1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconScaleType:Landroid/widget/ImageView$ScaleType;

    #@2
    .line 298
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@4
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/IconHelper;->setIconScaleType(Lcom/google/android/material/internal/CheckableImageButton;Landroid/widget/ImageView$ScaleType;)V

    #@7
    return-void
.end method

.method setStartIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 5

    #@0
    .line 269
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconTintList:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_f

    #@4
    .line 270
    iput-object p1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconTintList:Landroid/content/res/ColorStateList;

    #@6
    .line 271
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@8
    iget-object v1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@a
    iget-object v2, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    #@f
    :cond_f
    return-void
.end method

.method setStartIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 5

    #@0
    .line 276
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    if-eq v0, p1, :cond_f

    #@4
    .line 277
    iput-object p1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@6
    .line 278
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@8
    iget-object v1, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@a
    iget-object v2, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconTintList:Landroid/content/res/ColorStateList;

    #@c
    invoke-static {v0, v1, v2, p1}, Lcom/google/android/material/textfield/IconHelper;->applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    #@f
    :cond_f
    return-void
.end method

.method setStartIconVisible(Z)V
    .registers 3

    #@0
    .line 234
    invoke-virtual {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->isStartIconVisible()Z

    #@3
    move-result v0

    #@4
    if-eq v0, p1, :cond_17

    #@6
    .line 235
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

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
    .line 236
    invoke-virtual {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->updatePrefixTextViewPadding()V

    #@14
    .line 237
    invoke-direct {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->updateVisibility()V

    #@17
    :cond_17
    return-void
.end method

.method setupAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    #@0
    .line 307
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_13

    #@8
    .line 308
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@a
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLabelFor(Landroid/view/View;)V

    #@d
    .line 309
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@f
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalAfter(Landroid/view/View;)V

    #@12
    goto :goto_18

    #@13
    .line 311
    :cond_13
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->startIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@15
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalAfter(Landroid/view/View;)V

    #@18
    :goto_18
    return-void
.end method

.method updatePrefixTextViewPadding()V
    .registers 7

    #@0
    .line 316
    iget-object v0, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@2
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->editText:Landroid/widget/EditText;

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 320
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->isStartIconVisible()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_f

    #@d
    const/4 v1, 0x0

    #@e
    goto :goto_13

    #@f
    :cond_f
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    #@12
    move-result v1

    #@13
    .line 321
    :goto_13
    iget-object v2, p0, Lcom/google/android/material/textfield/StartCompoundLayout;->prefixTextView:Landroid/widget/TextView;

    #@15
    .line 324
    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    #@18
    move-result v3

    #@19
    .line 325
    invoke-virtual {p0}, Lcom/google/android/material/textfield/StartCompoundLayout;->getContext()Landroid/content/Context;

    #@1c
    move-result-object v4

    #@1d
    .line 326
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@20
    move-result-object v4

    #@21
    sget v5, Lcom/google/android/material/R$dimen;->material_input_text_to_prefix_suffix_padding:I

    #@23
    .line 327
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@26
    move-result v4

    #@27
    .line 328
    invoke-virtual {v0}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    #@2a
    move-result v0

    #@2b
    .line 321
    invoke-static {v2, v1, v3, v4, v0}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    #@2e
    return-void
.end method
