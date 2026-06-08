.class public Lcom/google/android/material/checkbox/MaterialCheckBox;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "MaterialCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;,
        Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;,
        Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;,
        Lcom/google/android/material/checkbox/MaterialCheckBox$CheckedState;
    }
.end annotation


# static fields
.field private static final CHECKBOX_STATES:[[I

.field private static final DEF_STYLE_RES:I

.field private static final ERROR_STATE_SET:[I

.field private static final FRAMEWORK_BUTTON_DRAWABLE_RES_ID:I

.field private static final INDETERMINATE_STATE_SET:[I

.field public static final STATE_CHECKED:I = 0x1

.field public static final STATE_INDETERMINATE:I = 0x2

.field public static final STATE_UNCHECKED:I


# instance fields
.field private broadcasting:Z

.field private buttonDrawable:Landroid/graphics/drawable/Drawable;

.field private buttonIconDrawable:Landroid/graphics/drawable/Drawable;

.field buttonIconTintList:Landroid/content/res/ColorStateList;

.field private buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field buttonTintList:Landroid/content/res/ColorStateList;

.field private centerIfNoTextEnabled:Z

.field private checkedState:I

.field private currentStateChecked:[I

.field private customStateDescription:Ljava/lang/CharSequence;

.field private errorAccessibilityLabel:Ljava/lang/CharSequence;

.field private errorShown:Z

.field private materialThemeColorsTintList:Landroid/content/res/ColorStateList;

.field private onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onErrorChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

.field private final transitionToUncheckedCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private useMaterialThemeColors:Z

.field private usingMaterialButtonDrawable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    #@0
    .line 83
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CompoundButton_CheckBox:I

    #@2
    sput v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->DEF_STYLE_RES:I

    #@4
    const/4 v0, 0x1

    #@5
    new-array v1, v0, [I

    #@7
    .line 121
    sget v2, Lcom/google/android/material/R$attr;->state_indeterminate:I

    #@9
    const/4 v3, 0x0

    #@a
    aput v2, v1, v3

    #@c
    sput-object v1, Lcom/google/android/material/checkbox/MaterialCheckBox;->INDETERMINATE_STATE_SET:[I

    #@e
    new-array v1, v0, [I

    #@10
    .line 122
    sget v2, Lcom/google/android/material/R$attr;->state_error:I

    #@12
    aput v2, v1, v3

    #@14
    sput-object v1, Lcom/google/android/material/checkbox/MaterialCheckBox;->ERROR_STATE_SET:[I

    #@16
    const/4 v1, 0x5

    #@17
    new-array v1, v1, [[I

    #@19
    const/4 v2, 0x2

    #@1a
    new-array v4, v2, [I

    #@1c
    const v5, 0x101009e

    #@1f
    aput v5, v4, v3

    #@21
    .line 123
    sget v5, Lcom/google/android/material/R$attr;->state_error:I

    #@23
    aput v5, v4, v0

    #@25
    aput-object v4, v1, v3

    #@27
    new-array v3, v2, [I

    #@29
    fill-array-data v3, :array_58

    #@2c
    aput-object v3, v1, v0

    #@2e
    new-array v0, v2, [I

    #@30
    fill-array-data v0, :array_60

    #@33
    aput-object v0, v1, v2

    #@35
    new-array v0, v2, [I

    #@37
    fill-array-data v0, :array_68

    #@3a
    const/4 v3, 0x3

    #@3b
    aput-object v0, v1, v3

    #@3d
    new-array v0, v2, [I

    #@3f
    fill-array-data v0, :array_70

    #@42
    const/4 v2, 0x4

    #@43
    aput-object v0, v1, v2

    #@45
    sput-object v1, Lcom/google/android/material/checkbox/MaterialCheckBox;->CHECKBOX_STATES:[[I

    #@47
    .line 134
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@4a
    move-result-object v0

    #@4b
    const-string v1, "drawable"

    #@4d
    const-string v2, "android"

    #@4f
    const-string v3, "btn_check_material_anim"

    #@51
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@54
    move-result v0

    #@55
    sput v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->FRAMEWORK_BUTTON_DRAWABLE_RES_ID:I

    #@57
    return-void

    #@58
    :array_58
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    #@60
    :array_60
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    #@68
    :array_68
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    #@70
    :array_70
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
    .line 223
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 227
    sget v0, Lcom/google/android/material/R$attr;->checkboxStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    #@0
    .line 231
    sget v4, Lcom/google/android/material/checkbox/MaterialCheckBox;->DEF_STYLE_RES:I

    #@2
    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@9
    .line 136
    new-instance p1, Ljava/util/LinkedHashSet;

    #@b
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    #@e
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    #@10
    .line 138
    new-instance p1, Ljava/util/LinkedHashSet;

    #@12
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    #@15
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    #@17
    .line 166
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    #@1a
    move-result-object p1

    #@1b
    sget v0, Lcom/google/android/material/R$drawable;->mtrl_checkbox_button_checked_unchecked:I

    #@1d
    .line 165
    invoke-static {p1, v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->create(Landroid/content/Context;I)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    #@20
    move-result-object p1

    #@21
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    #@23
    .line 167
    new-instance p1, Lcom/google/android/material/checkbox/MaterialCheckBox$1;

    #@25
    invoke-direct {p1, p0}, Lcom/google/android/material/checkbox/MaterialCheckBox$1;-><init>(Lcom/google/android/material/checkbox/MaterialCheckBox;)V

    #@28
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUncheckedCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@2a
    .line 233
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    #@2d
    move-result-object p1

    #@2e
    .line 235
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    #@31
    move-result-object v0

    #@32
    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    #@34
    .line 236
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getSuperButtonTintList()Landroid/content/res/ColorStateList;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    #@3a
    const/4 v6, 0x0

    #@3b
    .line 238
    invoke-interface {p0, v6}, Landroidx/core/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    #@3e
    .line 240
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialCheckBox:[I

    #@40
    const/4 v7, 0x0

    #@41
    new-array v5, v7, [I

    #@43
    move-object v0, p1

    #@44
    move-object v1, p2

    #@45
    move v3, p3

    #@46
    .line 241
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;

    #@49
    move-result-object p2

    #@4a
    .line 244
    sget p3, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonIcon:I

    #@4c
    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@4f
    move-result-object p3

    #@50
    iput-object p3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    #@52
    .line 246
    iget-object p3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    #@54
    const/4 v0, 0x1

    #@55
    if-eqz p3, :cond_7c

    #@57
    .line 247
    invoke-static {p1}, Lcom/google/android/material/internal/ThemeEnforcement;->isMaterial3Theme(Landroid/content/Context;)Z

    #@5a
    move-result p3

    #@5b
    if-eqz p3, :cond_7c

    #@5d
    .line 248
    invoke-direct {p0, p2}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isButtonDrawableLegacy(Landroidx/appcompat/widget/TintTypedArray;)Z

    #@60
    move-result p3

    #@61
    if-eqz p3, :cond_7c

    #@63
    .line 249
    invoke-super {p0, v6}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    #@66
    .line 250
    sget p3, Lcom/google/android/material/R$drawable;->mtrl_checkbox_button:I

    #@68
    invoke-static {p1, p3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@6b
    move-result-object p3

    #@6c
    iput-object p3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    #@6e
    .line 251
    iput-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->usingMaterialButtonDrawable:Z

    #@70
    .line 252
    iget-object p3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    #@72
    if-nez p3, :cond_7c

    #@74
    .line 253
    sget p3, Lcom/google/android/material/R$drawable;->mtrl_checkbox_button_icon:I

    #@76
    .line 254
    invoke-static {p1, p3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@79
    move-result-object p3

    #@7a
    iput-object p3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    #@7c
    .line 257
    :cond_7c
    sget p3, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonIconTint:I

    #@7e
    .line 258
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;I)Landroid/content/res/ColorStateList;

    #@81
    move-result-object p1

    #@82
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    #@84
    .line 260
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonIconTintMode:I

    #@86
    const/4 p3, -0x1

    #@87
    .line 262
    invoke-virtual {p2, p1, p3}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@8a
    move-result p1

    #@8b
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@8d
    .line 261
    invoke-static {p1, p3}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@90
    move-result-object p1

    #@91
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@93
    .line 263
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_useMaterialThemeColors:I

    #@95
    .line 264
    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@98
    move-result p1

    #@99
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    #@9b
    .line 265
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_centerIfNoTextEnabled:I

    #@9d
    .line 266
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@a0
    move-result p1

    #@a1
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    #@a3
    .line 267
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_errorShown:I

    #@a5
    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    #@a8
    move-result p1

    #@a9
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    #@ab
    .line 268
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_errorAccessibilityLabel:I

    #@ad
    .line 269
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    #@b0
    move-result-object p1

    #@b1
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    #@b3
    .line 270
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_checkedState:I

    #@b5
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    #@b8
    move-result p1

    #@b9
    if-eqz p1, :cond_c4

    #@bb
    .line 271
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_checkedState:I

    #@bd
    .line 272
    invoke-virtual {p2, p1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    #@c0
    move-result p1

    #@c1
    .line 271
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setCheckedState(I)V

    #@c4
    .line 275
    :cond_c4
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@c7
    .line 277
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    #@ca
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/checkbox/MaterialCheckBox;)[I
    .registers 1

    #@0
    .line 81
    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->currentStateChecked:[I

    #@2
    return-object p0
.end method

.method private getButtonStateDescription()Ljava/lang/String;
    .registers 3

    #@0
    .line 811
    iget v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_10

    #@5
    .line 812
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v0

    #@9
    sget v1, Lcom/google/android/material/R$string;->mtrl_checkbox_state_description_checked:I

    #@b
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    :cond_10
    if-nez v0, :cond_1d

    #@12
    .line 814
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getResources()Landroid/content/res/Resources;

    #@15
    move-result-object v0

    #@16
    sget v1, Lcom/google/android/material/R$string;->mtrl_checkbox_state_description_unchecked:I

    #@18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0

    #@1d
    .line 816
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getResources()Landroid/content/res/Resources;

    #@20
    move-result-object v0

    #@21
    sget v1, Lcom/google/android/material/R$string;->mtrl_checkbox_state_description_indeterminate:I

    #@23
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .registers 9

    #@0
    .line 844
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    #@2
    if-nez v0, :cond_53

    #@4
    .line 845
    sget-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->CHECKBOX_STATES:[[I

    #@6
    array-length v1, v0

    #@7
    new-array v1, v1, [I

    #@9
    .line 846
    sget v2, Lcom/google/android/material/R$attr;->colorControlActivated:I

    #@b
    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@e
    move-result v2

    #@f
    .line 847
    sget v3, Lcom/google/android/material/R$attr;->colorError:I

    #@11
    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@14
    move-result v3

    #@15
    .line 848
    sget v4, Lcom/google/android/material/R$attr;->colorSurface:I

    #@17
    invoke-static {p0, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@1a
    move-result v4

    #@1b
    .line 849
    sget v5, Lcom/google/android/material/R$attr;->colorOnSurface:I

    #@1d
    invoke-static {p0, v5}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    #@20
    move-result v5

    #@21
    const/4 v6, 0x0

    #@22
    const/high16 v7, 0x3f800000    # 1.0f

    #@24
    .line 852
    invoke-static {v4, v3, v7}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@27
    move-result v3

    #@28
    aput v3, v1, v6

    #@2a
    const/4 v3, 0x1

    #@2b
    .line 854
    invoke-static {v4, v2, v7}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@2e
    move-result v2

    #@2f
    aput v2, v1, v3

    #@31
    const v2, 0x3f0a3d71    # 0.54f

    #@34
    .line 856
    invoke-static {v4, v5, v2}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@37
    move-result v2

    #@38
    const/4 v3, 0x2

    #@39
    aput v2, v1, v3

    #@3b
    const/4 v2, 0x3

    #@3c
    const v3, 0x3ec28f5c    # 0.38f

    #@3f
    .line 858
    invoke-static {v4, v5, v3}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@42
    move-result v6

    #@43
    aput v6, v1, v2

    #@45
    const/4 v2, 0x4

    #@46
    .line 860
    invoke-static {v4, v5, v3}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    #@49
    move-result v3

    #@4a
    aput v3, v1, v2

    #@4c
    .line 862
    new-instance v2, Landroid/content/res/ColorStateList;

    #@4e
    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@51
    iput-object v2, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    #@53
    .line 864
    :cond_53
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    #@55
    return-object v0
.end method

.method private getSuperButtonTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 822
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object v0

    #@5
    .line 825
    :cond_5
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getButtonTintList()Landroid/content/res/ColorStateList;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_10

    #@b
    .line 826
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->getButtonTintList()Landroid/content/res/ColorStateList;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 828
    :cond_10
    invoke-interface {p0}, Landroidx/core/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method private isButtonDrawableLegacy(Landroidx/appcompat/widget/TintTypedArray;)Z
    .registers 5

    #@0
    .line 832
    sget v0, Lcom/google/android/material/R$styleable;->MaterialCheckBox_android_button:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@6
    move-result v0

    #@7
    .line 833
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonCompat:I

    #@9
    .line 834
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    #@c
    move-result p1

    #@d
    .line 839
    sget v2, Lcom/google/android/material/checkbox/MaterialCheckBox;->FRAMEWORK_BUTTON_DRAWABLE_RES_ID:I

    #@f
    if-ne v0, v2, :cond_14

    #@11
    if-nez p1, :cond_14

    #@13
    const/4 v1, 0x1

    #@14
    :cond_14
    return v1
.end method

.method private refreshButtonDrawable()V
    .registers 4

    #@0
    .line 724
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    #@4
    .line 726
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;

    #@7
    move-result-object v2

    #@8
    .line 725
    invoke-static {v0, v1, v2}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    #@e
    .line 727
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    #@10
    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    #@12
    iget-object v2, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@14
    .line 728
    invoke-static {v0, v1, v2}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    #@1a
    .line 731
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setUpDefaultButtonDrawableAnimationIfNeeded()V

    #@1d
    .line 732
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->updateButtonTints()V

    #@20
    .line 734
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    #@24
    .line 735
    invoke-static {v0, v1}, Lcom/google/android/material/drawable/DrawableUtils;->compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@27
    move-result-object v0

    #@28
    .line 734
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2b
    .line 737
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshDrawableState()V

    #@2e
    return-void
.end method

.method private setDefaultStateDescription()V
    .registers 3

    #@0
    .line 804
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1e

    #@4
    if-lt v0, v1, :cond_11

    #@6
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->customStateDescription:Ljava/lang/CharSequence;

    #@8
    if-nez v0, :cond_11

    #@a
    .line 805
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getButtonStateDescription()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setStateDescription(Ljava/lang/CharSequence;)V

    #@11
    :cond_11
    return-void
.end method

.method private setUpDefaultButtonDrawableAnimationIfNeeded()V
    .registers 6

    #@0
    .line 745
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->usingMaterialButtonDrawable:Z

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 749
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    #@7
    if-eqz v0, :cond_15

    #@9
    .line 750
    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUncheckedCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@b
    invoke-virtual {v0, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z

    #@e
    .line 751
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    #@10
    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUncheckedCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    #@12
    invoke-virtual {v0, v1}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V

    #@15
    .line 757
    :cond_15
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    #@17
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    #@19
    if-eqz v1, :cond_38

    #@1b
    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    #@1d
    if-eqz v1, :cond_38

    #@1f
    .line 760
    check-cast v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    #@21
    sget v1, Lcom/google/android/material/R$id;->checked:I

    #@23
    sget v2, Lcom/google/android/material/R$id;->unchecked:I

    #@25
    iget-object v3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    #@27
    const/4 v4, 0x0

    #@28
    .line 761
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    #@2b
    .line 763
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    #@2d
    check-cast v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    #@2f
    sget v1, Lcom/google/android/material/R$id;->indeterminate:I

    #@31
    sget v2, Lcom/google/android/material/R$id;->unchecked:I

    #@33
    iget-object v3, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->transitionToUnchecked:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    #@35
    .line 764
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    #@38
    :cond_38
    return-void
.end method

.method private updateButtonTints()V
    .registers 3

    #@0
    .line 770
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    #@6
    if-eqz v1, :cond_b

    #@8
    .line 771
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@b
    .line 774
    :cond_b
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    #@d
    if-eqz v0, :cond_16

    #@f
    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    #@11
    if-eqz v1, :cond_16

    #@13
    .line 775
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    #@16
    :cond_16
    return-void
.end method

.method private updateIconTintIfNeeded()V
    .registers 1

    #@0
    return-void
.end method


# virtual methods
.method public addOnCheckedStateChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;)V
    .registers 3

    #@0
    .line 442
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public addOnErrorChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;)V
    .registers 3

    #@0
    .line 534
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public clearOnCheckedStateChangedListeners()V
    .registers 2

    #@0
    .line 457
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    #@5
    return-void
.end method

.method public clearOnErrorChangedListeners()V
    .registers 2

    #@0
    .line 549
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    #@5
    return-void
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 567
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getButtonIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 630
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getButtonIconTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 658
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getButtonIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    #@0
    .line 686
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public getButtonTintList()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 582
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getCheckedState()I
    .registers 2

    #@0
    .line 429
    iget v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    #@2
    return v0
.end method

.method public getErrorAccessibilityLabel()Ljava/lang/CharSequence;
    .registers 2

    #@0
    .line 521
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public isCenterIfNoTextEnabled()Z
    .registers 2

    #@0
    .line 720
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    #@2
    return v0
.end method

.method public isChecked()Z
    .registers 3

    #@0
    .line 353
    iget v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_6

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v1, 0x0

    #@7
    :goto_7
    return v1
.end method

.method public isErrorShown()Z
    .registers 2

    #@0
    .line 486
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    #@2
    return v0
.end method

.method public isUseMaterialThemeColors()Z
    .registers 2

    #@0
    .line 704
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    #@2
    return v0
.end method

.method synthetic lambda$new$0$com-google-android-material-checkbox-MaterialCheckBox()V
    .registers 2

    #@0
    .line 281
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    #@5
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 314
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onAttachedToWindow()V

    #@3
    .line 316
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    #@5
    if-eqz v0, :cond_13

    #@7
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    #@9
    if-nez v0, :cond_13

    #@b
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    #@d
    if-nez v0, :cond_13

    #@f
    const/4 v0, 0x1

    #@10
    .line 317
    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setUseMaterialThemeColors(Z)V

    #@13
    :cond_13
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    add-int/2addr p1, v0

    #@2
    .line 323
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onCreateDrawableState(I)[I

    #@5
    move-result-object p1

    #@6
    .line 325
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getCheckedState()I

    #@9
    move-result v1

    #@a
    if-ne v1, v0, :cond_11

    #@c
    .line 326
    sget-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->INDETERMINATE_STATE_SET:[I

    #@e
    invoke-static {p1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->mergeDrawableStates([I[I)[I

    #@11
    .line 329
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isErrorShown()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1c

    #@17
    .line 330
    sget-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->ERROR_STATE_SET:[I

    #@19
    invoke-static {p1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->mergeDrawableStates([I[I)[I

    #@1c
    .line 333
    :cond_1c
    invoke-static {p1}, Lcom/google/android/material/drawable/DrawableUtils;->getCheckedState([I)[I

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->currentStateChecked:[I

    #@22
    .line 335
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->updateIconTintIfNeeded()V

    #@25
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    #@0
    .line 288
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    #@2
    if-eqz v0, :cond_54

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getText()Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_54

    #@e
    .line 289
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_54

    #@14
    .line 291
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1c

    #@1a
    const/4 v1, -0x1

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 v1, 0x1

    #@1d
    .line 292
    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getWidth()I

    #@20
    move-result v2

    #@21
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@24
    move-result v3

    #@25
    sub-int/2addr v2, v3

    #@26
    div-int/lit8 v2, v2, 0x2

    #@28
    mul-int/2addr v2, v1

    #@29
    .line 294
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@2c
    move-result v1

    #@2d
    int-to-float v3, v2

    #@2e
    const/4 v4, 0x0

    #@2f
    .line 295
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    #@32
    .line 296
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    #@35
    .line 297
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@38
    .line 299
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3b
    move-result-object p1

    #@3c
    if-eqz p1, :cond_53

    #@3e
    .line 300
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@41
    move-result-object p1

    #@42
    .line 302
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    #@45
    move-result-object v0

    #@46
    iget v1, p1, Landroid/graphics/Rect;->left:I

    #@48
    add-int/2addr v1, v2

    #@49
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@4b
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@4d
    add-int/2addr v4, v2

    #@4e
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@50
    .line 301
    invoke-static {v0, v1, v3, v4, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    #@53
    :cond_53
    return-void

    #@54
    .line 309
    :cond_54
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onDraw(Landroid/graphics/Canvas;)V

    #@57
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    #@0
    .line 368
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    if-nez p1, :cond_6

    #@5
    return-void

    #@6
    .line 373
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isErrorShown()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_2c

    #@c
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, ", "

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    #@2c
    :cond_2c
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 880
    instance-of v0, p1, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 881
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 884
    :cond_8
    check-cast p1, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    #@a
    .line 885
    invoke-virtual {p1}, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 886
    iget p1, p1, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->checkedState:I

    #@13
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setCheckedState(I)V

    #@16
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 870
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 872
    new-instance v1, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;

    #@6
    invoke-direct {v1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 874
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getCheckedState()I

    #@c
    move-result v0

    #@d
    iput v0, v1, Lcom/google/android/material/checkbox/MaterialCheckBox$SavedState;->checkedState:I

    #@f
    return-object v1
.end method

.method public removeOnCheckedStateChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;)V
    .registers 3

    #@0
    .line 452
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public removeOnErrorChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;)V
    .registers 3

    #@0
    .line 544
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public setButtonDrawable(I)V
    .registers 3

    #@0
    .line 554
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 559
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    const/4 p1, 0x0

    #@3
    .line 560
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->usingMaterialButtonDrawable:Z

    #@5
    .line 561
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    #@8
    return-void
.end method

.method public setButtonIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 616
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 617
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    #@5
    return-void
.end method

.method public setButtonIconDrawableResource(I)V
    .registers 3

    #@0
    .line 602
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setButtonIconDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    return-void
.end method

.method public setButtonIconTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 643
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 646
    :cond_5
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintList:Landroid/content/res/ColorStateList;

    #@7
    .line 647
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    #@a
    return-void
.end method

.method public setButtonIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    #@0
    .line 671
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 674
    :cond_5
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    #@7
    .line 675
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    #@a
    return-void
.end method

.method public setButtonTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    #@0
    .line 572
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 575
    :cond_5
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->buttonTintList:Landroid/content/res/ColorStateList;

    #@7
    .line 576
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    #@a
    return-void
.end method

.method public setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    #@0
    .line 587
    invoke-interface {p0, p1}, Landroidx/core/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    #@3
    .line 588
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshButtonDrawable()V

    #@6
    return-void
.end method

.method public setCenterIfNoTextEnabled(Z)V
    .registers 2

    #@0
    .line 712
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    #@2
    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    #@0
    .line 348
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setCheckedState(I)V

    #@3
    return-void
.end method

.method public setCheckedState(I)V
    .registers 5

    #@0
    .line 385
    iget v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    #@2
    if-eq v0, p1, :cond_5a

    #@4
    .line 386
    iput p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    #@6
    const/4 v0, 0x0

    #@7
    const/4 v1, 0x1

    #@8
    if-ne p1, v1, :cond_c

    #@a
    move p1, v1

    #@b
    goto :goto_d

    #@c
    :cond_c
    move p1, v0

    #@d
    .line 387
    :goto_d
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    #@10
    .line 388
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshDrawableState()V

    #@13
    .line 389
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setDefaultStateDescription()V

    #@16
    .line 392
    iget-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->broadcasting:Z

    #@18
    if-eqz p1, :cond_1b

    #@1a
    return-void

    #@1b
    .line 396
    :cond_1b
    iput-boolean v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->broadcasting:Z

    #@1d
    .line 397
    iget-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedStateChangedListeners:Ljava/util/LinkedHashSet;

    #@1f
    if-eqz p1, :cond_37

    #@21
    .line 398
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object p1

    #@25
    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_37

    #@2b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;

    #@31
    .line 399
    iget v2, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    #@33
    invoke-interface {v1, p0, v2}, Lcom/google/android/material/checkbox/MaterialCheckBox$OnCheckedStateChangedListener;->onCheckedStateChangedListener(Lcom/google/android/material/checkbox/MaterialCheckBox;I)V

    #@36
    goto :goto_25

    #@37
    .line 402
    :cond_37
    iget p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->checkedState:I

    #@39
    const/4 v1, 0x2

    #@3a
    if-eq p1, v1, :cond_47

    #@3c
    iget-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@3e
    if-eqz p1, :cond_47

    #@40
    .line 403
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    #@43
    move-result v1

    #@44
    invoke-interface {p1, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    #@47
    .line 406
    :cond_47
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getContext()Landroid/content/Context;

    #@4a
    move-result-object p1

    #@4b
    const-class v1, Landroid/view/autofill/AutofillManager;

    #@4d
    .line 407
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@50
    move-result-object p1

    #@51
    check-cast p1, Landroid/view/autofill/AutofillManager;

    #@53
    if-eqz p1, :cond_58

    #@55
    .line 409
    invoke-virtual {p1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    #@58
    .line 413
    :cond_58
    iput-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->broadcasting:Z

    #@5a
    :cond_5a
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    #@0
    .line 342
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setEnabled(Z)V

    #@3
    .line 343
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->updateIconTintIfNeeded()V

    #@6
    return-void
.end method

.method public setErrorAccessibilityLabel(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 510
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    #@2
    return-void
.end method

.method public setErrorAccessibilityLabelResource(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 498
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setErrorAccessibilityLabel(Ljava/lang/CharSequence;)V

    #@f
    return-void
.end method

.method public setErrorShown(Z)V
    .registers 4

    #@0
    .line 469
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    .line 472
    :cond_5
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    #@7
    .line 473
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->refreshDrawableState()V

    #@a
    .line 474
    iget-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    #@c
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object p1

    #@10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_22

    #@16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;

    #@1c
    .line 475
    iget-boolean v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    #@1e
    invoke-interface {v0, p0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;->onErrorChanged(Lcom/google/android/material/checkbox/MaterialCheckBox;Z)V

    #@21
    goto :goto_10

    #@22
    :cond_22
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2

    #@0
    .line 363
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@2
    return-void
.end method

.method public setStateDescription(Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    .line 795
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->customStateDescription:Ljava/lang/CharSequence;

    #@2
    if-nez p1, :cond_8

    #@4
    .line 797
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setDefaultStateDescription()V

    #@7
    goto :goto_b

    #@8
    .line 799
    :cond_8
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setStateDescription(Ljava/lang/CharSequence;)V

    #@b
    :goto_b
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .registers 2

    #@0
    .line 694
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    #@2
    if-eqz p1, :cond_c

    #@4
    .line 696
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

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
    .line 698
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    #@10
    :goto_10
    return-void
.end method

.method public toggle()V
    .registers 2

    #@0
    .line 358
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isChecked()Z

    #@3
    move-result v0

    #@4
    xor-int/lit8 v0, v0, 0x1

    #@6
    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setChecked(Z)V

    #@9
    return-void
.end method
