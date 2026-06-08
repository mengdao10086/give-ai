.class public abstract Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
.super Ljava/lang/Object;
.source "BaseProgressIndicatorSpec.java"


# instance fields
.field public hideAnimationBehavior:I

.field public indicatorColors:[I

.field public showAnimationBehavior:I

.field public trackColor:I

.field public trackCornerRadius:I

.field public trackThickness:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    #@0
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    new-array v1, v0, [I

    #@6
    .line 57
    iput-object v1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    #@8
    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v1

    #@c
    sget v2, Lcom/google/android/material/R$dimen;->mtrl_progress_track_thickness:I

    #@e
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@11
    move-result v1

    #@12
    .line 87
    sget-object v4, Lcom/google/android/material/R$styleable;->BaseProgressIndicator:[I

    #@14
    new-array v7, v0, [I

    #@16
    move-object v2, p1

    #@17
    move-object v3, p2

    #@18
    move v5, p3

    #@19
    move v6, p4

    #@1a
    .line 88
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@1d
    move-result-object p2

    #@1e
    .line 90
    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackThickness:I

    #@20
    .line 91
    invoke-static {p1, p2, p3, v1}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    #@23
    move-result p3

    #@24
    iput p3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    #@26
    .line 93
    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackCornerRadius:I

    #@28
    .line 95
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    #@2b
    move-result p3

    #@2c
    iget p4, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    #@2e
    div-int/lit8 p4, p4, 0x2

    #@30
    .line 94
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    #@33
    move-result p3

    #@34
    iput p3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    #@36
    .line 98
    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_showAnimationBehavior:I

    #@38
    .line 99
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3b
    move-result p3

    #@3c
    iput p3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    #@3e
    .line 102
    sget p3, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_hideAnimationBehavior:I

    #@40
    .line 103
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@43
    move-result p3

    #@44
    iput p3, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    #@46
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->loadIndicatorColors(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    #@49
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->loadTrackColor(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    #@4c
    .line 110
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@4f
    return-void
.end method

.method private loadIndicatorColors(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 7

    #@0
    .line 122
    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    #@2
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    const/4 v2, -0x1

    #@8
    const/4 v3, 0x1

    #@9
    if-nez v0, :cond_18

    #@b
    new-array p2, v3, [I

    #@d
    .line 124
    sget v0, Lcom/google/android/material/R$attr;->colorPrimary:I

    #@f
    invoke-static {p1, v0, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    #@12
    move-result p1

    #@13
    aput p1, p2, v1

    #@15
    iput-object p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    #@17
    return-void

    #@18
    .line 128
    :cond_18
    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    #@1a
    .line 129
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@1d
    move-result-object v0

    #@1e
    .line 131
    iget v0, v0, Landroid/util/TypedValue;->type:I

    #@20
    if-eq v0, v3, :cond_2f

    #@22
    new-array p1, v3, [I

    #@24
    .line 132
    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    #@26
    .line 133
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    #@29
    move-result p2

    #@2a
    aput p2, p1, v1

    #@2c
    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    #@2e
    return-void

    #@2f
    .line 139
    :cond_2f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@32
    move-result-object p1

    #@33
    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_indicatorColor:I

    #@35
    .line 141
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@38
    move-result p2

    #@39
    .line 140
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    #@3c
    move-result-object p1

    #@3d
    iput-object p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    #@3f
    .line 142
    array-length p1, p1

    #@40
    if-eqz p1, :cond_43

    #@42
    return-void

    #@43
    .line 143
    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@45
    const-string p2, "indicatorColors cannot be empty when indicatorColor is not used."

    #@47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw p1
.end method

.method private loadTrackColor(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .registers 5

    #@0
    .line 157
    sget v0, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackColor:I

    #@2
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_12

    #@8
    .line 158
    sget p1, Lcom/google/android/material/R$styleable;->BaseProgressIndicator_trackColor:I

    #@a
    const/4 v0, -0x1

    #@b
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    #@e
    move-result p1

    #@f
    iput p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    #@11
    return-void

    #@12
    .line 162
    :cond_12
    iget-object p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    #@14
    const/4 v0, 0x0

    #@15
    aget p2, p2, v0

    #@17
    iput p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    #@19
    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@1c
    move-result-object p1

    #@1d
    const/4 p2, 0x1

    #@1e
    new-array p2, p2, [I

    #@20
    const v1, 0x1010033

    #@23
    aput v1, p2, v0

    #@25
    invoke-virtual {p1, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@28
    move-result-object p1

    #@29
    const p2, 0x3e4ccccd    # 0.2f

    #@2c
    .line 166
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@2f
    move-result p2

    #@30
    .line 167
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@33
    const/high16 p1, 0x437f0000    # 255.0f

    #@35
    mul-float/2addr p2, p1

    #@36
    float-to-int p1, p2

    #@37
    .line 170
    iget p2, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    #@39
    invoke-static {p2, p1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    #@3c
    move-result p1

    #@3d
    iput p1, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    #@3f
    return-void
.end method


# virtual methods
.method public isHideAnimationEnabled()Z
    .registers 2

    #@0
    .line 178
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

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

.method public isShowAnimationEnabled()Z
    .registers 2

    #@0
    .line 174
    iget v0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

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

.method abstract validateSpec()V
.end method
