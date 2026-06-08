.class Lcom/google/android/material/textfield/IconHelper;
.super Ljava/lang/Object;
.source "IconHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static applyIconTint(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V
    .registers 6

    #@0
    .line 81
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_32

    #@6
    .line 83
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    if-eqz p2, :cond_2a

    #@10
    .line 84
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2a

    #@16
    .line 88
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/IconHelper;->mergeIconState(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;)[I

    #@19
    move-result-object p0

    #@1a
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@1d
    move-result v1

    #@1e
    .line 87
    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@21
    move-result p0

    #@22
    .line 89
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@25
    move-result-object p0

    #@26
    invoke-static {v0, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@29
    goto :goto_2d

    #@2a
    .line 91
    :cond_2a
    invoke-static {v0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@2d
    :goto_2d
    if-eqz p3, :cond_32

    #@2f
    .line 94
    invoke-static {v0, p3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    #@32
    .line 98
    :cond_32
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@35
    move-result-object p0

    #@36
    if-eq p0, v0, :cond_3b

    #@38
    .line 99
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3b
    :cond_3b
    return-void
.end method

.method static convertScaleType(I)Landroid/widget/ImageView$ScaleType;
    .registers 2

    #@0
    if-eqz p0, :cond_23

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p0, v0, :cond_20

    #@5
    const/4 v0, 0x2

    #@6
    if-eq p0, v0, :cond_1d

    #@8
    const/4 v0, 0x3

    #@9
    if-eq p0, v0, :cond_1a

    #@b
    const/4 v0, 0x5

    #@c
    if-eq p0, v0, :cond_17

    #@e
    const/4 v0, 0x6

    #@f
    if-eq p0, v0, :cond_14

    #@11
    .line 175
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    #@13
    return-object p0

    #@14
    .line 173
    :cond_14
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    #@16
    return-object p0

    #@17
    .line 171
    :cond_17
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@19
    return-object p0

    #@1a
    .line 169
    :cond_1a
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    #@1c
    return-object p0

    #@1d
    .line 167
    :cond_1d
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    #@1f
    return-object p0

    #@20
    .line 165
    :cond_20
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    #@22
    return-object p0

    #@23
    .line 163
    :cond_23
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@25
    return-object p0
.end method

.method private static mergeIconState(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;)[I
    .registers 5

    #@0
    .line 127
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getDrawableState()[I

    #@3
    move-result-object p0

    #@4
    .line 128
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawableState()[I

    #@7
    move-result-object p1

    #@8
    .line 130
    array-length v0, p0

    #@9
    .line 131
    array-length v1, p0

    #@a
    array-length v2, p1

    #@b
    add-int/2addr v1, v2

    #@c
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@f
    move-result-object p0

    #@10
    const/4 v1, 0x0

    #@11
    .line 133
    array-length v2, p1

    #@12
    invoke-static {p1, v1, p0, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15
    return-object p0
.end method

.method static refreshIconDrawableState(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;Landroid/content/res/ColorStateList;)V
    .registers 5

    #@0
    .line 110
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 111
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v1

    #@8
    if-eqz v1, :cond_31

    #@a
    if-eqz p2, :cond_31

    #@c
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_13

    #@12
    goto :goto_31

    #@13
    .line 117
    :cond_13
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/IconHelper;->mergeIconState(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/internal/CheckableImageButton;)[I

    #@16
    move-result-object p0

    #@17
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@1a
    move-result v1

    #@1b
    .line 116
    invoke-virtual {p2, p0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@1e
    move-result p0

    #@1f
    .line 119
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object p2

    #@23
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@26
    move-result-object p2

    #@27
    .line 120
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@2a
    move-result-object p0

    #@2b
    invoke-static {p2, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@2e
    .line 121
    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@31
    :cond_31
    :goto_31
    return-void
.end method

.method static setCompatRippleBackgroundIfNeeded(Lcom/google/android/material/internal/CheckableImageButton;)V
    .registers 1

    #@0
    return-void
.end method

.method private static setIconClickable(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .registers 5

    #@0
    .line 58
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x1

    #@6
    if-eqz p1, :cond_a

    #@8
    move p1, v2

    #@9
    goto :goto_b

    #@a
    :cond_a
    move p1, v1

    #@b
    :goto_b
    if-nez v0, :cond_f

    #@d
    if-eqz p1, :cond_10

    #@f
    :cond_f
    move v1, v2

    #@10
    .line 61
    :cond_10
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setFocusable(Z)V

    #@13
    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setClickable(Z)V

    #@16
    .line 63
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setPressable(Z)V

    #@19
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setLongClickable(Z)V

    #@1c
    if-eqz v1, :cond_1f

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    const/4 v2, 0x2

    #@20
    .line 65
    :goto_20
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@23
    return-void
.end method

.method static setIconMinSize(Lcom/google/android/material/internal/CheckableImageButton;I)V
    .registers 2

    #@0
    .line 151
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setMinimumWidth(I)V

    #@3
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setMinimumHeight(I)V

    #@6
    return-void
.end method

.method static setIconOnClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .registers 3

    #@0
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@3
    .line 47
    invoke-static {p0, p2}, Lcom/google/android/material/textfield/IconHelper;->setIconClickable(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    #@6
    return-void
.end method

.method static setIconOnLongClickListener(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V
    .registers 2

    #@0
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@3
    .line 53
    invoke-static {p0, p1}, Lcom/google/android/material/textfield/IconHelper;->setIconClickable(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    #@6
    return-void
.end method

.method static setIconScaleType(Lcom/google/android/material/internal/CheckableImageButton;Landroid/widget/ImageView$ScaleType;)V
    .registers 2

    #@0
    .line 157
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@3
    return-void
.end method
