.class public Lcom/google/android/material/textfield/TextInputEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "TextInputEditText.java"


# instance fields
.field private final parentRect:Landroid/graphics/Rect;

.field private textInputLayoutFocusedRectEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 63
    sget v0, Lcom/google/android/material/R$attr;->editTextStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    .line 68
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@4
    move-result-object v1

    #@5
    invoke-direct {p0, v1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@8
    .line 55
    new-instance v1, Landroid/graphics/Rect;

    #@a
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@d
    iput-object v1, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    #@f
    .line 69
    sget-object v4, Lcom/google/android/material/R$styleable;->TextInputEditText:[I

    #@11
    sget v6, Lcom/google/android/material/R$style;->Widget_Design_TextInputEditText:I

    #@13
    new-array v7, v0, [I

    #@15
    move-object v2, p1

    #@16
    move-object v3, p2

    #@17
    move v5, p3

    #@18
    .line 70
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@1b
    move-result-object p1

    #@1c
    .line 77
    sget p2, Lcom/google/android/material/R$styleable;->TextInputEditText_textInputLayoutFocusedRectEnabled:I

    #@1e
    .line 78
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@21
    move-result p2

    #@22
    .line 77
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setTextInputLayoutFocusedRectEnabled(Z)V

    #@25
    .line 80
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@28
    return-void
.end method

.method private getAccessibilityNodeInfoText(Lcom/google/android/material/textfield/TextInputLayout;)Ljava/lang/String;
    .registers 6

    #@0
    .line 207
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    #@3
    move-result-object v0

    #@4
    .line 208
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    #@7
    move-result-object p1

    #@8
    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v1

    #@c
    xor-int/lit8 v1, v1, 0x1

    #@e
    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v2

    #@12
    xor-int/lit8 v2, v2, 0x1

    #@14
    const-string v3, ""

    #@16
    if-eqz v2, :cond_1d

    #@18
    .line 212
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1b
    move-result-object p1

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    move-object p1, v3

    #@1e
    :goto_1e
    if-eqz v1, :cond_47

    #@20
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2c
    move-result v1

    #@2d
    if-nez v1, :cond_3e

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    const-string v2, ", "

    #@33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object p1

    #@3a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    :cond_3e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object p1

    #@42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object p1

    #@46
    return-object p1

    #@47
    .line 216
    :cond_47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4a
    move-result v0

    #@4b
    if-nez v0, :cond_4e

    #@4d
    return-object p1

    #@4e
    :cond_4e
    return-object v3
.end method

.method private getHintFromLayout()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 137
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 138
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    return-object v0
.end method

.method private getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;
    .registers 3

    #@0
    .line 125
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    .line 126
    :goto_4
    instance-of v1, v0, Landroid/view/View;

    #@6
    if-eqz v1, :cond_14

    #@8
    .line 127
    instance-of v1, v0, Lcom/google/android/material/textfield/TextInputLayout;

    #@a
    if-eqz v1, :cond_f

    #@c
    .line 128
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    #@e
    return-object v0

    #@f
    .line 130
    :cond_f
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@12
    move-result-object v0

    #@13
    goto :goto_4

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    return-object v0
.end method

.method private shouldUseTextInputLayoutFocusedRect(Lcom/google/android/material/textfield/TextInputLayout;)Z
    .registers 2

    #@0
    if-eqz p1, :cond_8

    #@2
    .line 156
    iget-boolean p1, p0, Lcom/google/android/material/textfield/TextInputEditText;->textInputLayoutFocusedRectEnabled:Z

    #@4
    if-eqz p1, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    :goto_9
    return p1
.end method


# virtual methods
.method public getFocusedRect(Landroid/graphics/Rect;)V
    .registers 4

    #@0
    .line 161
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->getFocusedRect(Landroid/graphics/Rect;)V

    #@3
    .line 162
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    #@6
    move-result-object v0

    #@7
    .line 163
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputEditText;->shouldUseTextInputLayoutFocusedRect(Lcom/google/android/material/textfield/TextInputLayout;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1a

    #@d
    if-eqz p1, :cond_1a

    #@f
    .line 164
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    #@11
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->getFocusedRect(Landroid/graphics/Rect;)V

    #@14
    .line 165
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    #@16
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    #@18
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    #@1a
    :cond_1a
    return-void
.end method

.method public getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 5

    #@0
    .line 171
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    #@3
    move-result-object v0

    #@4
    .line 172
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputEditText;->shouldUseTextInputLayoutFocusedRect(Lcom/google/android/material/textfield/TextInputLayout;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_f

    #@a
    .line 173
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    #@d
    move-result p1

    #@e
    goto :goto_13

    #@f
    .line 174
    :cond_f
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    #@12
    move-result p1

    #@13
    :goto_13
    return p1
.end method

.method public getHint()Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 104
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 105
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_11

    #@c
    .line 106
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    .line 108
    :cond_11
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getHint()Ljava/lang/CharSequence;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public isTextInputLayoutFocusedRectEnabled()Z
    .registers 2

    #@0
    .line 152
    iget-boolean v0, p0, Lcom/google/android/material/textfield/TextInputEditText;->textInputLayoutFocusedRectEnabled:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 85
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onAttachedToWindow()V

    #@3
    .line 90
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_20

    #@9
    .line 92
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isProvidingHint()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_20

    #@f
    .line 93
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getHint()Ljava/lang/CharSequence;

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_20

    #@15
    .line 94
    invoke-static {}, Lcom/google/android/material/internal/ManufacturerUtils;->isMeizuDevice()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_20

    #@1b
    const-string v0, ""

    #@1d
    .line 95
    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setHint(Ljava/lang/CharSequence;)V

    #@20
    :cond_20
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    #@0
    .line 114
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_10

    #@6
    .line 115
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    #@8
    if-nez v1, :cond_10

    #@a
    .line 118
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getHintFromLayout()Ljava/lang/CharSequence;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    #@10
    :cond_10
    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    #@0
    .line 195
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 196
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    #@6
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .registers 7

    #@0
    .line 179
    invoke-direct {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getTextInputLayout()Lcom/google/android/material/textfield/TextInputLayout;

    #@3
    move-result-object v0

    #@4
    .line 180
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/TextInputEditText;->shouldUseTextInputLayoutFocusedRect(Lcom/google/android/material/textfield/TextInputLayout;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_2a

    #@a
    if-eqz p1, :cond_2a

    #@c
    .line 181
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHeight()I

    #@f
    move-result v0

    #@10
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputEditText;->getHeight()I

    #@13
    move-result v1

    #@14
    sub-int/2addr v0, v1

    #@15
    .line 182
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    #@17
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@19
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@1b
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@1d
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@1f
    add-int/2addr p1, v0

    #@20
    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    #@23
    .line 187
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputEditText;->parentRect:Landroid/graphics/Rect;

    #@25
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    #@28
    move-result p1

    #@29
    return p1

    #@2a
    .line 189
    :cond_2a
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    #@2d
    move-result p1

    #@2e
    return p1
.end method

.method public setTextInputLayoutFocusedRectEnabled(Z)V
    .registers 2

    #@0
    .line 145
    iput-boolean p1, p0, Lcom/google/android/material/textfield/TextInputEditText;->textInputLayoutFocusedRectEnabled:Z

    #@2
    return-void
.end method
