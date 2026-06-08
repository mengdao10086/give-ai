.class public Lcom/blankj/utilcode/util/ClickUtils;
.super Ljava/lang/Object;
.source "ClickUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;,
        Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;,
        Lcom/blankj/utilcode/util/ClickUtils$OnMultiClickListener;,
        Lcom/blankj/utilcode/util/ClickUtils$OnDebouncingClickListener;,
        Lcom/blankj/utilcode/util/ClickUtils$Back2HomeFriendlyListener;
    }
.end annotation


# static fields
.field private static final DEBOUNCING_DEFAULT_VALUE:J = 0x3e8L

.field private static final PRESSED_BG_ALPHA_DEFAULT_VALUE:F = 0.9f

.field private static final PRESSED_BG_ALPHA_STYLE:I = 0x4

.field private static final PRESSED_BG_DARK_DEFAULT_VALUE:F = 0.9f

.field private static final PRESSED_BG_DARK_STYLE:I = 0x5

.field private static final PRESSED_VIEW_ALPHA_DEFAULT_VALUE:F = 0.8f

.field private static final PRESSED_VIEW_ALPHA_SRC_TAG:I = -0x3

.field private static final PRESSED_VIEW_ALPHA_TAG:I = -0x2

.field private static final PRESSED_VIEW_SCALE_DEFAULT_VALUE:F = -0.06f

.field private static final PRESSED_VIEW_SCALE_TAG:I = -0x1

.field private static final TIP_DURATION:J = 0x7d0L

.field private static sClickCount:I

