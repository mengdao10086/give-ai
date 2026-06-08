.class public Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;
.super Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.source "MaterialAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

.field private final popupElevation:F

.field private final simpleItemLayout:I

.field private simpleItemSelectedColor:I

.field private simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

.field private final tempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 84
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 89
    sget v0, Lcom/google/android/material/R$attr;->autoCompleteTextViewStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    .line 94
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@4
    move-result-object p1

    #@5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@8
    .line 77
    new-instance p1, Landroid/graphics/Rect;

    #@a
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@d
    iput-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->tempRect:Landroid/graphics/Rect;

    #@f
    .line 96
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getContext()Landroid/content/Context;

    #@12
    move-result-object p1

    #@13
    .line 98
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialAutoCompleteTextView:[I

    #@15
    sget v5, Lcom/google/android/material/R$style;->Widget_AppCompat_AutoCompleteTextView:I

    #@17
    new-array v6, v0, [I

    #@19
    move-object v1, p1

    #@1a
    move-object v2, p2

    #@1b
    move v4, p3

    #@1c
    .line 99
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@1f
    move-result-object p2

    #@20
    .line 108
    sget p3, Lcom/google/android/material/R$styleable;->MaterialAutoCompleteTextView_android_inputType:I

    #@22
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@25
    move-result p3

    #@26
    if-eqz p3, :cond_34

    #@28
    .line 109
    sget p3, Lcom/google/android/material/R$styleable;->MaterialAutoCompleteTextView_android_inputType:I

    #@2a
    .line 110
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2d
    move-result p3

    #@2e
    if-nez p3, :cond_34

    #@30
    const/4 p3, 0x0

    #@31
    .line 113
    invoke-virtual {p0, p3}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    #@34
    .line 117
    :cond_34
    sget p3, Lcom/google/android/material/R$styleable;->MaterialAutoCompleteTextView_simpleItemLayout:I

    #@36
    sget v1, Lcom/google/android/material/R$layout;->mtrl_auto_complete_simple_item:I

    #@38
    .line 118
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3b
    move-result p3

    #@3c
    iput p3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemLayout:I

    #@3e
    .line 121
    sget p3, Lcom/google/android/material/R$styleable;->MaterialAutoCompleteTextView_android_popupElevation:I

    #@40
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_exposed_dropdown_menu_popup_elevation:I

    #@42
    .line 122
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@45
    move-result p3

    #@46
    int-to-float p3, p3

    #@47
    iput p3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->popupElevation:F

    #@49
    .line 126
    sget p3, Lcom/google/android/material/R$styleable;->MaterialAutoCompleteTextView_simpleItemSelectedColor:I

    #@4b
    .line 127
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@4e
    move-result p3

    #@4f
    iput p3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    #@51
    .line 129
    sget p3, Lcom/google/android/material/R$styleable;->MaterialAutoCompleteTextView_simpleItemSelectedRippleColor:I

    #@53
    .line 130
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@56
    move-result-object p3

    #@57
    iput-object p3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

    #@59
    const-string p3, "accessibility"

    #@5b
    .line 136
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5e
    move-result-object p3

    #@5f
    check-cast p3, Landroid/view/accessibility/AccessibilityManager;

    #@61
    iput-object p3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@63
    .line 138
    new-instance p3, Landroidx/appcompat/widget/ListPopupWindow;

    #@65
    invoke-direct {p3, p1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    #@68
    iput-object p3, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    #@6a
    const/4 p1, 0x1

    #@6b
    .line 139
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    #@6e
    .line 140
    invoke-virtual {p3, p0}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    #@71
    const/4 p1, 0x2

    #@72
    .line 141
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setInputMethodMode(I)V

    #@75
    .line 142
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    #@78
    move-result-object p1

    #@79
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    #@7c
    .line 143
    new-instance p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;

    #@7e
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$1;-><init>(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)V

    #@81
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@84
    .line 167
    sget p1, Lcom/google/android/material/R$styleable;->MaterialAutoCompleteTextView_simpleItems:I

    #@86
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@89
    move-result p1

    #@8a
    if-eqz p1, :cond_95

    #@8c
    .line 168
    sget p1, Lcom/google/android/material/R$styleable;->MaterialAutoCompleteTextView_simpleItems:I

    #@8e
    .line 169
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@91
    move-result p1

    #@92
    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setSimpleItems(I)V

    #@95
    .line 172
    :cond_95
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@98
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroidx/appcompat/widget/ListPopupWindow;
    .registers 1

    #@0
    .line 71
    iget-object p0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->updateText(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)I
    .registers 1

    #@0
    .line 71
    iget p0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    #@2
    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;)Landroid/content/res/ColorStateList;
    .registers 1

    #@0
    .line 71
    iget-object p0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

    #@2
    return-object p0
.end method

.method private findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;
    .registers 3

    #@0
    .line 431
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    :goto_4
    if-eqz v0, :cond_12

    #@6
    .line 433
    instance-of v1, v0, Lcom/google/android/material/textfield/TextInputLayout;

    #@8
    if-eqz v1, :cond_d

    #@a
    .line 434
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    #@c
    return-object v0

    #@d
    .line 436
    :cond_d
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@10
    move-result-object v0

    #@11
    goto :goto_4

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    return-object v0
.end method

.method private isTouchExplorationEnabled()Z
    .registers 2

    #@0
    .line 204
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method private measureContentWidth()I
    .registers 13

    #@0
    .line 376
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    #@3
    move-result-object v0

    #@4
    .line 377
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    if-eqz v0, :cond_89

    #@b
    if-nez v1, :cond_f

    #@d
    goto/16 :goto_89

    #@f
    .line 386
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getMeasuredWidth()I

    #@12
    move-result v3

    #@13
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@16
    move-result v3

    #@17
    .line 388
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getMeasuredHeight()I

    #@1a
    move-result v4

    #@1b
    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1e
    move-result v4

    #@1f
    .line 391
    iget-object v5, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    #@21
    invoke-virtual {v5}, Landroidx/appcompat/widget/ListPopupWindow;->getSelectedItemPosition()I

    #@24
    move-result v5

    #@25
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v5

    #@29
    .line 392
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    #@2c
    move-result v6

    #@2d
    add-int/lit8 v5, v5, 0xf

    #@2f
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    #@32
    move-result v5

    #@33
    add-int/lit8 v6, v5, -0xf

    #@35
    .line 393
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    #@38
    move-result v6

    #@39
    const/4 v7, 0x0

    #@3a
    move v8, v6

    #@3b
    move-object v9, v7

    #@3c
    move v6, v2

    #@3d
    :goto_3d
    if-ge v8, v5, :cond_68

    #@3f
    .line 395
    invoke-interface {v0, v8}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    #@42
    move-result v10

    #@43
    if-eq v10, v2, :cond_47

    #@45
    move-object v9, v7

    #@46
    move v2, v10

    #@47
    .line 400
    :cond_47
    invoke-interface {v0, v8, v9, v1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    #@4a
    move-result-object v9

    #@4b
    .line 401
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4e
    move-result-object v10

    #@4f
    if-nez v10, :cond_5a

    #@51
    .line 402
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    #@53
    const/4 v11, -0x2

    #@54
    invoke-direct {v10, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@57
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@5a
    .line 406
    :cond_5a
    invoke-virtual {v9, v3, v4}, Landroid/view/View;->measure(II)V

    #@5d
    .line 407
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    #@60
    move-result v10

    #@61
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    #@64
    move-result v6

    #@65
    add-int/lit8 v8, v8, 0x1

    #@67
    goto :goto_3d

    #@68
    .line 410
    :cond_68
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    #@6a
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    #@6d
    move-result-object v0

    #@6e
    if-eqz v0, :cond_7f

    #@70
    .line 412
    iget-object v2, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->tempRect:Landroid/graphics/Rect;

    #@72
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@75
    .line 413
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->tempRect:Landroid/graphics/Rect;

    #@77
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@79
    iget-object v2, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->tempRect:Landroid/graphics/Rect;

    #@7b
    iget v2, v2, Landroid/graphics/Rect;->right:I

    #@7d
    add-int/2addr v0, v2

    #@7e
    add-int/2addr v6, v0

    #@7f
    .line 416
    :cond_7f
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEndIconView()Lcom/google/android/material/internal/CheckableImageButton;

    #@82
    move-result-object v0

    #@83
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->getMeasuredWidth()I

    #@86
    move-result v0

    #@87
    add-int/2addr v6, v0

    #@88
    return v6

    #@89
    :cond_89
    :goto_89
    return v2
.end method

.method private onInputTypeChanged()V
    .registers 2

    #@0
    .line 423
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 425
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBoxBackgroundIfNeeded()V

    #@9
    :cond_9
    return-void
.end method

.method private updateText(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .line 444
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x0

    #@5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setText(Ljava/lang/CharSequence;Z)V

    #@8
    return-void
.end method


# virtual methods
.method public dismissDropDown()V
    .registers 2

    #@0
    .line 186
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->isTouchExplorationEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    .line 187
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    #@8
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    #@b
    goto :goto_f

    #@c
    .line 189
    :cond_c
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->dismissDropDown()V

    #@f
    :goto_f
    return-void
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 352
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 353
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_11

    #@c
    .line 354
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 356
    :cond_11
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public getPopupElevation()F
    .registers 2

    #@0
    .line 322
    iget v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->popupElevation:F

    #@2
    return v0
.end method

.method public getSimpleItemSelectedColor()I
    .registers 2

    #@0
    .line 274
    iget v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    #@2
    return v0
.end method

.method public getSimpleItemSelectedRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 304
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 327
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onAttachedToWindow()V

    #@3
    .line 332
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->findTextInputLayoutAncestor()Lcom/google/android/material/textfield/TextInputLayout;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_20

    #@9
    .line 334
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_20

    #@f
    .line 335
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->getHint()Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_20

    #@15
    .line 336
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isMeizuDevice()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_20

    #@1b
    const-string v0, ""

    #@1d
    .line 337
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    #@20
    :cond_20
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    .line 343
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onDetachedFromWindow()V

    #@3
    .line 344
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    #@5
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    #@8
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    #@0
    .line 361
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onMeasure(II)V

    #@3
    .line 365
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@6
    move-result p2

    #@7
    const/high16 v0, -0x80000000

    #@9
    if-ne p2, v0, :cond_26

    #@b
    .line 366
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getMeasuredWidth()I

    #@e
    move-result p2

    #@f
    .line 369
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->measureContentWidth()I

    #@12
    move-result v0

    #@13
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    #@16
    move-result p2

    #@17
    .line 370
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@1a
    move-result p1

    #@1b
    .line 368
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    #@1e
    move-result p1

    #@1f
    .line 371
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getMeasuredHeight()I

    #@22
    move-result p2

    #@23
    .line 367
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setMeasuredDimension(II)V

    #@26
    :cond_26
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    #@0
    .line 195
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->isTouchExplorationEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    return-void

    #@7
    .line 200
    :cond_7
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->onWindowFocusChanged(Z)V

    #@a
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    #@0
    .line 209
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@3
    .line 210
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    #@5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    #@c
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 309
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3
    .line 310
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 311
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@a
    :cond_a
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 3

    #@0
    .line 221
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@3
    .line 222
    iget-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    #@5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@c
    return-void
.end method

.method public setRawInputType(I)V
    .registers 2

    #@0
    .line 215
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->setRawInputType(I)V

    #@3
    .line 216
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->onInputTypeChanged()V

    #@6
    return-void
.end method

.method public setSimpleItemSelectedColor(I)V
    .registers 2

    #@0
    .line 260
    iput p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedColor:I

    #@2
    .line 261
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    #@5
    move-result-object p1

    #@6
    instance-of p1, p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;

    #@8
    if-eqz p1, :cond_13

    #@a
    .line 262
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;

    #@10
    invoke-virtual {p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->updateSelectedItemColorStateList()V

    #@13
    :cond_13
    return-void
.end method

.method public setSimpleItemSelectedRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 289
    iput-object p1, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemSelectedRippleColor:Landroid/content/res/ColorStateList;

    #@2
    .line 290
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    #@5
    move-result-object p1

    #@6
    instance-of p1, p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;

    #@8
    if-eqz p1, :cond_13

    #@a
    .line 291
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    #@d
    move-result-object p1

    #@e
    check-cast p1, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;

    #@10
    invoke-virtual {p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;->updateSelectedItemColorStateList()V

    #@13
    :cond_13
    return-void
.end method

.method public setSimpleItems(I)V
    .registers 3

    #@0
    .line 234
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setSimpleItems([Ljava/lang/String;)V

    #@b
    return-void
.end method

.method public setSimpleItems([Ljava/lang/String;)V
    .registers 5

    #@0
    .line 246
    new-instance v0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;

    #@2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    iget v2, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->simpleItemLayout:I

    #@8
    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView$MaterialArrayAdapter;-><init>(Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;Landroid/content/Context;I[Ljava/lang/String;)V

    #@b
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@e
    return-void
.end method

.method public showDropDown()V
    .registers 2

    #@0
    .line 177
    invoke-direct {p0}, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->isTouchExplorationEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    .line 178
    iget-object v0, p0, Lcom/google/android/material/textfield/MaterialAutoCompleteTextView;->modalListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    #@8
    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    #@b
    goto :goto_f

    #@c
    .line 180
    :cond_c
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;->showDropDown()V

    #@f
    :goto_f
    return-void
.end method
