.class Lcom/google/android/material/button/MaterialButtonHelper;
.super Ljava/lang/Object;
.source "MaterialButtonHelper.java"


# static fields
.field private static final IS_LOLLIPOP:Z

.field private static final IS_MIN_LOLLIPOP:Z


# instance fields
.field private backgroundOverwritten:Z

.field private backgroundTint:Landroid/content/res/ColorStateList;

.field private backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private checkable:Z

.field private cornerRadius:I

.field private cornerRadiusSet:Z

.field private elevation:I

.field private insetBottom:I

.field private insetLeft:I

.field private insetRight:I

.field private insetTop:I

.field private maskDrawable:Landroid/graphics/drawable/Drawable;

.field private final materialButton:Lcom/google/android/material/button/MaterialButton;

.field private rippleColor:Landroid/content/res/ColorStateList;

.field private rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private shouldDrawSurfaceColorStroke:Z

.field private strokeColor:Landroid/content/res/ColorStateList;

.field private strokeWidth:I

.field private toggleCheckedStateOnClick:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x1

    #@1
    .line 55
    sput-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_MIN_LOLLIPOP:Z

    #@3
    const/4 v0, 0x0

    #@4
    .line 57
    sput-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    #@6
    return-void
.end method

.method constructor <init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 4

    #@0
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 75
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    #@6
    .line 76
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    #@8
    .line 77
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    #@a
    const/4 v0, 0x1

    #@b
    .line 79
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->toggleCheckedStateOnClick:Z

    #@d
    .line 84
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@f
    .line 85
    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@11
    return-void
.end method