.field private static sLastClickMillis:J


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method private static applyDebouncing([Landroid/view/View;ZJLandroid/view/View$OnClickListener;)V
    .registers 9

    #@0
    if-eqz p0, :cond_1c

    #@2
    .line 332
    array-length v0, p0

    #@3
    if-eqz v0, :cond_1c

    #@5
    if-nez p4, :cond_8

    #@7
    goto :goto_1c

    #@8
    .line 333
    :cond_8
    array-length v0, p0

    #@9
    const/4 v1, 0x0

    #@a
    :goto_a
    if-ge v1, v0, :cond_1c

    #@c
    aget-object v2, p0, v1

    #@e
    if-nez v2, :cond_11

    #@10
    goto :goto_19

    #@11
    .line 335
    :cond_11
    new-instance v3, Lcom/blankj/utilcode/util/ClickUtils$1;

    #@13
    invoke-direct {v3, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/ClickUtils$1;-><init>(ZJLandroid/view/View$OnClickListener;)V

    #@16
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@19
    :goto_19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_a

    #@1c
    :cond_1c
    :goto_1c
    return-void
.end method

.method public static applyGlobalDebouncing(Landroid/view/View;JLandroid/view/View$OnClickListener;)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Landroid/view/View;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    .line 301
    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ClickUtils;->applyGlobalDebouncing([Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    #@9
    return-void
.end method

.method public static applyGlobalDebouncing(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Landroid/view/View;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    .line 289
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ClickUtils;->applyGlobalDebouncing([Landroid/view/View;Landroid/view/View$OnClickListener;)V

    #@9
    return-void
.end method

.method public static applyGlobalDebouncing([Landroid/view/View;JLandroid/view/View$OnClickListener;)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    .line 325
    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ClickUtils;->applyDebouncing([Landroid/view/View;ZJLandroid/view/View$OnClickListener;)V

    #@4
    return-void
.end method

.method public static applyGlobalDebouncing([Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 4

    #@0
    const-wide/16 v0, 0x3e8

    #@2
    .line 312
    invoke-static {p0, v0, v1, p1}, Lcom/blankj/utilcode/util/ClickUtils;->applyGlobalDebouncing([Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    #@5
    return-void
.end method

.method public static applyPressedBgAlpha(Landroid/view/View;)V
    .registers 2

    #@0
    const v0, 0x3f666666    # 0.9f

    #@3
    .line 148
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedBgAlpha(Landroid/view/View;F)V

    #@6
    return-void
.end method

.method public static applyPressedBgAlpha(Landroid/view/View;F)V
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    .line 158
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedBgStyle(Landroid/view/View;IF)V

    #@4
    return-void
.end method

.method public static applyPressedBgDark(Landroid/view/View;)V
    .registers 2

    #@0
    const v0, 0x3f666666    # 0.9f

    #@3
    .line 167
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedBgDark(Landroid/view/View;F)V

    #@6
    return-void
.end method

.method public static applyPressedBgDark(Landroid/view/View;F)V
    .registers 3

    #@0
    const/4 v0, 0x5

    #@1
    .line 177
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedBgStyle(Landroid/view/View;IF)V

    #@4
    return-void
.end method

.method private static applyPressedBgStyle(Landroid/view/View;IF)V
    .registers 7

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 182
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@6
    move-result-object v0

    #@7
    neg-int v1, p1

    #@8
    .line 183
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    .line 184
    instance-of v3, v2, Landroid/graphics/drawable/Drawable;

    #@e
    if-eqz v3, :cond_16

    #@10
    .line 185
    check-cast v2, Landroid/graphics/drawable/Drawable;

    #@12
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@15
    goto :goto_20

    #@16
    .line 187
    :cond_16
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ClickUtils;->createStyleDrawable(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object p1

    #@1a
    .line 188
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@1d
    .line 189
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@20
    :goto_20
    return-void
.end method

.method public static applyPressedViewAlpha(Landroid/view/View;F)V
    .registers 3

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    const/4 v0, -0x2

    #@4
    .line 136
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@b
    .line 137
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    #@e
    move-result p1

    #@f
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@12
    move-result-object p1

    #@13
    const/4 v0, -0x3

    #@14
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@17
    const/4 p1, 0x1

    #@18
    .line 138
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    #@1b
    .line 139
    invoke-static {}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;->getInstance()Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;

    #@1e
    move-result-object p1

    #@1f
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@22
    return-void
.end method

.method public static varargs applyPressedViewAlpha([Landroid/view/View;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 105
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedViewAlpha([Landroid/view/View;[F)V

    #@4
    return-void
.end method

.method public static applyPressedViewAlpha([Landroid/view/View;[F)V
    .registers 5

    #@0
    if-eqz p0, :cond_23

    #@2
    .line 115
    array-length v0, p0

    #@3
    if-nez v0, :cond_6

    #@5
    goto :goto_23

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    .line 116
    :goto_7
    array-length v1, p0

    #@8
    if-ge v0, v1, :cond_23

    #@a
    if-eqz p1, :cond_18

    #@c
    .line 117
    array-length v1, p1

    #@d
    if-lt v0, v1, :cond_10

    #@f
    goto :goto_18

    #@10
    .line 120
    :cond_10
    aget-object v1, p0, v0

    #@12
    aget v2, p1, v0

    #@14
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedViewAlpha(Landroid/view/View;F)V

    #@17
    goto :goto_20

    #@18
    .line 118
    :cond_18
    :goto_18
    aget-object v1, p0, v0

    #@1a
    const v2, 0x3f4ccccd    # 0.8f

    #@1d
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedViewAlpha(Landroid/view/View;F)V

    #@20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_7

    #@23
    :cond_23
    :goto_23
    return-void
.end method

.method public static applyPressedViewScale(Landroid/view/View;F)V
    .registers 3

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    :cond_3
    const/4 v0, -0x1

    #@4
    .line 94
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@b
    const/4 p1, 0x1

    #@c
    .line 95
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    #@f
    .line 96
    invoke-static {}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;->getInstance()Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;

    #@12
    move-result-object p1

    #@13
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@16
    return-void
.end method

.method public static varargs applyPressedViewScale([Landroid/view/View;)V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 62
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedViewScale([Landroid/view/View;[F)V

    #@4
    return-void
.end method

.method public static applyPressedViewScale([Landroid/view/View;[F)V
    .registers 5

    #@0
    if-eqz p0, :cond_23

    #@2
    .line 72
    array-length v0, p0

    #@3
    if-nez v0, :cond_6

    #@5
    goto :goto_23

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    .line 75
    :goto_7
    array-length v1, p0

    #@8
    if-ge v0, v1, :cond_23

    #@a
    if-eqz p1, :cond_18

    #@c
    .line 76
    array-length v1, p1

    #@d
    if-lt v0, v1, :cond_10

    #@f
    goto :goto_18

    #@10
    .line 79
    :cond_10
    aget-object v1, p0, v0

    #@12
    aget v2, p1, v0

    #@14
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedViewScale(Landroid/view/View;F)V

    #@17
    goto :goto_20

    #@18
    .line 77
    :cond_18
    :goto_18
    aget-object v1, p0, v0

    #@1a
    const v2, -0x428a3d71    # -0.06f

    #@1d
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/ClickUtils;->applyPressedViewScale(Landroid/view/View;F)V

    #@20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_7

    #@23
    :cond_23
    :goto_23
    return-void
.end method

.method public static applySingleDebouncing(Landroid/view/View;JLandroid/view/View$OnClickListener;)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Landroid/view/View;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    .line 256
    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ClickUtils;->applySingleDebouncing([Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    #@9
    return-void
.end method

.method public static applySingleDebouncing(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Landroid/view/View;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    .line 244
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ClickUtils;->applySingleDebouncing([Landroid/view/View;Landroid/view/View$OnClickListener;)V

    #@9
    return-void
.end method

.method public static applySingleDebouncing([Landroid/view/View;JLandroid/view/View$OnClickListener;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 279
    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ClickUtils;->applyDebouncing([Landroid/view/View;ZJLandroid/view/View$OnClickListener;)V

    #@4
    return-void
.end method

.method public static applySingleDebouncing([Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 4

    #@0
    const-wide/16 v0, 0x3e8

    #@2
    .line 266
    invoke-static {p0, v0, v1, p1}, Lcom/blankj/utilcode/util/ClickUtils;->applySingleDebouncing([Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    #@5
    return-void
.end method

.method public static back2HomeFriendly(Ljava/lang/CharSequence;)V
    .registers 4

    #@0
    const-wide/16 v0, 0x7d0

    #@2
    .line 383
    sget-object v2, Lcom/blankj/utilcode/util/ClickUtils$Back2HomeFriendlyListener;->DEFAULT:Lcom/blankj/utilcode/util/ClickUtils$Back2HomeFriendlyListener;

    #@4
    invoke-static {p0, v0, v1, v2}, Lcom/blankj/utilcode/util/ClickUtils;->back2HomeFriendly(Ljava/lang/CharSequence;JLcom/blankj/utilcode/util/ClickUtils$Back2HomeFriendlyListener;)V

    #@7
    return-void
.end method

.method public static back2HomeFriendly(Ljava/lang/CharSequence;JLcom/blankj/utilcode/util/ClickUtils$Back2HomeFriendlyListener;)V
    .registers 8

    #@0
    .line 389
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 390
    sget-wide v2, Lcom/blankj/utilcode/util/ClickUtils;->sLastClickMillis:J

    #@6
    sub-long v2, v0, v2

    #@8
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    #@b
    move-result-wide v2

    #@c
    cmp-long v2, v2, p1

    #@e
    const/4 v3, 0x1

    #@f
    if-gez v2, :cond_24

    #@11
    .line 391
    sget p0, Lcom/blankj/utilcode/util/ClickUtils;->sClickCount:I

    #@13
    add-int/2addr p0, v3

    #@14
    sput p0, Lcom/blankj/utilcode/util/ClickUtils;->sClickCount:I

    #@16
    const/4 p1, 0x2

    #@17
    if-ne p0, p1, :cond_2b

    #@19
    .line 393
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->startHomeActivity()V

    #@1c
    .line 394
    invoke-interface {p3}, Lcom/blankj/utilcode/util/ClickUtils$Back2HomeFriendlyListener;->dismiss()V

    #@1f
    const-wide/16 p0, 0x0

    #@21
    .line 395
    sput-wide p0, Lcom/blankj/utilcode/util/ClickUtils;->sLastClickMillis:J

    #@23
    goto :goto_2b

    #@24
    .line 398
    :cond_24
    sput v3, Lcom/blankj/utilcode/util/ClickUtils;->sClickCount:I

    #@26
    .line 399
    invoke-interface {p3, p0, p1, p2}, Lcom/blankj/utilcode/util/ClickUtils$Back2HomeFriendlyListener;->show(Ljava/lang/CharSequence;J)V

    #@29
    .line 400
    sput-wide v0, Lcom/blankj/utilcode/util/ClickUtils;->sLastClickMillis:J

    #@2b
    :cond_2b
    :goto_2b
    return-void
.end method

.method private static createAlphaDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 217
    new-instance v0, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;

    #@2
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    #@5
    const/high16 p0, 0x437f0000    # 255.0f

    #@7
    mul-float/2addr p1, p0

    #@8
    float-to-int p0, p1

    #@9
    .line 218
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->setAlpha(I)V

    #@c
    return-object v0
.end method

.method private static createDarkDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 223
    new-instance v0, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;

    #@2
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    #@5
    .line 224
    invoke-static {p1}, Lcom/blankj/utilcode/util/ClickUtils;->getDarkColorFilter(F)Landroid/graphics/ColorMatrixColorFilter;

    #@8
    move-result-object p0

    #@9
    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@c
    return-object v0
.end method

.method private static createStyleDrawable(Landroid/graphics/drawable/Drawable;IF)Landroid/graphics/drawable/Drawable;
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_8

    #@3
    .line 195
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    #@5
    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@8
    .line 197
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@b
    move-result-object v1

    #@c
    if-nez v1, :cond_f

    #@e
    return-object p0

    #@f
    .line 199
    :cond_f
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x4

    #@1c
    if-ne p1, v2, :cond_23

    #@1e
    .line 201
    invoke-static {v1, p2}, Lcom/blankj/utilcode/util/ClickUtils;->createAlphaDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    #@21
    move-result-object v1

    #@22
    goto :goto_2a

    #@23
    :cond_23
    const/4 v2, 0x5

    #@24
    if-ne p1, v2, :cond_2a

    #@26
    .line 203
    invoke-static {v1, p2}, Lcom/blankj/utilcode/util/ClickUtils;->createDarkDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    #@29
    move-result-object v1

    #@2a
    .line 206
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@2d
    move-result-object p1

    #@2e
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@31
    move-result-object p1

    #@32
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@35
    move-result-object p1

    #@36
    const/high16 p2, 0x3f000000    # 0.5f

    #@38
    .line 207
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/ClickUtils;->createAlphaDrawable(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;

    #@3b
    move-result-object p1

    #@3c
    .line 209
    new-instance p2, Landroid/graphics/drawable/StateListDrawable;

    #@3e
    invoke-direct {p2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    #@41
    const/4 v2, 0x1

    #@42
    new-array v3, v2, [I

    #@44
    const v4, 0x10100a7

    #@47
    aput v4, v3, v0

    #@49
    .line 210
    invoke-virtual {p2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@4c
    new-array v1, v2, [I

    #@4e
    const v2, -0x101009e

    #@51
    aput v2, v1, v0

    #@53
    .line 211
    invoke-virtual {p2, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@56
    .line 212
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    #@58
    invoke-virtual {p2, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@5b
    return-object p2
.end method

.method public static expandClickArea(Landroid/view/View;I)V
    .registers 2

    #@0
    .line 351
    invoke-static {p0, p1, p1, p1, p1}, Lcom/blankj/utilcode/util/ClickUtils;->expandClickArea(Landroid/view/View;IIII)V

    #@3
    return-void
.end method

.method public static expandClickArea(Landroid/view/View;IIII)V
    .registers 14

    #@0
    .line 359
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/View;

    #@6
    if-nez v0, :cond_10

    #@8
    const-string p0, "ClickUtils"

    #@a
    const-string p1, "expandClickArea must have parent view."

    #@c
    .line 361
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    return-void

    #@10
    .line 364
    :cond_10
    new-instance v8, Lcom/blankj/utilcode/util/ClickUtils$2;

    #@12
    move-object v1, v8

    #@13
    move-object v2, p0

    #@14
    move v3, p1

    #@15
    move v4, p4

    #@16
    move v5, p2

    #@17
    move v6, p3

    #@18
    move-object v7, v0

    #@19
    invoke-direct/range {v1 .. v7}, Lcom/blankj/utilcode/util/ClickUtils$2;-><init>(Landroid/view/View;IIIILandroid/view/View;)V

    #@1c
    invoke-virtual {v0, v8}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@1f
    return-void
.end method

.method private static getDarkColorFilter(F)Landroid/graphics/ColorMatrixColorFilter;
    .registers 6

    #@0
    .line 229
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    #@2
    new-instance v1, Landroid/graphics/ColorMatrix;

    #@4
    const/16 v2, 0x14

    #@6
    new-array v2, v2, [F

    #@8
    const/4 v3, 0x0

    #@9
    aput p0, v2, v3

    #@b
    const/4 v3, 0x1

    #@c
    const/4 v4, 0x0

    #@d
    aput v4, v2, v3

    #@f
    const/4 v3, 0x2

    #@10
    aput v4, v2, v3

    #@12
    const/4 v3, 0x3

    #@13
    aput v4, v2, v3

    #@15
    const/4 v3, 0x4

    #@16
    aput v4, v2, v3

    #@18
    const/4 v3, 0x5

    #@19
    aput v4, v2, v3

    #@1b
    const/4 v3, 0x6

    #@1c
    aput p0, v2, v3

    #@1e
    const/4 v3, 0x7

    #@1f
    aput v4, v2, v3

    #@21
    const/16 v3, 0x8

    #@23
    aput v4, v2, v3

    #@25
    const/16 v3, 0x9

    #@27
    aput v4, v2, v3

    #@29
    const/16 v3, 0xa

    #@2b
    aput v4, v2, v3

    #@2d
    const/16 v3, 0xb

    #@2f
    aput v4, v2, v3

    #@31
    const/16 v3, 0xc

    #@33
    aput p0, v2, v3

    #@35
    const/16 p0, 0xd

    #@37
    aput v4, v2, p0

    #@39
    const/16 p0, 0xe

    #@3b
    aput v4, v2, p0

    #@3d
    const/16 p0, 0xf

    #@3f
    aput v4, v2, p0

    #@41
    const/16 p0, 0x10

    #@43
    aput v4, v2, p0

    #@45
    const/16 p0, 0x11

    #@47
    aput v4, v2, p0

    #@49
    const/16 p0, 0x12

    #@4b
    const/high16 v3, 0x40000000    # 2.0f

    #@4d
    aput v3, v2, p0

    #@4f
    const/16 p0, 0x13

    #@51
    aput v4, v2, p0

    #@53
    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    #@56
    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    #@59
    return-object v0
.end method
