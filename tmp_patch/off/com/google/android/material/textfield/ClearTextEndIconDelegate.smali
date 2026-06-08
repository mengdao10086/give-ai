.class Lcom/google/android/material/textfield/ClearTextEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "ClearTextEndIconDelegate.java"


# static fields
.field private static final ANIMATION_SCALE_FROM_VALUE:F = 0.8f

.field private static final DEFAULT_ANIMATION_FADE_DURATION:I = 0x64

.field private static final DEFAULT_ANIMATION_SCALE_DURATION:I = 0x96


# instance fields
.field private final animationFadeDuration:I

.field private final animationFadeInterpolator:Landroid/animation/TimeInterpolator;

.field private final animationScaleDuration:I

.field private final animationScaleInterpolator:Landroid/animation/TimeInterpolator;

.field private editText:Landroid/widget/EditText;

.field private iconInAnim:Landroid/animation/AnimatorSet;

.field private iconOutAnim:Landroid/animation/ValueAnimator;

.field private final onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final onIconClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .registers 5

    #@0
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    #@3
    .line 49
    new-instance v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda3;

    #@5
    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    #@8
    iput-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onIconClickListener:Landroid/view/View$OnClickListener;

    #@a
    .line 60
    new-instance v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda4;

    #@c
    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    #@f
    iput-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    #@11
    .line 70
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@14
    move-result-object v0

    #@15
    sget v1, Lcom/google/android/material/R$attr;->motionDurationShort3:I

    #@17
    const/16 v2, 0x64

    #@19
    .line 69
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationFadeDuration:I

    #@1f
    .line 73
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@22
    move-result-object v0

    #@23
    sget v1, Lcom/google/android/material/R$attr;->motionDurationShort3:I

    #@25
    const/16 v2, 0x96

    #@27
    .line 72
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationScaleDuration:I

    #@2d
    .line 76
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@30
    move-result-object v0

    #@31
    sget v1, Lcom/google/android/material/R$attr;->motionEasingLinearInterpolator:I

    #@33
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@35
    .line 75
    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationFadeInterpolator:Landroid/animation/TimeInterpolator;

    #@3b
    .line 81
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->getContext()Landroid/content/Context;

    #@3e
    move-result-object p1

    #@3f
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    #@41
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@43
    .line 80
    invoke-static {p1, v0, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@46
    move-result-object p1

    #@47
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationScaleInterpolator:Landroid/animation/TimeInterpolator;

    #@49
    return-void
.end method

.method private animateIcon(Z)V
    .registers 4

    #@0
    .line 148
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->isEndIconVisible()Z

    #@5
    move-result v0

    #@6
    if-ne v0, p1, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    if-eqz p1, :cond_27

    #@d
    .line 149
    iget-object v1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    #@f
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_27

    #@15
    .line 150
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    #@17
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    #@1a
    .line 151
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    #@1c
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    #@1f
    if-eqz v0, :cond_3a

    #@21
    .line 153
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    #@23
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    #@26
    goto :goto_3a

    #@27
    :cond_27
    if-nez p1, :cond_3a

    #@29
    .line 156
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    #@2b
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    #@2e
    .line 157
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    #@30
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    #@33
    if-eqz v0, :cond_3a

    #@35
    .line 159
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    #@37
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    #@3a
    :cond_3a
    :goto_3a
    return-void
.end method

.method private varargs getAlphaAnimator([F)Landroid/animation/ValueAnimator;
    .registers 4

    #@0
    .line 187
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@3
    move-result-object p1

    #@4
    .line 188
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationFadeInterpolator:Landroid/animation/TimeInterpolator;

    #@6
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@9
    .line 189
    iget v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationFadeDuration:I

    #@b
    int-to-long v0, v0

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@f
    .line 190
    new-instance v0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;

    #@11
    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    #@14
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@17
    return-object p1
.end method

.method private getScaleAnimator()Landroid/animation/ValueAnimator;
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [F

    #@3
    .line 199
    fill-array-data v0, :array_1e

    #@6
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@9
    move-result-object v0

    #@a
    .line 200
    iget-object v1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationScaleInterpolator:Landroid/animation/TimeInterpolator;

    #@c
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@f
    .line 201
    iget v1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animationScaleDuration:I

    #@11
    int-to-long v1, v1

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@15
    .line 202
    new-instance v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;

    #@17
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    #@1a
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@1d
    return-object v0

    #@1e
    :array_1e
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initAnimators()V
    .registers 7

    #@0
    .line 165
    invoke-direct {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->getScaleAnimator()Landroid/animation/ValueAnimator;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x2

    #@5
    new-array v2, v1, [F

    #@7
    .line 166
    fill-array-data v2, :array_3e

    #@a
    invoke-direct {p0, v2}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->getAlphaAnimator([F)Landroid/animation/ValueAnimator;

    #@d
    move-result-object v2

    #@e
    .line 167
    new-instance v3, Landroid/animation/AnimatorSet;

    #@10
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    #@13
    iput-object v3, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    #@15
    new-array v4, v1, [Landroid/animation/Animator;

    #@17
    const/4 v5, 0x0

    #@18
    aput-object v0, v4, v5

    #@1a
    const/4 v0, 0x1

    #@1b
    aput-object v2, v4, v0

    #@1d
    .line 168
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    #@20
    .line 169
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconInAnim:Landroid/animation/AnimatorSet;

    #@22
    new-instance v2, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$1;

    #@24
    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$1;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    #@27
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@2a
    new-array v0, v1, [F

    #@2c
    .line 176
    fill-array-data v0, :array_46

    #@2f
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->getAlphaAnimator([F)Landroid/animation/ValueAnimator;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->iconOutAnim:Landroid/animation/ValueAnimator;

    #@35
    .line 177
    new-instance v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$2;

    #@37
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$2;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    #@3a
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@3d
    return-void

    #@3e
    :array_3e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    #@46
    :array_46
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private shouldBeVisible()Z
    .registers 2

    #@0
    .line 211
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    #@2
    if-eqz v0, :cond_20

    #@4
    .line 212
    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_12

    #@a
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@c
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->hasFocus()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_20

    #@12
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    #@14
    .line 213
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@17
    move-result-object v0

    #@18
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    #@1b
    move-result v0

    #@1c
    if-lez v0, :cond_20

    #@1e
    const/4 v0, 0x1

    #@1f
    goto :goto_21

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    :goto_21
    return v0
.end method


# virtual methods
.method afterEditTextChanged(Landroid/text/Editable;)V
    .registers 2

    #@0
    .line 131
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->getSuffixText()Ljava/lang/CharSequence;

    #@5
    move-result-object p1

    #@6
    if-eqz p1, :cond_9

    #@8
    return-void

    #@9
    .line 134
    :cond_9
    invoke-direct {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->shouldBeVisible()Z

    #@c
    move-result p1

    #@d
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    #@10
    return-void
.end method

.method getIconContentDescriptionResId()I
    .registers 2

    #@0
    .line 107
    sget v0, Lcom/google/android/material/R$string;->clear_text_end_icon_content_description:I

    #@2
    return v0
.end method

.method getIconDrawableResId()I
    .registers 2

    #@0
    .line 102
    sget v0, Lcom/google/android/material/R$drawable;->mtrl_ic_cancel:I

    #@2
    return v0
.end method

.method getOnEditTextFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .registers 2

    #@0
    .line 139
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    #@2
    return-object v0
.end method

.method getOnIconClickListener()Landroid/view/View$OnClickListener;
    .registers 2

    #@0
    .line 120
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onIconClickListener:Landroid/view/View$OnClickListener;

    #@2
    return-object v0
.end method

.method getOnIconViewFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .registers 2

    #@0
    .line 144
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->onFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    #@2
    return-object v0
.end method

.method synthetic lambda$getAlphaAnimator$3$com-google-android-material-textfield-ClearTextEndIconDelegate(Landroid/animation/ValueAnimator;)V
    .registers 3

    #@0
    .line 191
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Ljava/lang/Float;

    #@6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@9
    move-result p1

    #@a
    .line 192
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setAlpha(F)V

    #@f
    return-void
.end method

.method synthetic lambda$getScaleAnimator$4$com-google-android-material-textfield-ClearTextEndIconDelegate(Landroid/animation/ValueAnimator;)V
    .registers 3

    #@0
    .line 203
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Ljava/lang/Float;

    #@6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    #@9
    move-result p1

    #@a
    .line 204
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setScaleX(F)V

    #@f
    .line 205
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    #@11
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setScaleY(F)V

    #@14
    return-void
.end method

.method synthetic lambda$new$0$com-google-android-material-textfield-ClearTextEndIconDelegate(Landroid/view/View;)V
    .registers 2

    #@0
    .line 50
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    #@2
    if-nez p1, :cond_5

    #@4
    return-void

    #@5
    .line 53
    :cond_5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@8
    move-result-object p1

    #@9
    if-eqz p1, :cond_e

    #@b
    .line 55
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    #@e
    .line 57
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->refreshIconState()V

    #@11
    return-void
.end method

.method synthetic lambda$new$1$com-google-android-material-textfield-ClearTextEndIconDelegate(Landroid/view/View;Z)V
    .registers 3

    #@0
    .line 61
    invoke-direct {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->shouldBeVisible()Z

    #@3
    move-result p1

    #@4
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    #@7
    return-void
.end method

.method synthetic lambda$tearDown$2$com-google-android-material-textfield-ClearTextEndIconDelegate()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 96
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    #@4
    return-void
.end method

.method public onEditTextAttached(Landroid/widget/EditText;)V
    .registers 3

    #@0
    .line 125
    iput-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    #@2
    .line 126
    iget-object p1, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    #@4
    invoke-direct {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->shouldBeVisible()Z

    #@7
    move-result v0

    #@8
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    #@b
    return-void
.end method

.method onSuffixVisibilityChanged(Z)V
    .registers 3

    #@0
    .line 112
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getSuffixText()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_9

    #@8
    return-void

    #@9
    .line 115
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->animateIcon(Z)V

    #@c
    return-void
.end method

.method setUp()V
    .registers 1

    #@0
    .line 88
    invoke-direct {p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->initAnimators()V

    #@3
    return-void
.end method

.method tearDown()V
    .registers 3

    #@0
    .line 93
    iget-object v0, p0, Lcom/google/android/material/textfield/ClearTextEndIconDelegate;->editText:Landroid/widget/EditText;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 94
    new-instance v1, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;

    #@6
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/ClearTextEndIconDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/ClearTextEndIconDelegate;)V

    #@9
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    #@c
    :cond_c
    return-void
.end method
