.class public Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;
.super Ljava/lang/Object;
.source "MaterialThemeOverlay.java"


# static fields
.field private static final ANDROID_THEME_OVERLAY_ATTRS:[I

.field private static final MATERIAL_THEME_OVERLAY_ATTR:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [I

    #@3
    const/high16 v1, 0x1010000

    #@5
    const/4 v2, 0x0

    #@6
    aput v1, v0, v2

    #@8
    .line 48
    sget v1, Lcom/google/android/material/R$attr;->theme:I

    #@a
    const/4 v3, 0x1

    #@b
    aput v1, v0, v3

    #@d
    sput-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->ANDROID_THEME_OVERLAY_ATTRS:[I

    #@f
    new-array v0, v3, [I

    #@11
    .line 51
    sget v1, Lcom/google/android/material/R$attr;->materialThemeOverlay:I

    #@13
    aput v1, v0, v2

    #@15
    sput-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->MATERIAL_THEME_OVERLAY_ATTR:[I

    #@17
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .registers 4

    #@0
    .line 94
    sget-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->ANDROID_THEME_OVERLAY_ATTRS:[I

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p0

    #@6
    const/4 p1, 0x0

    #@7
    .line 95
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x1

    #@c
    .line 96
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@f
    move-result p1

    #@10
    .line 97
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@13
    if-eqz v0, :cond_16

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v0, p1

    #@17
    :goto_17
    return v0
.end method

.method private static obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I
    .registers 5

    #@0
    .line 112
    sget-object v0, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->MATERIAL_THEME_OVERLAY_ATTR:[I

    #@2
    .line 113
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@5
    move-result-object p0

    #@6
    const/4 p1, 0x0

    #@7
    .line 115
    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@a
    move-result p1

    #@b
    .line 116
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@e
    return p1
.end method

.method public static wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;
    .registers 5

    #@0
    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainMaterialThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;II)I

    #@3
    move-result p2

    #@4
    .line 68
    instance-of p3, p0, Landroidx/appcompat/view/ContextThemeWrapper;

    #@6
    const/4 v0, 0x1

    #@7
    if-eqz p3, :cond_14

    #@9
    move-object p3, p0

    #@a
    check-cast p3, Landroidx/appcompat/view/ContextThemeWrapper;

    #@c
    .line 69
    invoke-virtual {p3}, Landroidx/appcompat/view/ContextThemeWrapper;->getThemeResId()I

    #@f
    move-result p3

    #@10
    if-ne p3, p2, :cond_14

    #@12
    move p3, v0

    #@13
    goto :goto_15

    #@14
    :cond_14
    const/4 p3, 0x0

    #@15
    :goto_15
    if-eqz p2, :cond_2d

    #@17
    if-eqz p3, :cond_1a

    #@19
    goto :goto_2d

    #@1a
    .line 75
    :cond_1a
    new-instance p3, Landroidx/appcompat/view/ContextThemeWrapper;

    #@1c
    invoke-direct {p3, p0, p2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@1f
    .line 79
    invoke-static {p0, p1}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->obtainAndroidThemeOverlayId(Landroid/content/Context;Landroid/util/AttributeSet;)I

    #@22
    move-result p0

    #@23
    if-eqz p0, :cond_2c

    #@25
    .line 81
    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@28
    move-result-object p1

    #@29
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@2c
    :cond_2c
    return-object p3

    #@2d
    :cond_2d
    :goto_2d
    return-object p0
.end method
