.class final Lcom/google/android/material/textfield/IndicatorViewController;
.super Ljava/lang/Object;
.source "IndicatorViewController.java"


# static fields
.field private static final CAPTION_STATE_ERROR:I = 0x1

.field private static final CAPTION_STATE_HELPER_TEXT:I = 0x2

.field private static final CAPTION_STATE_NONE:I = 0x0

.field static final COUNTER_INDEX:I = 0x2

.field private static final DEFAULT_CAPTION_FADE_ANIMATION_DURATION:I = 0xa7

.field private static final DEFAULT_CAPTION_TRANSLATION_Y_ANIMATION_DURATION:I = 0xd9

.field static final ERROR_INDEX:I = 0x0

.field static final HELPER_INDEX:I = 0x1


# instance fields
.field private captionAnimator:Landroid/animation/Animator;

.field private captionArea:Landroid/widget/FrameLayout;

.field private captionDisplayed:I

.field private final captionFadeInAnimationDuration:I

.field private final captionFadeInAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private final captionFadeOutAnimationDuration:I

.field private final captionFadeOutAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private captionToShow:I

.field private final captionTranslationYAnimationDuration:I

.field private final captionTranslationYAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private final captionTranslationYPx:F

.field private final context:Landroid/content/Context;

.field private errorEnabled:Z

.field private errorText:Ljava/lang/CharSequence;

.field private errorTextAppearance:I

.field private errorView:Landroid/widget/TextView;

.field private errorViewAccessibilityLiveRegion:I

.field private errorViewContentDescription:Ljava/lang/CharSequence;

.field private errorViewTextColor:Landroid/content/res/ColorStateList;

.field private helperText:Ljava/lang/CharSequence;

.field private helperTextEnabled:Z

.field private helperTextTextAppearance:I

.field private helperTextView:Landroid/widget/TextView;

.field private helperTextViewTextColor:Landroid/content/res/ColorStateList;

.field private indicatorArea:Landroid/widget/LinearLayout;

.field private indicatorsAdded:I

.field private final textInputView:Lcom/google/android/material/textfield/TextInputLayout;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 4

    #@0
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 135
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    #@9
    .line 136
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@b
    .line 138
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object p1

    #@f
    sget v1, Lcom/google/android/material/R$dimen;->design_textinput_caption_translate_y:I

    #@11
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@14
    move-result p1

    #@15
    int-to-float p1, p1

    #@16
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYPx:F

    #@18
    .line 139
    sget p1, Lcom/google/android/material/R$attr;->motionDurationShort4:I

    #@1a
    const/16 v1, 0xd9

    #@1c
    .line 140
    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@1f
    move-result p1

    #@20
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYAnimationDuration:I

    #@22
    .line 142
    sget p1, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    #@24
    const/16 v1, 0xa7

    #@26
    .line 143
    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@29
    move-result p1

    #@2a
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeInAnimationDuration:I

    #@2c
    .line 145
    sget p1, Lcom/google/android/material/R$attr;->motionDurationShort4:I

    #@2e
    .line 146
    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    #@31
    move-result p1

    #@32
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationDuration:I

    #@34
    .line 148
    sget p1, Lcom/google/android/material/R$attr;->motionEasingEmphasizedDecelerateInterpolator:I

    #@36
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@38
    .line 149
    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@3b
    move-result-object p1

    #@3c
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYAnimationInterpolator:Landroid/animation/TimeInterpolator;

    #@3e
    .line 153
    sget p1, Lcom/google/android/material/R$attr;->motionEasingEmphasizedDecelerateInterpolator:I

    #@40
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@42
    .line 154
    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@45
    move-result-object p1

    #@46
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeInAnimationInterpolator:Landroid/animation/TimeInterpolator;

    #@48
    .line 158
    sget p1, Lcom/google/android/material/R$attr;->motionEasingLinearInterpolator:I

    #@4a
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@4c
    .line 159
    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@4f
    move-result-object p1

    #@50
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationInterpolator:Landroid/animation/TimeInterpolator;

    #@52
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/textfield/IndicatorViewController;I)I
    .registers 2

    #@0
    .line 67
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    #@2
    return p1
