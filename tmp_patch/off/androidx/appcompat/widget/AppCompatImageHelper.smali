.class public Landroidx/appcompat/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# instance fields
.field private mImageTint:Landroidx/appcompat/widget/TintInfo;

.field private mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

.field private mLevel:I

.field private mTmpInfo:Landroidx/appcompat/widget/TintInfo;

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 3

    #@0
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 46
    iput v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mLevel:I

    #@6
    .line 49
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@8
    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    #@0
    .line 201
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 202
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    #@6
    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    #@b
    .line 204
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    #@d
    .line 205
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintInfo;->clear()V

    #@10
    .line 207
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@12
    invoke-static {v1}, Landroidx/core/widget/ImageViewCompat;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x1

    #@17
    if-eqz v1, :cond_1d

    #@19
    .line 209
    iput-boolean v2, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    #@1b
    .line 210
    iput-object v1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    #@1d
    .line 212
    :cond_1d
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@1f
    invoke-static {v1}, Landroidx/core/widget/ImageViewCompat;->getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    #@22
    move-result-object v1

    #@23
    if-eqz v1, :cond_29

    #@25
    .line 214
    iput-boolean v2, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    #@27
    .line 215
    iput-object v1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@29
    .line 218
    :cond_29
    iget-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    #@2b
    if-nez v1, :cond_34

    #@2d
    iget-boolean v1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    #@2f
    if-eqz v1, :cond_32

    #@31
    goto :goto_34

    #@32
    :cond_32
    const/4 p1, 0x0

    #@33
    return p1

    #@34
    .line 219
    :cond_34
    :goto_34
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@36
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawableState()[I

    #@39
    move-result-object v1

    #@3a
    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    #@3d
    return v2
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .registers 2

    #@0
    .line 183
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

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


# virtual methods
.method applyImageLevel()V
    .registers 3

    #@0
    .line 238
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_13

    #@8
    .line 239
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@a
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v0

    #@e
    iget v1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mLevel:I

    #@10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    #@13
    :cond_13
    return-void
.end method

.method applySupportImageTint()V
    .registers 4

    #@0
    .line 142
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 144
    invoke-static {v0}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    :cond_b
    if-eqz v0, :cond_35

    #@d
    .line 148
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1a

    #@13
    .line 149
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1a

    #@19
    return-void

    #@1a
    .line 155
    :cond_1a
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    #@1c
    if-eqz v1, :cond_28

    #@1e
    .line 156
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@20
    .line 157
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    #@23
    move-result-object v2

    #@24
    .line 156
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    #@27
    goto :goto_35

    #@28
    .line 158
    :cond_28
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    #@2a
    if-eqz v1, :cond_35

    #@2c
    .line 159
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@2e
    .line 160
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawableState()[I

    #@31
    move-result-object v2

    #@32
    .line 159
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    #@35
    :cond_35
    :goto_35
    return-void
.end method

.method getSupportImageTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 124
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    return-object v0
.end method

.method getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 138
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    return-object v0
.end method

.method hasOverlappingRendering()Z
    .registers 2

    #@0
    .line 104
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    .line 105
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 11

    #@0
    .line 53
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatImageView:[I

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@c
    move-result-object v0

    #@d
    .line 55
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@f
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    #@12
    move-result-object v2

    #@13
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatImageView:[I

    #@15
    .line 56
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    #@18
    move-result-object v5

    #@19
    const/4 v7, 0x0

    #@1a
    move-object v4, p1

    #@1b
    move v6, p2

    #@1c
    .line 55
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@1f
    .line 58
    :try_start_1f
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@21
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@24
    move-result-object p1

    #@25
    const/4 p2, -0x1

    #@26
    if-nez p1, :cond_41

    #@28
    .line 62
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    #@2a
    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@2d
    move-result v1

    #@2e
    if-eq v1, p2, :cond_41

    #@30
    .line 64
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@32
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    #@35
    move-result-object p1

    #@36
    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@39
    move-result-object p1

    #@3a
    if-eqz p1, :cond_41

    #@3c
    .line 66
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@3e
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@41
    :cond_41
    if-eqz p1, :cond_46

    #@43
    .line 72
    invoke-static {p1}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    #@46
    .line 75
    :cond_46
    sget p1, Landroidx/appcompat/R$styleable;->AppCompatImageView_tint:I

    #@48
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@4b
    move-result p1

    #@4c
    if-eqz p1, :cond_59

    #@4e
    .line 76
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@50
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatImageView_tint:I

    #@52
    .line 77
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@55
    move-result-object v1

    #@56
    .line 76
    invoke-static {p1, v1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    #@59
    .line 79
    :cond_59
    sget p1, Landroidx/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    #@5b
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@5e
    move-result p1

    #@5f
    if-eqz p1, :cond_71

    #@61
    .line 80
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@63
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    #@65
    .line 82
    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@68
    move-result p2

    #@69
    const/4 v1, 0x0

    #@6a
    .line 81
    invoke-static {p2, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@6d
    move-result-object p2

    #@6e
    .line 80
    invoke-static {p1, p2}, Landroidx/core/widget/ImageViewCompat;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_71
    .catchall {:try_start_1f .. :try_end_71} :catchall_75

    #@71
    .line 85
    :cond_71
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@74
    return-void

    #@75
    :catchall_75
    move-exception p1

    #@76
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@79
    .line 86
    throw p1
.end method

.method obtainLevelFromDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 231
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    #@3
    move-result p1

    #@4
    iput p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mLevel:I

    #@6
    return-void
.end method

.method public setImageResource(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_17

    #@2
    .line 91
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object p1

    #@c
    if-eqz p1, :cond_11

    #@e
    .line 93
    invoke-static {p1}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    #@11
    .line 95
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@13
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@16
    goto :goto_1d

    #@17
    .line 97
    :cond_17
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    #@19
    const/4 v0, 0x0

    #@1a
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1d
    .line 100
    :goto_1d
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    #@20
    return-void
.end method

.method setInternalImageTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    if-eqz p1, :cond_17

    #@2
    .line 167
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    #@4
    if-nez v0, :cond_d

    #@6
    .line 168
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    #@8
    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    #@b
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    #@d
    .line 170
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    #@f
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    #@11
    .line 171
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    #@13
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    #@16
    goto :goto_1a

    #@17
    :cond_17
    const/4 p1, 0x0

    #@18
    .line 173
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    #@1a
    .line 175
    :goto_1a
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    #@1d
    return-void
.end method

.method setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 115
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 116
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    #@6
    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    #@b
    .line 118
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    #@d
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    #@f
    .line 119
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    #@11
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    #@14
    .line 120
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    #@17
    return-void
.end method

.method setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 128
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 129
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    #@6
    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    #@b
    .line 131
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    #@d
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@f
    .line 132
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    #@11
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    #@14
    .line 134
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    #@17
    return-void
.end method
