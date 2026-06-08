.class public Lcom/google/android/material/radiobutton/MaterialRadioButton;
.super Landroidx/appcompat/widget/AppCompatRadioButton;
.source "MaterialRadioButton.java"


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final ENABLED_CHECKED_STATES:[[I


# instance fields
.field private materialThemeColorsTintList:Landroid/content/res/ColorStateList;

.field private useMaterialThemeColors:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    .line 45
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CompoundButton_RadioButton:I

    #@2
    sput v0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->DEF_STYLE_RES:I

    #@4
    const/4 v0, 0x4

    #@5
    new-array v0, v0, [[I

    #@7
    const/4 v1, 0x2

    #@8
    new-array v2, v1, [I

    #@a
    .line 47
    fill-array-data v2, :array_2a

    #@d
    const/4 v3, 0x0

    #@e
    aput-object v2, v0, v3

    #@10
    new-array v2, v1, [I

    #@12
    fill-array-data v2, :array_32

    #@15
    const/4 v3, 0x1

    #@16
    aput-object v2, v0, v3

    #@18
    new-array v2, v1, [I

    #@1a
    fill-array-data v2, :array_3a

    #@1d
    aput-object v2, v0, v1

    #@1f
    new-array v1, v1, [I

    #@21
    fill-array-data v1, :array_42

    #@24
    const/4 v2, 0x3

    #@25
    aput-object v1, v0, v2

    #@27
    sput-object v0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->ENABLED_CHECKED_STATES:[[I

    #@29
    return-void

    #@2a
    :array_2a
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    #@32
    :array_32
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    #@3a
    :array_3a
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    #@42
    :array_42
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 62
    sget v0, Lcom/google/android/material/R$attr;->radioButtonStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    #@0
    .line 67
    sget v4, Lcom/google/android/material/radiobutton/MaterialRadioButton;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    .line 69
    invoke-virtual {p0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->getContext()Landroid/content/Context;

    #@c
    move-result-object p1

    #@d
    .line 71
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialRadioButton:[I

    #@f
    const/4 v6, 0x0

    #@10
    new-array v5, v6, [I

    #@12
    move-object v0, p1

    #@13
    move-object v1, p2

    #@14
    move v3, p3

    #@15
    .line 72
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@18
    move-result-object p2

    #@19
    .line 77
    sget p3, Lcom/google/android/material/R$styleable;->MaterialRadioButton_buttonTint:I

    #@1b
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1e
    move-result p3

    #@1f
    if-eqz p3, :cond_2a

    #@21
    .line 78
    sget p3, Lcom/google/android/material/R$styleable;->MaterialRadioButton_buttonTint:I

    #@23
    .line 80
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@26
    move-result-object p1

    #@27
    .line 78
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    #@2a
    .line 84
    :cond_2a
    sget p1, Lcom/google/android/material/R$styleable;->MaterialRadioButton_useMaterialThemeColors:I

    #@2c
    .line 85
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2f
    move-result p1

    #@30
    iput-boolean p1, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->useMaterialThemeColors:Z

    #@32
    .line 87
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@35
    return-void
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .registers 8

    #@0
    .line 119
    iget-object v0, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    #@2
    if-nez v0, :cond_46

    #@4
    .line 120
    sget v0, Lcom/google/android/material/R$attr;->colorControlActivated:I

    #@6
    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@9
    move-result v0

    #@a
    .line 121
    sget v1, Lcom/google/android/material/R$attr;->colorOnSurface:I

    #@c
    invoke-static {p0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@f
    move-result v1

    #@10
    .line 122
    sget v2, Lcom/google/android/material/R$attr;->colorSurface:I

    #@12
    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@15
    move-result v2

    #@16
    .line 124
    sget-object v3, Lcom/google/android/material/radiobutton/MaterialRadioButton;->ENABLED_CHECKED_STATES:[[I

    #@18
    array-length v4, v3

    #@19
    new-array v4, v4, [I

    #@1b
    const/high16 v5, 0x3f800000    # 1.0f

    #@1d
    .line 126
    invoke-static {v2, v0, v5}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@20
    move-result v0

    #@21
    const/4 v5, 0x0

    #@22
    aput v0, v4, v5

    #@24
    const v0, 0x3f0a3d71    # 0.54f

    #@27
    .line 128
    invoke-static {v2, v1, v0}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@2a
    move-result v0

    #@2b
    const/4 v5, 0x1

    #@2c
    aput v0, v4, v5

    #@2e
    const/4 v0, 0x2

    #@2f
    const v5, 0x3ec28f5c    # 0.38f

    #@32
    .line 130
    invoke-static {v2, v1, v5}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@35
    move-result v6

    #@36
    aput v6, v4, v0

    #@38
    const/4 v0, 0x3

    #@39
    .line 132
    invoke-static {v2, v1, v5}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@3c
    move-result v1

    #@3d
    aput v1, v4, v0

    #@3f
    .line 133
    new-instance v0, Landroid/content/res/ColorStateList;

    #@41
    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@44
    iput-object v0, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    #@46
    .line 136
    :cond_46
    iget-object v0, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    #@48
    return-object v0
.end method


# virtual methods
.method public isUseMaterialThemeColors()Z
    .registers 2

    #@0
    .line 115
    iget-boolean v0, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->useMaterialThemeColors:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 92
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatRadioButton;->onAttachedToWindow()V

    #@3
    .line 94
    iget-boolean v0, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->useMaterialThemeColors:Z

    #@5
    if-eqz v0, :cond_11

    #@7
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_11

    #@d
    const/4 v0, 0x1

    #@e
    .line 95
    invoke-virtual {p0, v0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->setUseMaterialThemeColors(Z)V

    #@11
    :cond_11
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .registers 2

    #@0
    .line 105
    iput-boolean p1, p0, Lcom/google/android/material/radiobutton/MaterialRadioButton;->useMaterialThemeColors:Z

    #@2
    if-eqz p1, :cond_c

    #@4
    .line 107
    invoke-direct {p0}, Lcom/google/android/material/radiobutton/MaterialRadioButton;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    #@7
    move-result-object p1

    #@8
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    #@b
    goto :goto_10

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    .line 109
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    #@10
    :goto_10
    return-void
.end method
