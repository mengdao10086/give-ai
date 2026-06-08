.class Landroidx/appcompat/widget/AppCompatSeekBarHelper;
.super Landroidx/appcompat/widget/AppCompatProgressBarHelper;
.source "AppCompatSeekBarHelper.java"


# instance fields
.field private mHasTickMarkTint:Z

.field private mHasTickMarkTintMode:Z

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field private mTickMarkTintList:Landroid/content/res/ColorStateList;

.field private mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private final mView:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;)V
    .registers 3

    #@0
    .line 42
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;-><init>(Landroid/widget/ProgressBar;)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 36
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    #@6
    .line 37
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    const/4 v0, 0x0

    #@9
    .line 38
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    #@b
    .line 39
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    #@d
    .line 43
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@f
    return-void
.end method

.method private applyTickMarkTint()V
    .registers 3

    #@0
    .line 128
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_3d

    #@4
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    #@6
    if-nez v1, :cond_c

    #@8
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    #@a
    if-eqz v1, :cond_3d

    #@c
    .line 129
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@16
    .line 131
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    #@18
    if-eqz v1, :cond_1f

    #@1a
    .line 132
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    #@1c
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@1f
    .line 135
    :cond_1f
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    #@21
    if-eqz v0, :cond_2a

    #@23
    .line 136
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@25
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@27
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    #@2a
    .line 141
    :cond_2a
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@2c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_3d

    #@32
    .line 142
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@34
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@36
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getDrawableState()[I

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@3d
    :cond_3d
    return-void
.end method


# virtual methods
.method drawTickMarks(Landroid/graphics/Canvas;)V
    .registers 8

    #@0
    .line 165
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_6a

    #@4
    .line 166
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@6
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x1

    #@b
    if-le v0, v1, :cond_6a

    #@d
    .line 168
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@f
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@12
    move-result v2

    #@13
    .line 169
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@15
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@18
    move-result v3

    #@19
    if-ltz v2, :cond_1e

    #@1b
    .line 170
    div-int/lit8 v2, v2, 0x2

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    move v2, v1

    #@1f
    :goto_1f
    if-ltz v3, :cond_23

    #@21
    .line 171
    div-int/lit8 v1, v3, 0x2

    #@23
    .line 172
    :cond_23
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@25
    neg-int v4, v2

    #@26
    neg-int v5, v1

    #@27
    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2a
    .line 174
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@2c
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getWidth()I

    #@2f
    move-result v1

    #@30
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@32
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    #@35
    move-result v2

    #@36
    sub-int/2addr v1, v2

    #@37
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@39
    .line 175
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingRight()I

    #@3c
    move-result v2

    #@3d
    sub-int/2addr v1, v2

    #@3e
    int-to-float v1, v1

    #@3f
    int-to-float v2, v0

    #@40
    div-float/2addr v1, v2

    #@41
    .line 176
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@44
    move-result v2

    #@45
    .line 177
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@47
    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    #@4a
    move-result v3

    #@4b
    int-to-float v3, v3

    #@4c
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@4e
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getHeight()I

    #@51
    move-result v4

    #@52
    div-int/lit8 v4, v4, 0x2

    #@54
    int-to-float v4, v4

    #@55
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@58
    const/4 v3, 0x0

    #@59
    :goto_59
    if-gt v3, v0, :cond_67

    #@5b
    .line 179
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@5d
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@60
    const/4 v4, 0x0

    #@61
    .line 180
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@64
    add-int/lit8 v3, v3, 0x1

    #@66
    goto :goto_59

    #@67
    .line 182
    :cond_67
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@6a
    :cond_6a
    return-void
.end method

.method drawableStateChanged()V
    .registers 3

    #@0
    .line 154
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_1b

    #@4
    .line 155
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1b

    #@a
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@c
    .line 156
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getDrawableState()[I

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1b

    #@16
    .line 157
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@18
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1b
    :cond_1b
    return-void
.end method

.method getTickMark()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 100
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method getTickMarkTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 112
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 124
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method jumpDrawablesToCurrentState()V
    .registers 2

    #@0
    .line 148
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 149
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@7
    :cond_7
    return-void
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 11

    #@0
    .line 48
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    #@3
    .line 50
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@5
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    #@8
    move-result-object v0

    #@9
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatSeekBar:[I

    #@b
    const/4 v2, 0x0

    #@c
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@f
    move-result-object v0

    #@10
    .line 52
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@12
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    #@15
    move-result-object v2

    #@16
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatSeekBar:[I

    #@18
    .line 53
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    #@1b
    move-result-object v5

    #@1c
    const/4 v7, 0x0

    #@1d
    move-object v4, p1

    #@1e
    move v6, p2

    #@1f
    .line 52
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@22
    .line 55
    sget p1, Landroidx/appcompat/R$styleable;->AppCompatSeekBar_android_thumb:I

    #@24
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    #@27
    move-result-object p1

    #@28
    if-eqz p1, :cond_2f

    #@2a
    .line 57
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@2c
    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    #@2f
    .line 60
    :cond_2f
    sget p1, Landroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMark:I

    #@31
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@34
    move-result-object p1

    #@35
    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    #@38
    .line 63
    sget p1, Landroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    #@3a
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@3d
    move-result p1

    #@3e
    const/4 p2, 0x1

    #@3f
    if-eqz p1, :cond_52

    #@41
    .line 64
    sget p1, Landroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I

    #@43
    const/4 v1, -0x1

    #@44
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@47
    move-result p1

    #@48
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4a
    invoke-static {p1, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@4d
    move-result-object p1

    #@4e
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@50
    .line 66
    iput-boolean p2, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    #@52
    .line 69
    :cond_52
    sget p1, Landroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    #@54
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@57
    move-result p1

    #@58
    if-eqz p1, :cond_64

    #@5a
    .line 70
    sget p1, Landroidx/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I

    #@5c
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@5f
    move-result-object p1

    #@60
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    #@62
    .line 71
    iput-boolean p2, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    #@64
    .line 74
    :cond_64
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@67
    .line 76
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    #@6a
    return-void
.end method

.method setTickMark(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 80
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_8

    #@4
    const/4 v1, 0x0

    #@5
    .line 81
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@8
    .line 84
    :cond_8
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    #@a
    if-eqz p1, :cond_2c

    #@c
    .line 87
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@e
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@11
    .line 88
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@13
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@16
    move-result v0

    #@17
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    #@1a
    .line 89
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_29

    #@20
    .line 90
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@22
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getDrawableState()[I

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@29
    .line 92
    :cond_29
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    #@2c
    .line 95
    :cond_2c
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    #@2e
    invoke-virtual {p1}, Landroid/widget/SeekBar;->invalidate()V

    #@31
    return-void
.end method

.method setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 104
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    #@2
    const/4 p1, 0x1

    #@3
    .line 105
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    #@5
    .line 107
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    #@8
    return-void
.end method

.method setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    #@0
    .line 116
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    const/4 p1, 0x1

    #@3
    .line 117
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    #@5
    .line 119
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    #@8
    return-void
.end method
