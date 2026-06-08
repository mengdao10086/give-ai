.class Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;
.super Ljava/lang/Object;
.source "AppCompatCompoundButtonHelper.java"


# instance fields
.field private mButtonTintList:Landroid/content/res/ColorStateList;

.field private mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mHasButtonTint:Z

.field private mHasButtonTintMode:Z

.field private mSkipNextApply:Z

.field private final mView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Landroid/widget/CompoundButton;)V
    .registers 3

    #@0
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 39
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    #@6
    .line 40
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    const/4 v0, 0x0

    #@9
    .line 41
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    #@b
    .line 42
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    #@d
    .line 47
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    #@f
    return-void
.end method


# virtual methods
.method applyButtonTint()V
    .registers 3

    #@0
    .line 127
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    #@2
    invoke-static {v0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_3e

    #@8
    .line 129
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    #@a
    if-nez v1, :cond_10

    #@c
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    #@e
    if-eqz v1, :cond_3e

    #@10
    .line 130
    :cond_10
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v0

    #@14
    .line 131
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v0

    #@18
    .line 132
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    #@1a
    if-eqz v1, :cond_21

    #@1c
    .line 133
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    #@1e
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@21
    .line 135
    :cond_21
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    #@23
    if-eqz v1, :cond_2a

    #@25
    .line 136
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    #@27
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    #@2a
    .line 140
    :cond_2a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_39

    #@30
    .line 141
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    #@32
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@39
    .line 143
    :cond_39
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    #@3b
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3e
    :cond_3e
    return-void
.end method

.method getCompoundPaddingLeft(I)I
    .registers 2

    #@0
    return p1
.end method

.method getSupportButtonTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 102
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 113
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 13

    #@0
    .line 51
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    #@2
    .line 52
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Landroidx/appcompat/R$styleable;->CompoundButton:[I

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@c
    move-result-object v0

    #@d
    .line 54
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    #@f
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    #@12
    move-result-object v4

    #@13
    sget-object v5, Landroidx/appcompat/R$styleable;->CompoundButton:[I

    #@15
    .line 55
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    #@18
    move-result-object v7

    #@19
    const/4 v9, 0x0

    #@1a
    move-object v6, p1

    #@1b
    move v8, p2

    #@1c
    .line 54
    invoke-static/range {v3 .. v9}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@1f
    .line 58
    :try_start_1f
    sget p1, Landroidx/appcompat/R$styleable;->CompoundButton_buttonCompat:I

    #@21
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@24
    move-result p1

    #@25
    if-eqz p1, :cond_3e

    #@27
    .line 59
    sget p1, Landroidx/appcompat/R$styleable;->CompoundButton_buttonCompat:I

    #@29
    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@2c
    move-result p1
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_8e

    #@2d
    if-eqz p1, :cond_3e

    #@2f
    .line 62
    :try_start_2f
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    #@31
    .line 63
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    #@34
    move-result-object v1

    #@35
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@38
    move-result-object p1

    #@39
    .line 62
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_3c} :catch_3e
    .catchall {:try_start_2f .. :try_end_3c} :catchall_8e

    #@3c
    const/4 p1, 0x1

    #@3d
    goto :goto_3f

    #@3e
    :catch_3e
    :cond_3e
    move p1, v2

    #@3f
    :goto_3f
    if-nez p1, :cond_5e

    #@41
    .line 71
    :try_start_41
    sget p1, Landroidx/appcompat/R$styleable;->CompoundButton_android_button:I

    #@43
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@46
    move-result p1

    #@47
    if-eqz p1, :cond_5e

    #@49
    .line 72
    sget p1, Landroidx/appcompat/R$styleable;->CompoundButton_android_button:I

    #@4b
    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@4e
    move-result p1

    #@4f
    if-eqz p1, :cond_5e

    #@51
    .line 75
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    #@53
    .line 76
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    #@56
    move-result-object v1

    #@57
    invoke-static {v1, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@5a
    move-result-object p1

    #@5b
    .line 75
    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5e
    .line 79
    :cond_5e
    sget p1, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTint:I

    #@60
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@63
    move-result p1

    #@64
    if-eqz p1, :cond_71

    #@66
    .line 80
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    #@68
    sget p2, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTint:I

    #@6a
    .line 81
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@6d
    move-result-object p2

    #@6e
    .line 80
    invoke-static {p1, p2}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    #@71
    .line 83
    :cond_71
    sget p1, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    #@73
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@76
    move-result p1

    #@77
    if-eqz p1, :cond_8a

    #@79
    .line 84
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;

    #@7b
    sget p2, Landroidx/appcompat/R$styleable;->CompoundButton_buttonTintMode:I

    #@7d
    const/4 v1, -0x1

    #@7e
    .line 86
    invoke-virtual {v0, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@81
    move-result p2

    #@82
    const/4 v1, 0x0

    #@83
    .line 85
    invoke-static {p2, v1}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@86
    move-result-object p2

    #@87
    .line 84
    invoke-static {p1, p2}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_8a
    .catchall {:try_start_41 .. :try_end_8a} :catchall_8e

    #@8a
    .line 90
    :cond_8a
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@8d
    return-void

    #@8e
    :catchall_8e
    move-exception p1

    #@8f
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@92
    .line 91
    throw p1
.end method

.method onSetButtonDrawable()V
    .registers 2

    #@0
    .line 117
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    .line 118
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    #@7
    return-void

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    .line 122
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z

    #@b
    .line 123
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    #@e
    return-void
.end method

.method setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 95
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;

    #@2
    const/4 p1, 0x1

    #@3
    .line 96
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z

    #@5
    .line 98
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    #@8
    return-void
.end method

.method setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    #@0
    .line 106
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    const/4 p1, 0x1

    #@3
    .line 107
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z

    #@5
    .line 109
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V

    #@8
    return-void
.end method
