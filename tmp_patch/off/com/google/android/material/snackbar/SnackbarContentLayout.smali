.class public Lcom/google/android/material/snackbar/SnackbarContentLayout;
.super Landroid/widget/LinearLayout;
.source "SnackbarContentLayout.java"

# interfaces
.implements Lcom/google/android/material/snackbar/ContentViewCallback;


# instance fields
.field private actionView:Landroid/widget/Button;

.field private final contentInterpolator:Landroid/animation/TimeInterpolator;

.field private maxInlineActionWidth:I

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 48
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 53
    sget p2, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    #@5
    sget-object v0, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@7
    .line 54
    invoke-static {p1, p2, v0}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    #@a
    move-result-object p1

    #@b
    iput-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->contentInterpolator:Landroid/animation/TimeInterpolator;

    #@d
    return-void
.end method

.method private static updateTopBottomPadding(Landroid/view/View;II)V
    .registers 5

    #@0
    .line 139
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isPaddingRelative(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 142
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    #@9
    move-result v0

    #@a
    .line 144
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    #@d
    move-result v1

    #@e
    .line 140
    invoke-static {p0, v0, p1, v1, p2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    #@11
    goto :goto_1d

    #@12
    .line 147
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    #@15
    move-result v0

    #@16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    #@1d
    :goto_1d
    return-void
.end method

.method private updateViewsWithinLayout(III)Z
    .registers 6

    #@0
    .line 125
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getOrientation()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eq p1, v0, :cond_c

    #@7
    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->setOrientation(I)V

    #@a
    move p1, v1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    .line 129
    :goto_d
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    #@f
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    #@12
    move-result v0

    #@13
    if-ne v0, p2, :cond_20

    #@15
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    #@17
    .line 130
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    #@1a
    move-result v0

    #@1b
    if-eq v0, p3, :cond_1e

    #@1d
    goto :goto_20

    #@1e
    :cond_1e
    move v1, p1

    #@1f
    goto :goto_25

    #@20
    .line 131
    :cond_20
    :goto_20
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    #@22
    invoke-static {p1, p2, p3}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->updateTopBottomPadding(Landroid/view/View;II)V

    #@25
    :goto_25
    return v1
.end method


# virtual methods
.method public animateContentIn(II)V
    .registers 10

    #@0
    .line 153
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    #@6
    .line 154
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    #@b
    move-result-object v0

    #@c
    const/high16 v2, 0x3f800000    # 1.0f

    #@e
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@11
    move-result-object v0

    #@12
    int-to-long v3, p2

    #@13
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@16
    move-result-object p2

    #@17
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->contentInterpolator:Landroid/animation/TimeInterpolator;

    #@19
    .line 155
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@1c
    move-result-object p2

    #@1d
    int-to-long v5, p1

    #@1e
    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    #@25
    .line 157
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    #@27
    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    #@2a
    move-result p1

    #@2b
    if-nez p1, :cond_4d

    #@2d
    .line 158
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    #@2f
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setAlpha(F)V

    #@32
    .line 159
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    #@34
    invoke-virtual {p1}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    #@37
    move-result-object p1

    #@38
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@3b
    move-result-object p1

    #@3c
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@3f
    move-result-object p1

    #@40
    iget-object p2, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->contentInterpolator:Landroid/animation/TimeInterpolator;

    #@42
    .line 160
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@45
    move-result-object p1

    #@46
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    #@49
    move-result-object p1

    #@4a
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    #@4d
    :cond_4d
    return-void
.end method

.method public animateContentOut(II)V
    .registers 10

    #@0
    .line 166
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    #@7
    .line 167
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    #@9
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    #@c
    move-result-object v0

    #@d
    const/4 v2, 0x0

    #@e
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@11
    move-result-object v0

    #@12
    int-to-long v3, p2

    #@13
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@16
    move-result-object p2

    #@17
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->contentInterpolator:Landroid/animation/TimeInterpolator;

    #@19
    .line 168
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@1c
    move-result-object p2

    #@1d
    int-to-long v5, p1

    #@1e
    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    #@25
    .line 170
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    #@27
    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    #@2a
    move-result p1

    #@2b
    if-nez p1, :cond_4d

    #@2d
    .line 171
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    #@2f
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setAlpha(F)V

    #@32
    .line 172
    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    #@34
    invoke-virtual {p1}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    #@37
    move-result-object p1

    #@38
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    #@3b
    move-result-object p1

    #@3c
    invoke-virtual {p1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@3f
    move-result-object p1

    #@40
    iget-object p2, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->contentInterpolator:Landroid/animation/TimeInterpolator;

    #@42
    .line 173
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    #@45
    move-result-object p1

    #@46
    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    #@49
    move-result-object p1

    #@4a
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    #@4d
    :cond_4d
    return-void
.end method

.method public getActionView()Landroid/widget/Button;
    .registers 2

    #@0
    .line 72
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    #@2
    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 2

    #@0
    .line 68
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    #@2
    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    #@0
    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    #@3
    .line 63
    sget v0, Lcom/google/android/material/R$id;->snackbar_text:I

    #@5
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->findViewById(I)Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/widget/TextView;

    #@b
    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    #@d
    .line 64
    sget v0, Lcom/google/android/material/R$id;->snackbar_action:I

    #@f
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->findViewById(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/widget/Button;

    #@15
    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    #@17
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    #@0
    .line 87
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@3
    .line 88
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getOrientation()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x1

    #@8
    if-ne v0, v1, :cond_b

    #@a
    return-void

    #@b
    .line 96
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v0

    #@f
    sget v2, Lcom/google/android/material/R$dimen;->design_snackbar_padding_vertical_2lines:I

    #@11
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@14
    move-result v0

    #@15
    .line 98
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getResources()Landroid/content/res/Resources;

    #@18
    move-result-object v2

    #@19
    sget v3, Lcom/google/android/material/R$dimen;->design_snackbar_padding_vertical:I

    #@1b
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1e
    move-result v2

    #@1f
    .line 99
    iget-object v3, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    #@21
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@24
    move-result-object v3

    #@25
    const/4 v4, 0x0

    #@26
    if-eqz v3, :cond_30

    #@28
    .line 100
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    #@2b
    move-result v3

    #@2c
    if-le v3, v1, :cond_30

    #@2e
    move v3, v1

    #@2f
    goto :goto_31

    #@30
    :cond_30
    move v3, v4

    #@31
    :goto_31
    if-eqz v3, :cond_4a

    #@33
    .line 103
    iget v5, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    #@35
    if-lez v5, :cond_4a

    #@37
    iget-object v5, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    #@39
    .line 105
    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    #@3c
    move-result v5

    #@3d
    iget v6, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    #@3f
    if-le v5, v6, :cond_4a

    #@41
    sub-int v2, v0, v2

    #@43
    .line 106
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->updateViewsWithinLayout(III)Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_55

    #@49
    goto :goto_56

    #@4a
    :cond_4a
    if-eqz v3, :cond_4d

    #@4c
    goto :goto_4e

    #@4d
    :cond_4d
    move v0, v2

    #@4e
    .line 112
    :goto_4e
    invoke-direct {p0, v4, v0, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->updateViewsWithinLayout(III)Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_55

    #@54
    goto :goto_56

    #@55
    :cond_55
    move v1, v4

    #@56
    :goto_56
    if-eqz v1, :cond_5b

    #@58
    .line 118
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    #@5b
    :cond_5b
    return-void
.end method

.method public setMaxInlineActionWidth(I)V
    .registers 2

    #@0
    .line 178
    iput p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    #@2
    return-void
.end method

.method updateActionTextColorAlphaIfNeeded(F)V
    .registers 4

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_1b

    #@6
    .line 77
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    #@8
    invoke-virtual {v0}, Landroid/widget/Button;->getCurrentTextColor()I

    #@b
    move-result v0

    #@c
    .line 78
    sget v1, Lcom/google/android/material/R$attr;->colorSurface:I

    #@e
    invoke-static {p0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@11
    move-result v1

    #@12
    .line 80
    invoke-static {v1, v0, p1}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@15
    move-result p1

    #@16
    .line 81
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    #@18
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    #@1b
    :cond_1b
    return-void
.end method
