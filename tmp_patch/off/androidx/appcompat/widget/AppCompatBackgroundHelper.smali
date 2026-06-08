.class Landroidx/appcompat/widget/AppCompatBackgroundHelper;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field private mBackgroundResId:I

.field private mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

.field private final mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

.field private mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

.field private mTmpInfo:Landroidx/appcompat/widget/TintInfo;

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    #@0
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 37
    iput v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    #@6
    .line 44
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    #@8
    .line 45
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    #@b
    move-result-object p1

    #@c
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

    #@e
    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    #@0
    .line 178
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 179
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    #@6
    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    #@b
    .line 181
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    #@d
    .line 182
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintInfo;->clear()V

    #@10
    .line 184
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    #@12
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    #@15
    move-result-object v1

    #@16
    const/4 v2, 0x1

    #@17
    if-eqz v1, :cond_1d

    #@19
    .line 186
    iput-boolean v2, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    #@1b
    .line 187
    iput-object v1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    #@1d
    .line 189
    :cond_1d
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    #@1f
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    #@22
    move-result-object v1

    #@23
    if-eqz v1, :cond_29

    #@25
    .line 191
    iput-boolean v2, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    #@27
    .line 192
    iput-object v1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@29
    .line 195
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
    .line 196
    :cond_34
    :goto_34
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    #@36
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

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
    .line 160
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

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
.method applySupportBackgroundTint()V
    .registers 4

    #@0
    .line 123
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_30

    #@8
    .line 125
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_15

    #@e
    .line 126
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_15

    #@14
    return-void

    #@15
    .line 132
    :cond_15
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    #@17
    if-eqz v1, :cond_23

    #@19
    .line 133
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    #@1b
    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    #@1e
    move-result-object v2

    #@1f
    .line 133
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    #@22
    goto :goto_30

    #@23
    .line 135
    :cond_23
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    #@25
    if-eqz v1, :cond_30

    #@27
    .line 136
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    #@29
    .line 137
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    #@2c
    move-result-object v2

    #@2d
    .line 136
    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    #@30
    :cond_30
    :goto_30
    return-void
.end method

.method getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 105
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

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

.method getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 119
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

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

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 11

    #@0
    .line 49
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper:[I

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@c
    move-result-object v0

    #@d
    .line 51
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    #@f
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@12
    move-result-object v2

    #@13
    sget-object v3, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper:[I

    #@15
    .line 52
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
    .line 51
    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@1f
    .line 55
    :try_start_1f
    sget p1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    #@21
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@24
    move-result p1

    #@25
    const/4 p2, -0x1

    #@26
    if-eqz p1, :cond_43

    #@28
    .line 56
    sget p1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    #@2a
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@2d
    move-result p1

    #@2e
    iput p1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    #@30
    .line 58
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

    #@32
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    #@34
    .line 59
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@37
    move-result-object v1

    #@38
    iget v2, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    #@3a
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@3d
    move-result-object p1

    #@3e
    if-eqz p1, :cond_43

    #@40
    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    #@43
    .line 64
    :cond_43
    sget p1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    #@45
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@48
    move-result p1

    #@49
    if-eqz p1, :cond_56

    #@4b
    .line 65
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    #@4d
    sget v1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    #@4f
    .line 66
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@52
    move-result-object v1

    #@53
    .line 65
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    #@56
    .line 68
    :cond_56
    sget p1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    #@58
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@5b
    move-result p1

    #@5c
    if-eqz p1, :cond_6e

    #@5e
    .line 69
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    #@60
    sget v1, Landroidx/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    #@62
    .line 71
    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@65
    move-result p2

    #@66
    const/4 v1, 0x0

    #@67
    .line 70
    invoke-static {p2, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@6a
    move-result-object p2

    #@6b
    .line 69
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_6e
    .catchall {:try_start_1f .. :try_end_6e} :catchall_72

    #@6e
    .line 75
    :cond_6e
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@71
    return-void

    #@72
    :catchall_72
    move-exception p1

    #@73
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@76
    .line 76
    throw p1
.end method

.method onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    const/4 p1, -0x1

    #@1
    .line 89
    iput p1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    #@3
    const/4 p1, 0x0

    #@4
    .line 91
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    #@7
    .line 92
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    #@a
    return-void
.end method

.method onSetBackgroundResource(I)V
    .registers 4

    #@0
    .line 80
    iput p1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    #@2
    .line 82
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroidx/appcompat/widget/AppCompatDrawableManager;

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 83
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    #@8
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@f
    move-result-object p1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    .line 82
    :goto_12
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    #@15
    .line 85
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    #@18
    return-void
.end method

.method setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    if-eqz p1, :cond_17

    #@2
    .line 144
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    #@4
    if-nez v0, :cond_d

    #@6
    .line 145
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    #@8
    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    #@b
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    #@d
    .line 147
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    #@f
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    #@11
    .line 148
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

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
    .line 150
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    #@1a
    .line 152
    :goto_1a
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    #@1d
    return-void
.end method

.method setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 96
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 97
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    #@6
    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    #@b
    .line 99
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    #@d
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    #@f
    .line 100
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    #@11
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    #@14
    .line 101
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    #@17
    return-void
.end method

.method setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 109
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 110
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    #@6
    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    #@b
    .line 112
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    #@d
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@f
    .line 113
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroidx/appcompat/widget/TintInfo;

    #@11
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    #@14
    .line 115
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    #@17
    return-void
.end method