.method private createBackground()Landroid/graphics/drawable/Drawable;
    .registers 9

    #@0
    .line 215
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@7
    .line 216
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@9
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    #@c
    move-result-object v1

    #@d
    .line 217
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    #@10
    .line 218
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    #@12
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@15
    .line 219
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@17
    if-eqz v1, :cond_1c

    #@19
    .line 220
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    #@1c
    .line 222
    :cond_1c
    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    #@1e
    int-to-float v1, v1

    #@1f
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    #@21
    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    #@24
    .line 224
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@26
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@28
    invoke-direct {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@2b
    const/4 v2, 0x0

    #@2c
    .line 226
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    #@2f
    .line 227
    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    #@31
    int-to-float v3, v3

    #@32
    .line 229
    iget-boolean v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    #@34
    if-eqz v4, :cond_3f

    #@36
    .line 230
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@38
    sget v5, Lcom/google/android/material/R$attr;->colorSurface:I

    #@3a
    invoke-static {v4, v5}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@3d
    move-result v4

    #@3e
    goto :goto_40

    #@3f
    :cond_3f
    move v4, v2

    #@40
    .line 227
    :goto_40
    invoke-virtual {v1, v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    #@43
    .line 233
    sget-boolean v3, Lcom/google/android/material/button/MaterialButtonHelper;->IS_MIN_LOLLIPOP:Z

    #@45
    const/4 v4, 0x2

    #@46
    const/4 v5, 0x1

    #@47
    if-eqz v3, :cond_75

    #@49
    .line 234
    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@4b
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@4d
    invoke-direct {v3, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@50
    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    #@52
    const/4 v6, -0x1

    #@53
    .line 235
    invoke-static {v3, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    #@56
    .line 236
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    #@58
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    #@5a
    .line 238
    invoke-static {v6}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@5d
    move-result-object v6

    #@5e
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    #@60
    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    #@62
    aput-object v1, v4, v2

    #@64
    aput-object v0, v4, v5

    #@66
    invoke-direct {v7, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@69
    .line 239
    invoke-direct {p0, v7}, Lcom/google/android/material/button/MaterialButtonHelper;->wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    #@6c
    move-result-object v0

    #@6d
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    #@6f
    invoke-direct {v3, v6, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@72
    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@74
    return-object v3

    #@75
    .line 245
    :cond_75
    new-instance v3, Lcom/google/android/material/ripple/RippleDrawableCompat;

    #@77
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@79
    invoke-direct {v3, v6}, Lcom/google/android/material/ripple/RippleDrawableCompat;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@7c
    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    #@7e
    .line 246
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    #@80
    .line 247
    invoke-static {v6}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@83
    move-result-object v6

    #@84
    .line 246
    invoke-static {v3, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@87
    .line 248
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    #@89
    const/4 v6, 0x3

    #@8a
    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    #@8c
    aput-object v1, v6, v2

    #@8e
    aput-object v0, v6, v5

    #@90
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    #@92
    aput-object v0, v6, v4

    #@94
    invoke-direct {v3, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@97
    iput-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@99
    .line 251
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButtonHelper;->wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    #@9c
    move-result-object v0

    #@9d
    return-object v0
.end method

.method private getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 4

    #@0
    .line 341
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@2
    if-eqz v0, :cond_31

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    #@7
    move-result v0

    #@8
    if-lez v0, :cond_31

    #@a
    .line 342
    sget-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_MIN_LOLLIPOP:Z

    #@c
    if-eqz v0, :cond_26

    #@e
    .line 343
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@10
    const/4 v1, 0x0

    #@11
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    #@17
    .line 344
    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    #@1d
    xor-int/lit8 p1, p1, 0x1

    #@1f
    .line 346
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object p1

    #@23
    check-cast p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@25
    return-object p1

    #@26
    .line 348
    :cond_26
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@28
    xor-int/lit8 p1, p1, 0x1

    #@2a
    .line 349
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@2d
    move-result-object p1

    #@2e
    check-cast p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@30
    return-object p1

    #@31
    :cond_31
    const/4 p1, 0x0

    #@32
    return-object p1
.end method

.method private getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 379
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private setVerticalInsets(II)V
    .registers 10

    #@0
    .line 446
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    #@5
    move-result v0

    #@6
    .line 447
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@8
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    #@b
    move-result v1

    #@c
    .line 448
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@e
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    #@11
    move-result v2

    #@12
    .line 449
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@14
    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    #@17
    move-result v3

    #@18
    .line 450
    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    #@1a
    .line 451
    iget v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    #@1c
    .line 452
    iput p2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    #@1e
    .line 453
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    #@20
    .line 454
    iget-boolean v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    #@22
    if-nez v6, :cond_27

    #@24
    .line 455
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateBackground()V

    #@27
    .line 458
    :cond_27
    iget-object v6, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@29
    add-int/2addr v1, p1

    #@2a
    sub-int/2addr v1, v4

    #@2b
    add-int/2addr v3, p2

    #@2c
    sub-int/2addr v3, v5

    #@2d
    invoke-static {v6, v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    #@30
    return-void
.end method

.method private updateBackground()V
    .registers 3

    #@0
    .line 146
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@2
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->createBackground()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 147
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_1e

    #@f
    .line 149
    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->elevation:I

    #@11
    int-to-float v1, v1

    #@12
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@15
    .line 152
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@17
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getDrawableState()[I

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setState([I)Z

    #@1e
    :cond_1e
    return-void
.end method

.method private updateButtonShape(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 6

    #@0
    .line 385
    sget-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    #@2
    if-eqz v0, :cond_29

    #@4
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    #@6
    if-nez v0, :cond_29

    #@8
    .line 387
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@a
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    #@d
    move-result p1

    #@e
    .line 388
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@10
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    #@13
    move-result v0

    #@14
    .line 389
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@16
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    #@19
    move-result v1

    #@1a
    .line 390
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@1c
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    #@1f
    move-result v2

    #@20
    .line 391
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateBackground()V

    #@23
    .line 393
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@25
    invoke-static {v3, p1, v0, v1, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    #@28
    goto :goto_50

    #@29
    .line 396
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2c
    move-result-object v0

    #@2d
    if-eqz v0, :cond_36

    #@2f
    .line 397
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@36
    .line 399
    :cond_36
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@39
    move-result-object v0

    #@3a
    if-eqz v0, :cond_43

    #@3c
    .line 400
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@43
    .line 402
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaskDrawable()Lcom/google/android/material/shape/Shapeable;

    #@46
    move-result-object v0

    #@47
    if-eqz v0, :cond_50

    #@49
    .line 403
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaskDrawable()Lcom/google/android/material/shape/Shapeable;

    #@4c
    move-result-object v0

    #@4d
    invoke-interface {v0, p1}, Lcom/google/android/material/shape/Shapeable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@50
    :cond_50
    :goto_50
    return-void
.end method

.method private updateStroke()V
    .registers 5

    #@0
    .line 310
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@3
    move-result-object v0

    #@4
    .line 311
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@7
    move-result-object v1

    #@8
    if-eqz v0, :cond_28

    #@a
    .line 313
    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    #@c
    int-to-float v2, v2

    #@d
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    #@f
    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    #@12
    if-eqz v1, :cond_28

    #@14
    .line 315
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    #@16
    int-to-float v0, v0

    #@17
    .line 317
    iget-boolean v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    #@19
    if-eqz v2, :cond_24

    #@1b
    .line 318
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@1d
    sget v3, Lcom/google/android/material/R$attr;->colorSurface:I

    #@1f
    invoke-static {v2, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@22
    move-result v2

    #@23
    goto :goto_25

    #@24
    :cond_24
    const/4 v2, 0x0

    #@25
    .line 315
    :goto_25
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    #@28
    :cond_28
    return-void
.end method

.method private wrapDrawableWithInset(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .registers 9

    #@0
    .line 175
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    #@2
    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    #@4
    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    #@6
    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    #@8
    iget v5, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    #@a
    move-object v0, v6

    #@b
    move-object v1, p1

    #@c
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    #@f
    return-object v6
.end method


# virtual methods
.method getCornerRadius()I
    .registers 2

    #@0
    .line 336
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    #@2
    return v0
.end method

.method public getInsetBottom()I
    .registers 2

    #@0
    .line 437
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    #@2
    return v0
.end method

.method public getInsetTop()I
    .registers 2

    #@0
    .line 467
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    #@2
    return v0
.end method

.method public getMaskDrawable()Lcom/google/android/material/shape/Shapeable;
    .registers 4

    #@0
    .line 410
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@2
    if-eqz v0, :cond_26

    #@4
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x1

    #@9
    if-le v0, v1, :cond_26

    #@b
    .line 411
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@d
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    #@10
    move-result v0

    #@11
    const/4 v2, 0x2

    #@12
    if-le v0, v2, :cond_1d

    #@14
    .line 413
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@16
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/google/android/material/shape/Shapeable;

    #@1c
    return-object v0

    #@1d
    .line 416
    :cond_1d
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Landroid/graphics/drawable/LayerDrawable;

    #@1f
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/google/android/material/shape/Shapeable;

    #@25
    return-object v0

    #@26
    :cond_26
    const/4 v0, 0x0

    #@27
    return-object v0
.end method

.method getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 358
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method getRippleColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 283
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    #@0
    .line 429
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    return-object v0
.end method

.method getStrokeColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 295
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method getStrokeWidth()I
    .registers 2

    #@0
    .line 306
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    #@2
    return v0
.end method

.method getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 188
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 201
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method isBackgroundOverwritten()Z
    .registers 2

    #@0
    .line 170
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    #@2
    return v0
.end method

.method isCheckable()Z
    .registers 2

    #@0
    .line 366
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    #@2
    return v0
.end method

.method isToggleCheckedStateOnClick()Z
    .registers 2

    #@0
    .line 370
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->toggleCheckedStateOnClick:Z

    #@2
    return v0
.end method

.method loadFromAttributes(Landroid/content/res/TypedArray;)V
    .registers 7

    #@0
    .line 89
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetLeft:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    #@9
    .line 90
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetRight:I

    #@b
    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    #@11
    .line 92
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetTop:I

    #@13
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    #@19
    .line 93
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_insetBottom:I

    #@1b
    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    #@21
    .line 97
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_cornerRadius:I

    #@23
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@26
    move-result v0

    #@27
    const/4 v2, 0x1

    #@28
    const/4 v3, -0x1

    #@29
    if-eqz v0, :cond_3f

    #@2b
    .line 98
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_cornerRadius:I

    #@2d
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@30
    move-result v0

    #@31
    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    #@33
    .line 99
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@35
    int-to-float v0, v0

    #@36
    invoke-virtual {v4, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@3d
    .line 100
    iput-boolean v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    #@3f
    .line 103
    :cond_3f
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_strokeWidth:I

    #@41
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@44
    move-result v0

    #@45
    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    #@47
    .line 105
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_backgroundTintMode:I

    #@49
    .line 107
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@4c
    move-result v0

    #@4d
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@4f
    .line 106
    invoke-static {v0, v3}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@52
    move-result-object v0

    #@53
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@55
    .line 108
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@57
    .line 110
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    #@5a
    move-result-object v0

    #@5b
    sget v3, Lcom/google/android/material/R$styleable;->MaterialButton_backgroundTint:I

    #@5d
    .line 109
    invoke-static {v0, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@60
    move-result-object v0

    #@61
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    #@63
    .line 111
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@65
    .line 113
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    #@68
    move-result-object v0

    #@69
    sget v3, Lcom/google/android/material/R$styleable;->MaterialButton_strokeColor:I

    #@6b
    .line 112
    invoke-static {v0, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@6e
    move-result-object v0

    #@6f
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    #@71
    .line 114
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@73
    .line 116
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    #@76
    move-result-object v0

    #@77
    sget v3, Lcom/google/android/material/R$styleable;->MaterialButton_rippleColor:I

    #@79
    .line 115
    invoke-static {v0, p1, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@7c
    move-result-object v0

    #@7d
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    #@7f
    .line 118
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_android_checkable:I

    #@81
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@84
    move-result v0

    #@85
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    #@87
    .line 119
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_elevation:I

    #@89
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@8c
    move-result v0

    #@8d
    iput v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->elevation:I

    #@8f
    .line 121
    sget v0, Lcom/google/android/material/R$styleable;->MaterialButton_toggleCheckedStateOnClick:I

    #@91
    .line 122
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@94
    move-result v0

    #@95
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->toggleCheckedStateOnClick:Z

    #@97
    .line 125
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@99
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    #@9c
    move-result v0

    #@9d
    .line 126
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@9f
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    #@a2
    move-result v1

    #@a3
    .line 127
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@a5
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    #@a8
    move-result v2

    #@a9
    .line 128
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@ab
    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    #@ae
    move-result v3

    #@af
    .line 131
    sget v4, Lcom/google/android/material/R$styleable;->MaterialButton_android_background:I

    #@b1
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@b4
    move-result p1

    #@b5
    if-eqz p1, :cond_bb

    #@b7
    .line 132
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    #@ba
    goto :goto_be

    #@bb
    .line 134
    :cond_bb
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateBackground()V

    #@be
    .line 137
    :goto_be
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@c0
    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    #@c2
    add-int/2addr v0, v4

    #@c3
    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    #@c5
    add-int/2addr v1, v4

    #@c6
    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    #@c8
    add-int/2addr v2, v4

    #@c9
    iget v4, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    #@cb
    add-int/2addr v3, v4

    #@cc
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    #@cf
    return-void
.end method

.method setBackgroundColor(I)V
    .registers 3

    #@0
    .line 262
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_d

    #@6
    .line 263
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    #@d
    :cond_d
    return-void
.end method

.method setBackgroundOverwritten()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 162
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    #@3
    .line 165
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@5
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    #@a
    .line 166
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@c
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@e
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@11
    return-void
.end method

.method setCheckable(Z)V
    .registers 2

    #@0
    .line 362
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    #@2
    return-void
.end method

.method setCornerRadius(I)V
    .registers 3

    #@0
    .line 327
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    #@6
    if-eq v0, p1, :cond_17

    #@8
    .line 328
    :cond_8
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    #@a
    const/4 v0, 0x1

    #@b
    .line 329
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    #@d
    .line 331
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@f
    int-to-float p1, p1

    #@10
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@13
    move-result-object p1

    #@14
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@17
    :cond_17
    return-void
.end method

.method public setInsetBottom(I)V
    .registers 3

    #@0
    .line 433
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    #@2
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setVerticalInsets(II)V

    #@5
    return-void
.end method

.method public setInsetTop(I)V
    .registers 3

    #@0
    .line 441
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    #@2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setVerticalInsets(II)V

    #@5
    return-void
.end method

.method setRippleColor(Landroid/content/res/ColorStateList;)V
    .registers 4

    #@0
    .line 268
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_3f

    #@4
    .line 269
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    #@6
    .line 270
    sget-boolean v0, Lcom/google/android/material/button/MaterialButtonHelper;->IS_MIN_LOLLIPOP:Z

    #@8
    if-eqz v0, :cond_24

    #@a
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@c
    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v1

    #@10
    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    #@12
    if-eqz v1, :cond_24

    #@14
    .line 271
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@16
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    #@1c
    .line 272
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    #@23
    goto :goto_3f

    #@24
    :cond_24
    if-nez v0, :cond_3f

    #@26
    .line 273
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@28
    .line 274
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    #@2b
    move-result-object v0

    #@2c
    instance-of v0, v0, Lcom/google/android/material/ripple/RippleDrawableCompat;

    #@2e
    if-eqz v0, :cond_3f

    #@30
    .line 275
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    #@32
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Lcom/google/android/material/ripple/RippleDrawableCompat;

    #@38
    .line 276
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    #@3b
    move-result-object p1

    #@3c
    invoke-virtual {v0, p1}, Lcom/google/android/material/ripple/RippleDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    #@3f
    :cond_3f
    :goto_3f
    return-void
.end method

.method setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 2

    #@0
    .line 423
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    .line 424
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->updateButtonShape(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@5
    return-void
.end method

.method setShouldDrawSurfaceColorStroke(Z)V
    .registers 2

    #@0
    .line 205
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    #@2
    .line 206
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    #@5
    return-void
.end method

.method setStrokeColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 287
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 288
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    #@6
    .line 289
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    #@9
    :cond_9
    return-void
.end method

.method setStrokeWidth(I)V
    .registers 3

    #@0
    .line 299
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 300
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    #@6
    .line 301
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    #@9
    :cond_9
    return-void
.end method

.method setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 179
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    #@2
    if-eq v0, p1, :cond_15

    #@4
    .line 180
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    #@6
    .line 181
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@9
    move-result-object p1

    #@a
    if-eqz p1, :cond_15

    #@c
    .line 182
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@f
    move-result-object p1

    #@10
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    #@12
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@15
    :cond_15
    return-void
.end method

.method setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 192
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    if-eq v0, p1, :cond_19

    #@4
    .line 193
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@6
    .line 194
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@9
    move-result-object p1

    #@a
    if-eqz p1, :cond_19

    #@c
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@e
    if-eqz p1, :cond_19

    #@10
    .line 195
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@13
    move-result-object p1

    #@14
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    #@16
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    #@19
    :cond_19
    return-void
.end method

.method setToggleCheckedStateOnClick(Z)V
    .registers 2

    #@0
    .line 374
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->toggleCheckedStateOnClick:Z

    #@2
    return-void
.end method

.method updateMaskBounds(II)V
    .registers 7

    #@0
    .line 256
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_11

    #@4
    .line 257
    iget v1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    #@6
    iget v2, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    #@8
    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    #@a
    sub-int/2addr p2, v3

    #@b
    iget v3, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    #@d
    sub-int/2addr p1, v3

    #@e
    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@11
    :cond_11
    return-void
.end method
