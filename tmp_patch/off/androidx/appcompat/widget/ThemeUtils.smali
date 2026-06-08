.class public Landroidx/appcompat/widget/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field static final ACTIVATED_STATE_SET:[I

.field static final CHECKED_STATE_SET:[I

.field static final DISABLED_STATE_SET:[I

.field static final EMPTY_STATE_SET:[I

.field static final FOCUSED_STATE_SET:[I

.field static final NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

.field static final PRESSED_STATE_SET:[I

.field static final SELECTED_STATE_SET:[I

.field private static final TAG:Ljava/lang/String; = "ThemeUtils"

.field private static final TEMP_ARRAY:[I

.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    .line 41
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroidx/appcompat/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    #@7
    const/4 v0, 0x1

    #@8
    new-array v1, v0, [I

    #@a
    const v2, -0x101009e

    #@d
    const/4 v3, 0x0

    #@e
    aput v2, v1, v3

    #@10
    .line 43
    sput-object v1, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    #@12
    new-array v1, v0, [I

    #@14
    const v2, 0x101009c

    #@17
    aput v2, v1, v3

    #@19
    .line 44
    sput-object v1, Landroidx/appcompat/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    #@1b
    new-array v1, v0, [I

    #@1d
    const v2, 0x10102fe

    #@20
    aput v2, v1, v3

    #@22
    .line 45
    sput-object v1, Landroidx/appcompat/widget/ThemeUtils;->ACTIVATED_STATE_SET:[I

    #@24
    new-array v1, v0, [I

    #@26
    const v2, 0x10100a7

    #@29
    aput v2, v1, v3

    #@2b
    .line 46
    sput-object v1, Landroidx/appcompat/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    #@2d
    new-array v1, v0, [I

    #@2f
    const v2, 0x10100a0

    #@32
    aput v2, v1, v3

    #@34
    .line 47
    sput-object v1, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    #@36
    new-array v1, v0, [I

    #@38
    const v2, 0x10100a1

    #@3b
    aput v2, v1, v3

    #@3d
    .line 48
    sput-object v1, Landroidx/appcompat/widget/ThemeUtils;->SELECTED_STATE_SET:[I

    #@3f
    const/4 v1, 0x2

    #@40
    new-array v1, v1, [I

    #@42
    .line 49
    fill-array-data v1, :array_50

    #@45
    sput-object v1, Landroidx/appcompat/widget/ThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    #@47
    new-array v1, v3, [I

    #@49
    .line 51
    sput-object v1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    #@4b
    new-array v0, v0, [I

    #@4d
    .line 53
    sput-object v0, Landroidx/appcompat/widget/ThemeUtils;->TEMP_ARRAY:[I

    #@4f
    return-void

    #@50
    :array_50
    .array-data 4
        -0x10100a7
        -0x101009c
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static checkAppCompatTheme(Landroid/view/View;Landroid/content/Context;)V
    .registers 5

    #@0
    const-string v0, "View "

    #@2
    .line 162
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTheme:[I

    #@4
    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@7
    move-result-object p1

    #@8
    .line 168
    :try_start_8
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I

    #@a
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_2c

    #@10
    const-string v1, "ThemeUtils"

    #@12
    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a
    move-result-object p0

    #@1b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p0

    #@1f
    const-string v0, " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant)."

    #@21
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object p0

    #@25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object p0

    #@29
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_30

    #@2c
    .line 174
    :cond_2c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@2f
    return-void

    #@30
    :catchall_30
    move-exception p0

    #@31
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@34
    .line 175
    throw p0
.end method

.method public static createDisabledStateList(II)Landroid/content/res/ColorStateList;
    .registers 6

    #@0
    const/4 v0, 0x2

    #@1
    new-array v1, v0, [[I

    #@3
    new-array v0, v0, [I

    #@5
    .line 71
    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    #@7
    const/4 v3, 0x0

    #@8
    aput-object v2, v1, v3

    #@a
    aput p1, v0, v3

    #@c
    .line 76
    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    #@e
    const/4 v2, 0x1

    #@f
    aput-object p1, v1, v2

    #@11
    aput p0, v0, v2

    #@13
    .line 80
    new-instance p0, Landroid/content/res/ColorStateList;

    #@15
    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@18
    return-object p0
.end method

.method public static getDisabledThemeAttrColor(Landroid/content/Context;I)I
    .registers 6

    #@0
    .line 126
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_17

    #@6
    .line 127
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_17

    #@c
    .line 129
    sget-object p0, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    #@e
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@11
    move-result p1

    #@12
    invoke-virtual {v0, p0, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@15
    move-result p0

    #@16
    return p0

    #@17
    .line 133
    :cond_17
    invoke-static {}, Landroidx/appcompat/widget/ThemeUtils;->getTypedValue()Landroid/util/TypedValue;

    #@1a
    move-result-object v0

    #@1b
    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@1e
    move-result-object v1

    #@1f
    const v2, 0x1010033

    #@22
    const/4 v3, 0x1

    #@23
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@26
    .line 136
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    #@29
    move-result v0

    #@2a
    .line 138
    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    #@2d
    move-result p0

    #@2e
    return p0
.end method

.method public static getThemeAttrColor(Landroid/content/Context;I)I
    .registers 4

    #@0
    .line 91
    sget-object v0, Landroidx/appcompat/widget/ThemeUtils;->TEMP_ARRAY:[I

    #@2
    const/4 v1, 0x0

    #@3
    aput p1, v0, v1

    #@5
    const/4 p1, 0x0

    #@6
    .line 92
    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    #@9
    move-result-object p0

    #@a
    .line 94
    :try_start_a
    invoke-virtual {p0, v1, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColor(II)I

    #@d
    move-result p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    #@e
    .line 96
    invoke-virtual {p0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@11
    return p1

    #@12
    :catchall_12
    move-exception p1

    #@13
    invoke-virtual {p0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@16
    .line 97
    throw p1
.end method

.method static getThemeAttrColor(Landroid/content/Context;IF)I
    .registers 3

    #@0
    .line 152
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    #@3
    move-result p0

    #@4
    .line 153
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    #@7
    move-result p1

    #@8
    int-to-float p1, p1

    #@9
    mul-float/2addr p1, p2

    #@a
    .line 154
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@d
    move-result p1

    #@e
    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@11
    move-result p0

    #@12
    return p0
.end method

.method public static getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4

    #@0
    .line 109
    sget-object v0, Landroidx/appcompat/widget/ThemeUtils;->TEMP_ARRAY:[I

    #@2
    const/4 v1, 0x0

    #@3
    aput p1, v0, v1

    #@5
    const/4 p1, 0x0

    #@6
    .line 110
    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    #@9
    move-result-object p0

    #@a
    .line 112
    :try_start_a
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@d
    move-result-object p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    #@e
    .line 114
    invoke-virtual {p0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@11
    return-object p1

    #@12
    :catchall_12
    move-exception p1

    #@13
    invoke-virtual {p0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    #@16
    .line 115
    throw p1
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .registers 2

    #@0
    .line 143
    sget-object v0, Landroidx/appcompat/widget/ThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroid/util/TypedValue;

    #@8
    if-nez v1, :cond_12

    #@a
    .line 145
    new-instance v1, Landroid/util/TypedValue;

    #@c
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@f
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@12
    :cond_12
    return-object v1
.end method