.end method

.method static synthetic access$102(Lcom/google/android/material/textfield/IndicatorViewController;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    #@0
    .line 67
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    #@2
    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/material/textfield/IndicatorViewController;)Landroid/widget/TextView;
    .registers 1

    #@0
    .line 67
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@2
    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/textfield/IndicatorViewController;)Lcom/google/android/material/textfield/TextInputLayout;
    .registers 1

    #@0
    .line 67
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@2
    return-object p0
.end method

.method private canAdjustIndicatorPadding()Z
    .registers 2

    #@0
    .line 426
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@6
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    #@9
    move-result-object v0

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

.method private createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    #@0
    if-eqz p3, :cond_3b

    #@2
    if-nez p2, :cond_5

    #@4
    goto :goto_3b

    #@5
    :cond_5
    const/4 p2, 0x0

    #@6
    const/4 v0, 0x1

    #@7
    if-eq p4, p6, :cond_e

    #@9
    if-ne p4, p5, :cond_c

    #@b
    goto :goto_e

    #@c
    :cond_c
    move v1, p2

    #@d
    goto :goto_f

    #@e
    :cond_e
    :goto_e
    move v1, v0

    #@f
    :goto_f
    if-eqz v1, :cond_3b

    #@11
    if-ne p6, p4, :cond_15

    #@13
    move v1, v0

    #@14
    goto :goto_16

    #@15
    :cond_15
    move v1, p2

    #@16
    .line 345
    :goto_16
    invoke-direct {p0, p3, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionOpacityAnimator(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;

    #@19
    move-result-object v1

    #@1a
    if-ne p4, p6, :cond_1f

    #@1c
    if-eqz p5, :cond_1f

    #@1e
    move p2, v0

    #@1f
    :cond_1f
    if-eqz p2, :cond_27

    #@21
    .line 349
    iget p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationDuration:I

    #@23
    int-to-long v2, p2

    #@24
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    #@27
    .line 351
    :cond_27
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    if-ne p6, p4, :cond_3b

    #@2c
    if-eqz p5, :cond_3b

    #@2e
    .line 353
    invoke-direct {p0, p3}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionTranslationYAnimator(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;

    #@31
    move-result-object p2

    #@32
    .line 354
    iget p3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationDuration:I

    #@34
    int-to-long p3, p3

    #@35
    invoke-virtual {p2, p3, p4}, Landroid/animation/Animator;->setStartDelay(J)V

    #@38
    .line 355
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    :cond_3b
    :goto_3b
    return-void
.end method

.method private createCaptionOpacityAnimator(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    .registers 7

    #@0
    if-eqz p2, :cond_5

    #@2
    const/high16 v0, 0x3f800000    # 1.0f

    #@4
    goto :goto_6

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    .line 362
    :goto_6
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    #@8
    const/4 v2, 0x1

    #@9
    new-array v2, v2, [F

    #@b
    const/4 v3, 0x0

    #@c
    aput v0, v2, v3

    #@e
    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@11
    move-result-object p1

    #@12
    if-eqz p2, :cond_17

    #@14
    .line 363
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeInAnimationDuration:I

    #@16
    goto :goto_19

    #@17
    .line 364
    :cond_17
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationDuration:I

    #@19
    :goto_19
    int-to-long v0, v0

    #@1a
    .line 363
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@1d
    if-eqz p2, :cond_22

    #@1f
    .line 365
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeInAnimationInterpolator:Landroid/animation/TimeInterpolator;

    #@21
    goto :goto_24

    #@22
    .line 366
    :cond_22
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationInterpolator:Landroid/animation/TimeInterpolator;

    #@24
    .line 365
    :goto_24
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@27
    return-object p1
.end method

.method private createCaptionTranslationYAnimator(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    .registers 6

    #@0
    .line 371
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [F

    #@5
    iget v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYPx:F

    #@7
    neg-float v2, v2

    #@8
    const/4 v3, 0x0

    #@9
    aput v2, v1, v3

    #@b
    const/4 v2, 0x1

    #@c
    const/4 v3, 0x0

    #@d
    aput v3, v1, v2

    #@f
    .line 372
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    #@12
    move-result-object p1

    #@13
    .line 373
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYAnimationDuration:I

    #@15
    int-to-long v0, v0

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    #@19
    .line 374
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYAnimationInterpolator:Landroid/animation/TimeInterpolator;

    #@1b
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@1e
    return-object p1
.end method

.method private getCaptionViewFromDisplayState(I)Landroid/widget/TextView;
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-eq p1, v0, :cond_b

    #@3
    const/4 v0, 0x2

    #@4
    if-eq p1, v0, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return-object p1

    #@8
    .line 394
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@a
    return-object p1

    #@b
    .line 392
    :cond_b
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@d
    return-object p1
.end method

.method private getIndicatorPadding(ZII)I
    .registers 4

    #@0
    if-eqz p1, :cond_c

    #@2
    .line 432
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    #@4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@b
    move-result p3

    #@c
    :cond_c
    return p3
.end method

.method private isCaptionStateError(I)Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_10

    #@3
    .line 588
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@5
    if-eqz p1, :cond_10

    #@7
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    #@9
    .line 590
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c
    move-result p1

    #@d
    if-nez p1, :cond_10

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method private isCaptionStateHelperText(I)Z
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    if-ne p1, v0, :cond_11

    #@3
    .line 602
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@5
    if-eqz p1, :cond_11

    #@7
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    #@9
    .line 604
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c
    move-result p1

    #@d
    if-nez p1, :cond_11

    #@f
    const/4 p1, 0x1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    :goto_12
    return p1
.end method

.method private setCaptionViewVisibilities(II)V
    .registers 5

    #@0
    if-ne p1, p2, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    if-eqz p2, :cond_14

    #@5
    .line 311
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_14

    #@b
    const/4 v1, 0x0

    #@c
    .line 313
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@f
    const/high16 v1, 0x3f800000    # 1.0f

    #@11
    .line 314
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    #@14
    :cond_14
    if-eqz p1, :cond_27

    #@16
    .line 319
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    #@19
    move-result-object v0

    #@1a
    if-eqz v0, :cond_27

    #@1c
    const/4 v1, 0x4

    #@1d
    .line 321
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    #@20
    const/4 v1, 0x1

    #@21
    if-ne p1, v1, :cond_27

    #@23
    const/4 p1, 0x0

    #@24
    .line 324
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@27
    .line 328
    :cond_27
    iput p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    #@29
    return-void
.end method

.method private setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .registers 3

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 627
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@5
    :cond_5
    return-void
.end method

.method private setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V
    .registers 3

    #@0
    if-nez p2, :cond_7

    #@2
    const/16 p2, 0x8

    #@4
    .line 480
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@7
    :cond_7
    return-void
.end method

.method private shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .registers 5

    #@0
    .line 227
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_24

    #@8
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@a
    .line 228
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_24

    #@10
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    #@12
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    #@14
    if-ne v0, v1, :cond_22

    #@16
    if-eqz p1, :cond_22

    #@18
    .line 231
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@1b
    move-result-object p1

    #@1c
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@1f
    move-result p1

    #@20
    if-nez p1, :cond_24

    #@22
    :cond_22
    const/4 p1, 0x1

    #@23
    goto :goto_25

    #@24
    :cond_24
    const/4 p1, 0x0

    #@25
    :goto_25
    return p1
.end method

.method private updateCaptionViewsVisibility(IIZ)V
    .registers 17

    #@0
    move-object v7, p0

    #@1
    move v8, p2

    #@2
    move v9, p1

    #@3
    move/from16 v10, p3

    #@5
    if-ne v9, v8, :cond_8

    #@7
    return-void

    #@8
    :cond_8
    if-eqz v10, :cond_45

    #@a
    .line 244
    new-instance v11, Landroid/animation/AnimatorSet;

    #@c
    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    #@f
    .line 245
    iput-object v11, v7, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    #@11
    .line 246
    new-instance v12, Ljava/util/ArrayList;

    #@13
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    #@16
    .line 248
    iget-boolean v2, v7, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    #@18
    iget-object v3, v7, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@1a
    const/4 v4, 0x2

    #@1b
    move-object v0, p0

    #@1c
    move-object v1, v12

    #@1d
    move v5, p1

    #@1e
    move v6, p2

    #@1f
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V

    #@22
    .line 256
    iget-boolean v2, v7, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    #@24
    iget-object v3, v7, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@26
    const/4 v4, 0x1

    #@27
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V

    #@2a
    .line 264
    invoke-static {v11, v12}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    #@2d
    .line 265
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    #@30
    move-result-object v3

    #@31
    .line 266
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    #@34
    move-result-object v5

    #@35
    .line 268
    new-instance v6, Lcom/google/android/material/textfield/IndicatorViewController$1;

    #@37
    move-object v0, v6

    #@38
    move-object v1, p0

    #@39
    move v2, p2

    #@3a
    move v4, p1

    #@3b
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/IndicatorViewController$1;-><init>(Lcom/google/android/material/textfield/IndicatorViewController;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    #@3e
    invoke-virtual {v11, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@41
    .line 295
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    #@44
    goto :goto_48

    #@45
    .line 297
    :cond_45
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->setCaptionViewVisibilities(II)V

    #@48
    .line 299
    :goto_48
    iget-object v0, v7, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@4a
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    #@4d
    .line 300
    iget-object v0, v7, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@4f
    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    #@52
    .line 301
    iget-object v0, v7, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@54
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    #@57
    return-void
.end method


# virtual methods
.method addIndicator(Landroid/widget/TextView;I)V
    .registers 8

    #@0
    .line 437
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, -0x2

    #@4
    if-nez v0, :cond_40

    #@6
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    #@8
    if-nez v0, :cond_40

    #@a
    .line 438
    new-instance v0, Landroid/widget/LinearLayout;

    #@c
    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    #@e
    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@11
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    #@13
    .line 439
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@16
    .line 440
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@18
    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    #@1a
    const/4 v4, -0x1

    #@1b
    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;II)V

    #@1e
    .line 442
    new-instance v0, Landroid/widget/FrameLayout;

    #@20
    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    #@22
    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@25
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    #@27
    .line 443
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    #@29
    const/high16 v3, 0x3f800000    # 1.0f

    #@2b
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    #@2e
    .line 445
    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    #@30
    iget-object v4, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    #@32
    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@35
    .line 447
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@37
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    #@3a
    move-result-object v0

    #@3b
    if-eqz v0, :cond_40

    #@3d
    .line 448
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->adjustIndicatorPadding()V

    #@40
    .line 452
    :cond_40
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionView(I)Z

    #@43
    move-result p2

    #@44
    if-eqz p2, :cond_51

    #@46
    .line 453
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    #@48
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    #@4b
    .line 454
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    #@4d
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@50
    goto :goto_5b

    #@51
    .line 456
    :cond_51
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    #@53
    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@56
    .line 458
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    #@58
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@5b
    .line 460
    :goto_5b
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    #@5d
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@60
    .line 461
    iget p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    #@62
    add-int/lit8 p1, p1, 0x1

    #@64
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    #@66
    return-void
.end method

.method adjustIndicatorPadding()V
    .registers 8

    #@0
    .line 402
    invoke-direct {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->canAdjustIndicatorPadding()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_3e

    #@6
    .line 403
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    #@b
    move-result-object v0

    #@c
    .line 404
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    #@e
    invoke-static {v1}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    #@11
    move-result v1

    #@12
    .line 405
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    #@14
    sget v3, Lcom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_horizontal:I

    #@16
    .line 410
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    #@19
    move-result v4

    #@1a
    .line 407
    invoke-direct {p0, v1, v3, v4}, Lcom/google/android/material/textfield/IndicatorViewController;->getIndicatorPadding(ZII)I

    #@1d
    move-result v3

    #@1e
    sget v4, Lcom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_top:I

    #@20
    iget-object v5, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    #@22
    .line 415
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@25
    move-result-object v5

    #@26
    sget v6, Lcom/google/android/material/R$dimen;->material_helper_text_default_padding_top:I

    #@28
    .line 416
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2b
    move-result v5

    #@2c
    .line 411
    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/material/textfield/IndicatorViewController;->getIndicatorPadding(ZII)I

    #@2f
    move-result v4

    #@30
    sget v5, Lcom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_horizontal:I

    #@32
    .line 420
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    #@35
    move-result v0

    #@36
    .line 417
    invoke-direct {p0, v1, v5, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getIndicatorPadding(ZII)I

    #@39
    move-result v0

    #@3a
    const/4 v1, 0x0

    #@3b
    .line 405
    invoke-static {v2, v3, v4, v0, v1}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    #@3e
    :cond_3e
    return-void
.end method

.method cancelCaptionAnimator()V
    .registers 2

    #@0
    .line 379
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 380
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    #@7
    :cond_7
    return-void
.end method

.method errorIsDisplayed()Z
    .registers 2

    #@0
    .line 580
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateError(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method errorShouldBeShown()Z
    .registers 2

    #@0
    .line 584
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateError(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getErrorAccessibilityLiveRegion()I
    .registers 2

    #@0
    .line 675
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewAccessibilityLiveRegion:I

    #@2
    return v0
.end method

.method getErrorContentDescription()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 671
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewContentDescription:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method getErrorText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 609
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method getErrorViewCurrentTextColor()I
    .registers 2

    #@0
    .line 633
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, -0x1

    #@a
    :goto_a
    return v0
.end method

.method getErrorViewTextColors()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 638
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method getHelperText()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 613
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method getHelperTextView()Landroid/view/View;
    .registers 2

    #@0
    .line 576
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method getHelperTextViewColors()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 685
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    #@7
    move-result-object v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0
.end method

.method getHelperTextViewCurrentTextColor()I
    .registers 2

    #@0
    .line 680
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@2
    if-eqz v0, :cond_9

    #@4
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, -0x1

    #@a
    :goto_a
    return v0
.end method

.method helperTextIsDisplayed()Z
    .registers 2

    #@0
    .line 594
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateHelperText(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method helperTextShouldBeShown()Z
    .registers 2

    #@0
    .line 598
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateHelperText(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method hideError()V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 201
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    #@3
    .line 202
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    #@6
    .line 204
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    #@8
    const/4 v1, 0x1

    #@9
    if-ne v0, v1, :cond_1e

    #@b
    .line 206
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    #@d
    if-eqz v0, :cond_1b

    #@f
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    #@11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1b

    #@17
    const/4 v0, 0x2

    #@18
    .line 207
    iput v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    #@1a
    goto :goto_1e

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    .line 210
    iput v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    #@1e
    .line 213
    :cond_1e
    :goto_1e
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    #@20
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    #@22
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@24
    const-string v3, ""

    #@26
    .line 214
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    #@29
    move-result v2

    #@2a
    .line 213
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    #@2d
    return-void
.end method

.method hideHelperText()V
    .registers 5

    #@0
    .line 177
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    #@3
    .line 180
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    #@5
    const/4 v1, 0x2

    #@6
    if-ne v0, v1, :cond_b

    #@8
    const/4 v1, 0x0

    #@9
    .line 181
    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    #@b
    .line 183
    :cond_b
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    #@d
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@f
    const-string v3, ""

    #@11
    .line 184
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    #@14
    move-result v2

    #@15
    .line 183
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    #@18
    return-void
.end method

.method isCaptionView(I)Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-eqz p1, :cond_7

    #@3
    if-ne p1, v0, :cond_6

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :cond_7
    :goto_7
    return v0
.end method

.method isErrorEnabled()Z
    .registers 2

    #@0
    .line 519
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    #@2
    return v0
.end method

.method isHelperTextEnabled()Z
    .registers 2

    #@0
    .line 523
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    #@2
    return v0
.end method

.method removeIndicator(Landroid/widget/TextView;I)V
    .registers 4

    #@0
    .line 465
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 469
    :cond_5
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionView(I)Z

    #@8
    move-result p2

    #@9
    if-eqz p2, :cond_13

    #@b
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    #@d
    if-eqz p2, :cond_13

    #@f
    .line 470
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    #@12
    goto :goto_18

    #@13
    .line 472
    :cond_13
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    #@15
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    #@18
    .line 474
    :goto_18
    iget p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    #@1a
    add-int/lit8 p1, p1, -0x1

    #@1c
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    #@1e
    .line 475
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    #@20
    invoke-direct {p0, p2, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V

    #@23
    return-void
.end method

.method setErrorAccessibilityLiveRegion(I)V
    .registers 3

    #@0
    .line 663
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewAccessibilityLiveRegion:I

    #@2
    .line 664
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 665
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    #@9
    :cond_9
    return-void
.end method

.method setErrorContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    .line 656
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewContentDescription:Ljava/lang/CharSequence;

    #@2
    .line 657
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 658
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@9
    :cond_9
    return-void
.end method

.method setErrorEnabled(Z)V
    .registers 5

    #@0
    .line 486
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 491
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    #@8
    const/4 v0, 0x0

    #@9
    if-eqz p1, :cond_48

    #@b
    .line 494
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    #@d
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    #@f
    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    #@12
    iput-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@14
    .line 495
    sget v2, Lcom/google/android/material/R$id;->textinput_error:I

    #@16
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    #@19
    .line 497
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@1b
    const/4 v2, 0x5

    #@1c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    #@1f
    .line 499
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    #@21
    if-eqz v1, :cond_28

    #@23
    .line 500
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@25
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@28
    .line 502
    :cond_28
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorTextAppearance:I

    #@2a
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorTextAppearance(I)V

    #@2d
    .line 503
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewTextColor:Landroid/content/res/ColorStateList;

    #@2f
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorViewTextColor(Landroid/content/res/ColorStateList;)V

    #@32
    .line 504
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewContentDescription:Ljava/lang/CharSequence;

    #@34
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    #@37
    .line 505
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewAccessibilityLiveRegion:I

    #@39
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorAccessibilityLiveRegion(I)V

    #@3c
    .line 506
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@3e
    const/4 v2, 0x4

    #@3f
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    #@42
    .line 507
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@44
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    #@47
    goto :goto_5d

    #@48
    .line 509
    :cond_48
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->hideError()V

    #@4b
    .line 510
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@4d
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    #@50
    const/4 v0, 0x0

    #@51
    .line 511
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@53
    .line 512
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@55
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    #@58
    .line 513
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@5a
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    #@5d
    .line 515
    :goto_5d
    iput-boolean p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    #@5f
    return-void
.end method

.method setErrorTextAppearance(I)V
    .registers 4

    #@0
    .line 649
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorTextAppearance:I

    #@2
    .line 650
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_b

    #@6
    .line 651
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@8
    invoke-virtual {v1, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    #@b
    :cond_b
    return-void
.end method

.method setErrorViewTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 642
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewTextColor:Landroid/content/res/ColorStateList;

    #@2
    .line 643
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_b

    #@6
    if-eqz p1, :cond_b

    #@8
    .line 644
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@b
    :cond_b
    return-void
.end method

.method setHelperTextAppearance(I)V
    .registers 3

    #@0
    .line 696
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextTextAppearance:I

    #@2
    .line 697
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 698
    invoke-static {v0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    #@9
    :cond_9
    return-void
.end method

.method setHelperTextEnabled(Z)V
    .registers 5

    #@0
    .line 528
    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 533
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    #@8
    const/4 v0, 0x1

    #@9
    if-eqz p1, :cond_4d

    #@b
    .line 536
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    #@d
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    #@f
    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    #@12
    iput-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@14
    .line 537
    sget v2, Lcom/google/android/material/R$id;->textinput_helper_text:I

    #@16
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    #@19
    .line 539
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@1b
    const/4 v2, 0x5

    #@1c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    #@1f
    .line 541
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    #@21
    if-eqz v1, :cond_28

    #@23
    .line 542
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@25
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@28
    .line 544
    :cond_28
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@2a
    const/4 v2, 0x4

    #@2b
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    #@2e
    .line 545
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@30
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    #@33
    .line 547
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextTextAppearance:I

    #@35
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextAppearance(I)V

    #@38
    .line 548
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextViewTextColor:Landroid/content/res/ColorStateList;

    #@3a
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V

    #@3d
    .line 549
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@3f
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    #@42
    .line 551
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@44
    new-instance v1, Lcom/google/android/material/textfield/IndicatorViewController$2;

    #@46
    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/IndicatorViewController$2;-><init>(Lcom/google/android/material/textfield/IndicatorViewController;)V

    #@49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@4c
    goto :goto_62

    #@4d
    .line 565
    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->hideHelperText()V

    #@50
    .line 566
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@52
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    #@55
    const/4 v0, 0x0

    #@56
    .line 567
    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@58
    .line 568
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@5a
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    #@5d
    .line 569
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    #@5f
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    #@62
    .line 571
    :goto_62
    iput-boolean p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    #@64
    return-void
.end method

.method setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 689
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextViewTextColor:Landroid/content/res/ColorStateList;

    #@2
    .line 690
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@4
    if-eqz v0, :cond_b

    #@6
    if-eqz p1, :cond_b

    #@8
    .line 691
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@b
    :cond_b
    return-void
.end method

.method setTypefaces(Landroid/graphics/Typeface;)V
    .registers 3

    #@0
    .line 618
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    #@2
    if-eq p1, v0, :cond_10

    #@4
    .line 619
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    #@6
    .line 620
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@8
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    #@b
    .line 621
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@d
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    #@10
    :cond_10
    return-void
.end method

.method showError(Ljava/lang/CharSequence;)V
    .registers 5

    #@0
    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    #@3
    .line 189
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    #@5
    .line 190
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@a
    .line 193
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    #@c
    const/4 v1, 0x1

    #@d
    if-eq v0, v1, :cond_11

    #@f
    .line 194
    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    #@11
    .line 196
    :cond_11
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    #@13
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    #@15
    .line 197
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    #@18
    move-result p1

    #@19
    .line 196
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    #@1c
    return-void
.end method

.method showHelper(Ljava/lang/CharSequence;)V
    .registers 5

    #@0
    .line 164
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    #@3
    .line 165
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    #@5
    .line 166
    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@a
    .line 169
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    #@c
    const/4 v1, 0x2

    #@d
    if-eq v0, v1, :cond_11

    #@f
    .line 170
    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    #@11
    .line 172
    :cond_11
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    #@13
    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    #@15
    .line 173
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    #@18
    move-result p1

    #@19
    .line 172
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    #@1c
    return-void
.end method
