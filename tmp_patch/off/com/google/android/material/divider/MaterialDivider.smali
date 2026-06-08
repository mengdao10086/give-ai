.class public Lcom/google/android/material/divider/MaterialDivider;
.super Landroid/view/View;
.source "MaterialDivider.java"


# static fields
.field private static final DEF_STYLE_RES:I


# instance fields
.field private color:I

.field private final dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private insetEnd:I

.field private insetStart:I

.field private thickness:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 50
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialDivider:I

    #@2
    sput v0, Lcom/google/android/material/divider/MaterialDivider;->DEF_STYLE_RES:I

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/divider/MaterialDivider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 63
    sget v0, Lcom/google/android/material/R$attr;->materialDividerStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/divider/MaterialDivider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    #@0
    .line 67
    sget v4, Lcom/google/android/material/divider/MaterialDivider;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    .line 69
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    #@c
    move-result-object p1

    #@d
    .line 70
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@f
    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    #@12
    iput-object v0, p0, Lcom/google/android/material/divider/MaterialDivider;->dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@14
    .line 72
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialDivider:[I

    #@16
    const/4 v6, 0x0

    #@17
    new-array v5, v6, [I

    #@19
    move-object v0, p1

    #@1a
    move-object v1, p2

    #@1b
    move v3, p3

    #@1c
    .line 73
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@1f
    move-result-object p2

    #@20
    .line 75
    sget p3, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerThickness:I

    #@22
    .line 78
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getResources()Landroid/content/res/Resources;

    #@25
    move-result-object v0

    #@26
    sget v1, Lcom/google/android/material/R$dimen;->material_divider_thickness:I

    #@28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2b
    move-result v0

    #@2c
    .line 76
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@2f
    move-result p3

    #@30
    iput p3, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    #@32
    .line 79
    sget p3, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerInsetStart:I

    #@34
    .line 80
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@37
    move-result p3

    #@38
    iput p3, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    #@3a
    .line 81
    sget p3, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerInsetEnd:I

    #@3c
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@3f
    move-result p3

    #@40
    iput p3, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    #@42
    .line 82
    sget p3, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerColor:I

    #@44
    .line 83
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@47
    move-result-object p1

    #@48
    .line 85
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@4b
    move-result p1

    #@4c
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDivider;->setDividerColor(I)V

    #@4f
    .line 87
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@52
    return-void
.end method


# virtual methods
.method public getDividerColor()I
    .registers 2

    #@0
    .line 251
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->color:I

    #@2
    return v0
.end method

.method public getDividerInsetEnd()I
    .registers 2

    #@0
    .line 215
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    #@2
    return v0
.end method

.method public getDividerInsetStart()I
    .registers 2

    #@0
    .line 182
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    #@2
    return v0
.end method

.method public getDividerThickness()I
    .registers 2

    #@0
    .line 149
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    #@2
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    #@0
    .line 106
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 108
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x1

    #@9
    if-ne v0, v2, :cond_c

    #@b
    goto :goto_d

    #@c
    :cond_c
    move v2, v1

    #@d
    :goto_d
    if-eqz v2, :cond_12

    #@f
    .line 109
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    #@11
    goto :goto_14

    #@12
    :cond_12
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    #@14
    :goto_14
    if-eqz v2, :cond_1d

    #@16
    .line 110
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getWidth()I

    #@19
    move-result v2

    #@1a
    iget v3, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    #@1c
    goto :goto_23

    #@1d
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getWidth()I

    #@20
    move-result v2

    #@21
    iget v3, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    #@23
    :goto_23
    sub-int/2addr v2, v3

    #@24
    .line 111
    iget-object v3, p0, Lcom/google/android/material/divider/MaterialDivider;->dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@26
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getBottom()I

    #@29
    move-result v4

    #@2a
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getTop()I

    #@2d
    move-result v5

    #@2e
    sub-int/2addr v4, v5

    #@2f
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    #@32
    .line 112
    iget-object v0, p0, Lcom/google/android/material/divider/MaterialDivider;->dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@34
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    #@37
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    #@0
    .line 92
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    #@3
    .line 94
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@6
    move-result p1

    #@7
    .line 95
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getMeasuredHeight()I

    #@a
    move-result p2

    #@b
    const/high16 v0, -0x80000000

    #@d
    if-eq p1, v0, :cond_11

    #@f
    if-nez p1, :cond_1f

    #@11
    .line 97
    :cond_11
    iget p1, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    #@13
    if-lez p1, :cond_18

    #@15
    if-eq p2, p1, :cond_18

    #@17
    move p2, p1

    #@18
    .line 100
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getMeasuredWidth()I

    #@1b
    move-result p1

    #@1c
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/divider/MaterialDivider;->setMeasuredDimension(II)V

    #@1f
    :cond_1f
    return-void
.end method

.method public setDividerColor(I)V
    .registers 3

    #@0
    .line 226
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->color:I

    #@2
    if-eq v0, p1, :cond_12

    #@4
    .line 227
    iput p1, p0, Lcom/google/android/material/divider/MaterialDivider;->color:I

    #@6
    .line 228
    iget-object v0, p0, Lcom/google/android/material/divider/MaterialDivider;->dividerDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@8
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@f
    .line 229
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->invalidate()V

    #@12
    :cond_12
    return-void
.end method

.method public setDividerColorResource(I)V
    .registers 3

    #@0
    .line 241
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDivider;->setDividerColor(I)V

    #@b
    return-void
.end method

.method public setDividerInsetEnd(I)V
    .registers 2

    #@0
    .line 193
    iput p1, p0, Lcom/google/android/material/divider/MaterialDivider;->insetEnd:I

    #@2
    return-void
.end method

.method public setDividerInsetEndResource(I)V
    .registers 3

    #@0
    .line 204
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDivider;->setDividerInsetEnd(I)V

    #@f
    return-void
.end method

.method public setDividerInsetStart(I)V
    .registers 2

    #@0
    .line 160
    iput p1, p0, Lcom/google/android/material/divider/MaterialDivider;->insetStart:I

    #@2
    return-void
.end method

.method public setDividerInsetStartResource(I)V
    .registers 3

    #@0
    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDivider;->setDividerInsetStart(I)V

    #@f
    return-void
.end method

.method public setDividerThickness(I)V
    .registers 3

    #@0
    .line 124
    iget v0, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 125
    iput p1, p0, Lcom/google/android/material/divider/MaterialDivider;->thickness:I

    #@6
    .line 126
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->requestLayout()V

    #@9
    :cond_9
    return-void
.end method

.method public setDividerThicknessResource(I)V
    .registers 3

    #@0
    .line 139
    invoke-virtual {p0}, Lcom/google/android/material/divider/MaterialDivider;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDivider;->setDividerThickness(I)V

    #@f
    return-void
.end method
