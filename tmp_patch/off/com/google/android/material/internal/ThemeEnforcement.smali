.class public final Lcom/google/android/material/internal/ThemeEnforcement;
.super Ljava/lang/Object;
.source "ThemeEnforcement.java"


# static fields
.field private static final APPCOMPAT_CHECK_ATTRS:[I

.field private static final APPCOMPAT_THEME_NAME:Ljava/lang/String; = "Theme.AppCompat"

.field private static final MATERIAL_CHECK_ATTRS:[I

.field private static final MATERIAL_THEME_NAME:Ljava/lang/String; = "Theme.MaterialComponents"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v1, v0, [I

    #@3
    .line 44
    sget v2, Lcom/google/android/material/R$attr;->colorPrimary:I

    #@5
    const/4 v3, 0x0

    #@6
    aput v2, v1, v3

    #@8
    sput-object v1, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    #@a
    new-array v0, v0, [I

    #@c
    .line 47
    sget v1, Lcom/google/android/material/R$attr;->colorPrimaryVariant:I

    #@e
    aput v1, v0, v3

    #@10
    sput-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    #@12
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static checkAppCompatTheme(Landroid/content/Context;)V
    .registers 3

    #@0
    .line 212
    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    #@2
    const-string v1, "Theme.AppCompat"

    #@4
    invoke-static {p0, v0, v1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    #@7
    return-void
.end method

.method private static checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    #@0
    .line 128
    sget-object v0, Lcom/google/android/material/R$styleable;->ThemeEnforcement:[I

    #@2
    .line 129
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    .line 131
    sget p2, Lcom/google/android/material/R$styleable;->ThemeEnforcement_enforceMaterialTheme:I

    #@8
    const/4 p3, 0x0

    #@9
    .line 132
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c
    move-result p2

    #@d
    .line 133
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@10
    if-eqz p2, :cond_31

    #@12
    .line 136
    new-instance p1, Landroid/util/TypedValue;

    #@14
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    #@17
    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@1a
    move-result-object p2

    #@1b
    sget p3, Lcom/google/android/material/R$attr;->isMaterialTheme:I

    #@1d
    const/4 v0, 0x1

    #@1e
    invoke-virtual {p2, p3, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@21
    move-result p2

    #@22
    if-eqz p2, :cond_2e

    #@24
    .line 140
    iget p2, p1, Landroid/util/TypedValue;->type:I

    #@26
    const/16 p3, 0x12

    #@28
    if-ne p2, p3, :cond_31

    #@2a
    iget p1, p1, Landroid/util/TypedValue;->data:I

    #@2c
    if-nez p1, :cond_31

    #@2e
    .line 144
    :cond_2e
    invoke-static {p0}, Lcom/google/android/material/internal/ThemeEnforcement;->checkMaterialTheme(Landroid/content/Context;)V

    #@31
    .line 147
    :cond_31
    invoke-static {p0}, Lcom/google/android/material/internal/ThemeEnforcement;->checkAppCompatTheme(Landroid/content/Context;)V

    #@34
    return-void
.end method

.method public static checkMaterialTheme(Landroid/content/Context;)V
    .registers 3

    #@0
    .line 216
    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    #@2
    const-string v1, "Theme.MaterialComponents"

    #@4
    invoke-static {p0, v0, v1}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    #@7
    return-void
.end method

.method private static varargs checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V
    .registers 9

    #@0
    .line 157
    sget-object v0, Lcom/google/android/material/R$styleable;->ThemeEnforcement:[I

    #@2
    .line 158
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 160
    sget v1, Lcom/google/android/material/R$styleable;->ThemeEnforcement_enforceTextAppearance:I

    #@8
    const/4 v2, 0x0

    #@9
    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_13

    #@f
    .line 164
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@12
    return-void

    #@13
    :cond_13
    if-eqz p5, :cond_1e

    #@15
    .line 170
    array-length v1, p5

    #@16
    if-nez v1, :cond_19

    #@18
    goto :goto_1e

    #@19
    .line 179
    :cond_19
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/ThemeEnforcement;->isCustomTextAppearanceValid(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z

    #@1c
    move-result p0

    #@1d
    goto :goto_29

    #@1e
    .line 172
    :cond_1e
    :goto_1e
    sget p0, Lcom/google/android/material/R$styleable;->ThemeEnforcement_android_textAppearance:I

    #@20
    const/4 p1, -0x1

    #@21
    .line 173
    invoke-virtual {v0, p0, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@24
    move-result p0

    #@25
    if-eq p0, p1, :cond_28

    #@27
    const/4 v2, 0x1

    #@28
    :cond_28
    move p0, v2

    #@29
    .line 183
    :goto_29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2c
    if-eqz p0, :cond_2f

    #@2e
    return-void

    #@2f
    .line 186
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@31
    const-string p1, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

    #@33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw p0
.end method

.method private static checkTheme(Landroid/content/Context;[ILjava/lang/String;)V
    .registers 4

    #@0
    .line 246
    invoke-static {p0, p1}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    #@3
    move-result p0

    #@4
    if-eqz p0, :cond_7

    #@6
    return-void

    #@7
    .line 247
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance p1, Ljava/lang/StringBuilder;

    #@b
    const-string v0, "The style on this component requires your app theme to be "

    #@d
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object p1

    #@14
    const-string p2, " (or a descendant)."

    #@16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object p1

    #@1e
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw p0
.end method

.method public static isAppCompatTheme(Landroid/content/Context;)Z
    .registers 2

    #@0
    .line 220
    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->APPCOMPAT_CHECK_ATTRS:[I

    #@2
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method private static varargs isCustomTextAppearanceValid(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Z
    .registers 7

    #@0
    .line 200
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@3
    move-result-object p0

    #@4
    .line 201
    array-length p1, p5

    #@5
    const/4 p2, 0x0

    #@6
    move p3, p2

    #@7
    :goto_7
    if-ge p3, p1, :cond_19

    #@9
    aget p4, p5, p3

    #@b
    const/4 v0, -0x1

    #@c
    .line 202
    invoke-virtual {p0, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@f
    move-result p4

    #@10
    if-ne p4, v0, :cond_16

    #@12
    .line 203
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@15
    return p2

    #@16
    :cond_16
    add-int/lit8 p3, p3, 0x1

    #@18
    goto :goto_7

    #@19
    .line 207
    :cond_19
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@1c
    const/4 p0, 0x1

    #@1d
    return p0
.end method

.method public static isMaterial3Theme(Landroid/content/Context;)Z
    .registers 3

    #@0
    .line 228
    sget v0, Lcom/google/android/material/R$attr;->isMaterial3Theme:I

    #@2
    const/4 v1, 0x0

    #@3
    .line 229
    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    #@6
    move-result p0

    #@7
    return p0
.end method

.method public static isMaterialTheme(Landroid/content/Context;)Z
    .registers 2

    #@0
    .line 224
    sget-object v0, Lcom/google/android/material/internal/ThemeEnforcement;->MATERIAL_CHECK_ATTRS:[I

    #@2
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ThemeEnforcement;->isTheme(Landroid/content/Context;[I)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method private static isTheme(Landroid/content/Context;[I)Z
    .registers 5

    #@0
    .line 233
    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    .line 234
    :goto_6
    array-length v2, p1

    #@7
    if-ge v1, v2, :cond_16

    #@9
    .line 235
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_13

    #@f
    .line 236
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@12
    return v0

    #@13
    :cond_13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_6

    #@16
    .line 240
    :cond_16
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@19
    const/4 p0, 0x1

    #@1a
    return p0
.end method

.method public static varargs obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    .registers 6

    #@0
    .line 76
    invoke-static {p0, p1, p3, p4}, Lcom/google/android/material/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 79
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    #@6
    .line 82
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static varargs obtainTintedStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/TintTypedArray;
    .registers 6

    #@0
    .line 114
    invoke-static {p0, p1, p3, p4}, Lcom/google/android/material/internal/ThemeEnforcement;->checkCompatibleTheme(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 117
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/internal/ThemeEnforcement;->checkTextAppearance(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    #@6
    .line 120
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method
