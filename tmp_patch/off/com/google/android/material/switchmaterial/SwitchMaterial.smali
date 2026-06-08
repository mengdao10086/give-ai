.class public Lcom/google/android/material/switchmaterial/SwitchMaterial;
.super Landroidx/appcompat/widget/SwitchCompat;
.source "SwitchMaterial.java"


# static fields
.field private static final DEF_STYLE_RES:I

.field private static final ENABLED_CHECKED_STATES:[[I


# instance fields
.field private final elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

.field private materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

.field private materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

.field private useMaterialThemeColors:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    .line 46
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CompoundButton_Switch:I

    #@2
    sput v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->DEF_STYLE_RES:I

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
    sput-object v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

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
    .line 62
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 66
    sget v0, Lcom/google/android/material/R$attr;->switchStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    #@0
    .line 70
    sget v4, Lcom/google/android/material/switchmaterial/SwitchMaterial;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getContext()Landroid/content/Context;

    #@c
    move-result-object v0

    #@d
    .line 74
    new-instance p1, Lcom/google/android/material/elevation/ElevationOverlayProvider;

    #@f
    invoke-direct {p1, v0}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Landroid/content/Context;)V

    #@12
    iput-object p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    #@14
    .line 76
    sget-object v2, Lcom/google/android/material/R$styleable;->SwitchMaterial:[I

    #@16
    const/4 p1, 0x0

    #@17
    new-array v5, p1, [I

    #@19
    move-object v1, p2

    #@1a
    move v3, p3

    #@1b
    .line 77
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@1e
    move-result-object p2

    #@1f
    .line 80
    sget p3, Lcom/google/android/material/R$styleable;->SwitchMaterial_useMaterialThemeColors:I

    #@21
    .line 81
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@24
    move-result p1

    #@25
    iput-boolean p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    #@27
    .line 83
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@2a
    return-void
.end method

.method private getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;
    .registers 8

    #@0
    .line 121
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    #@2
    if-nez v0, :cond_52

    #@4
    .line 122
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    #@6
    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@9
    move-result v0

    #@a
    .line 123
    sget v1, Lcom/google/android/material/R$attr;->colorControlActivated:I

    #@c
    invoke-static {p0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@f
    move-result v1

    #@10
    .line 124
    invoke-virtual {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v2

    #@14
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_switch_thumb_elevation:I

    #@16
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    #@19
    move-result v2

    #@1a
    .line 125
    iget-object v3, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    #@1c
    invoke-virtual {v3}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->isThemeElevationOverlayEnabled()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_27

    #@22
    .line 126
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getParentAbsoluteElevation(Landroid/view/View;)F

    #@25
    move-result v3

    #@26
    add-float/2addr v2, v3

    #@27
    .line 128
    :cond_27
    iget-object v3, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->elevationOverlayProvider:Lcom/google/android/material/elevation/ElevationOverlayProvider;

    #@29
    .line 129
    invoke-virtual {v3, v0, v2}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlayIfNeeded(IF)I

    #@2c
    move-result v2

    #@2d
    .line 131
    sget-object v3, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    #@2f
    array-length v4, v3

    #@30
    new-array v4, v4, [I

    #@32
    const/high16 v5, 0x3f800000    # 1.0f

    #@34
    .line 133
    invoke-static {v0, v1, v5}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@37
    move-result v5

    #@38
    const/4 v6, 0x0

    #@39
    aput v5, v4, v6

    #@3b
    const/4 v5, 0x1

    #@3c
    .line 134
    aput v2, v4, v5

    #@3e
    const v5, 0x3ec28f5c    # 0.38f

    #@41
    .line 136
    invoke-static {v0, v1, v5}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@44
    move-result v0

    #@45
    const/4 v1, 0x2

    #@46
    aput v0, v4, v1

    #@48
    const/4 v0, 0x3

    #@49
    .line 137
    aput v2, v4, v0

    #@4b
    .line 138
    new-instance v0, Landroid/content/res/ColorStateList;

    #@4d
    invoke-direct {v0, v3, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@50
    iput-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    #@52
    .line 141
    :cond_52
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsThumbTintList:Landroid/content/res/ColorStateList;

    #@54
    return-object v0
.end method

.method private getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;
    .registers 8

    #@0
    .line 145
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    #@2
    if-nez v0, :cond_47

    #@4
    .line 146
    sget-object v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->ENABLED_CHECKED_STATES:[[I

    #@6
    array-length v1, v0

    #@7
    new-array v1, v1, [I

    #@9
    .line 147
    sget v2, Lcom/google/android/material/R$attr;->colorSurface:I

    #@b
    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@e
    move-result v2

    #@f
    .line 148
    sget v3, Lcom/google/android/material/R$attr;->colorControlActivated:I

    #@11
    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@14
    move-result v3

    #@15
    .line 149
    sget v4, Lcom/google/android/material/R$attr;->colorOnSurface:I

    #@17
    invoke-static {p0, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@1a
    move-result v4

    #@1b
    const v5, 0x3f0a3d71    # 0.54f

    #@1e
    .line 151
    invoke-static {v2, v3, v5}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@21
    move-result v5

    #@22
    const/4 v6, 0x0

    #@23
    aput v5, v1, v6

    #@25
    const v5, 0x3ea3d70a    # 0.32f

    #@28
    .line 153
    invoke-static {v2, v4, v5}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@2b
    move-result v5

    #@2c
    const/4 v6, 0x1

    #@2d
    aput v5, v1, v6

    #@2f
    const/4 v5, 0x2

    #@30
    const v6, 0x3df5c28f    # 0.12f

    #@33
    .line 155
    invoke-static {v2, v3, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@36
    move-result v3

    #@37
    aput v3, v1, v5

    #@39
    const/4 v3, 0x3

    #@3a
    .line 158
    invoke-static {v2, v4, v6}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@3d
    move-result v2

    #@3e
    aput v2, v1, v3

    #@40
    .line 159
    new-instance v2, Landroid/content/res/ColorStateList;

    #@42
    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@45
    iput-object v2, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    #@47
    .line 162
    :cond_47
    iget-object v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->materialThemeColorsTrackTintList:Landroid/content/res/ColorStateList;

    #@49
    return-object v0
.end method


# virtual methods
.method public isUseMaterialThemeColors()Z
    .registers 2

    #@0
    .line 117
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    #@2
    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 88
    invoke-super {p0}, Landroidx/appcompat/widget/SwitchCompat;->onAttachedToWindow()V

    #@3
    .line 90
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    #@5
    if-eqz v0, :cond_14

    #@7
    invoke-virtual {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getThumbTintList()Landroid/content/res/ColorStateList;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_14

    #@d
    .line 91
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    #@14
    .line 93
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    #@16
    if-eqz v0, :cond_25

    #@18
    invoke-virtual {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getTrackTintList()Landroid/content/res/ColorStateList;

    #@1b
    move-result-object v0

    #@1c
    if-nez v0, :cond_25

    #@1e
    .line 94
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p0, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    #@25
    :cond_25
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .registers 2

    #@0
    .line 105
    iput-boolean p1, p0, Lcom/google/android/material/switchmaterial/SwitchMaterial;->useMaterialThemeColors:Z

    #@2
    if-eqz p1, :cond_13

    #@4
    .line 107
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsThumbTintList()Landroid/content/res/ColorStateList;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    #@b
    .line 108
    invoke-direct {p0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->getMaterialThemeColorsTrackTintList()Landroid/content/res/ColorStateList;

    #@e
    move-result-object p1

    #@f
    invoke-virtual {p0, p1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    #@12
    goto :goto_1a

    #@13
    :cond_13
    const/4 p1, 0x0

    #@14
    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    #@17
    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    #@1a
    :goto_1a
    return-void
.end method
