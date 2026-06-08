.class Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "PasswordToggleEndIconDelegate.java"


# instance fields
.field private editText:Landroid/widget/EditText;

.field private iconResId:I

.field private final onIconClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;I)V
    .registers 3

    #@0
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    #@3
    .line 32
    sget p1, Lcom/google/android/material/R$drawable;->design_password_eye:I

    #@5
    iput p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->iconResId:I

    #@7
    .line 37
    new-instance p1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$$ExternalSyntheticLambda0;

    #@9
    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    #@c
    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onIconClickListener:Landroid/view/View$OnClickListener;

    #@e
    if-eqz p2, :cond_12

    #@10
    .line 59
    iput p2, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->iconResId:I

    #@12
    :cond_12
    return-void
.end method

.method private hasPasswordTransformation()Z
    .registers 2

    #@0
    .line 119
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    #@2
    if-eqz v0, :cond_e

    #@4
    .line 120
    invoke-virtual {v0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    #@7
    move-result-object v0

    #@8
    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method private static isInputTypePassword(Landroid/widget/EditText;)Z
    .registers 3

    #@0
    if-eqz p0, :cond_24

    #@2
    .line 125
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    #@5
    move-result v0

    #@6
    const/16 v1, 0x10

    #@8
    if-eq v0, v1, :cond_22

    #@a
    .line 126
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    #@d
    move-result v0

    #@e
    const/16 v1, 0x80

    #@10
    if-eq v0, v1, :cond_22

    #@12
    .line 127
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    #@15
    move-result v0

    #@16
    const/16 v1, 0x90

    #@18
    if-eq v0, v1, :cond_22

    #@1a
    .line 128
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    #@1d
    move-result p0

    #@1e
    const/16 v0, 0xe0

    #@20
    if-ne p0, v0, :cond_24

    #@22
    :cond_22
    const/4 p0, 0x1

    #@23
    goto :goto_25

    #@24
    :cond_24
    const/4 p0, 0x0

    #@25
    :goto_25
    return p0
.end method


# virtual methods
.method beforeEditTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    #@0
    .line 115
    invoke-virtual {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->refreshIconState()V

    #@3
    return-void
.end method

.method getIconContentDescriptionResId()I
    .registers 2

    #@0
    .line 88
    sget v0, Lcom/google/android/material/R$string;->password_toggle_content_description:I

    #@2
    return v0
.end method

.method getIconDrawableResId()I
    .registers 2

    #@0
    .line 82
    iget v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->iconResId:I

    #@2
    return v0
.end method

.method getOnIconClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    #@0
    .line 104
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onIconClickListener:Landroid/view/View$OnClickListener;

    #@2
    return-object v0
.end method

.method isIconCheckable()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method isIconChecked()Z
    .registers 2

    #@0
    .line 99
    invoke-direct {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->hasPasswordTransformation()Z

    #@3
    move-result v0

    #@4
    xor-int/lit8 v0, v0, 0x1

    #@6
    return v0
.end method

.method synthetic lambda$new$0$com-google-android-material-textfield-PasswordToggleEndIconDelegate(Landroid/view/View;)V
    .registers 4

    #@0
    .line 38
    iget-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    #@2
    if-nez p1, :cond_5

    #@4
    return-void

    #@5
    .line 42
    :cond_5
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    #@8
    move-result p1

    #@9
    .line 43
    invoke-direct {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->hasPasswordTransformation()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_16

    #@f
    .line 44
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@15
    goto :goto_1f

    #@16
    .line 46
    :cond_16
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    #@18
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@1f
    :goto_1f
    if-ltz p1, :cond_26

    #@21
    .line 50
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    #@23
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    #@26
    .line 52
    :cond_26
    invoke-virtual {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->refreshIconState()V

    #@29
    return-void
.end method

.method onEditTextAttached(Landroid/widget/EditText;)V
    .registers 2

    #@0
    .line 109
    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    #@2
    .line 110
    invoke-virtual {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->refreshIconState()V

    #@5
    return-void
.end method

.method setUp()V
    .registers 3

    #@0
    .line 65
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    #@2
    invoke-static {v0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->isInputTypePassword(Landroid/widget/EditText;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_11

    #@8
    .line 67
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    #@a
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@11
    :cond_11
    return-void
.end method

.method tearDown()V
    .registers 3

    #@0
    .line 73
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 75
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    #@b
    :cond_b
    return-void
.end method
