.class public Lcom/google/android/material/ripple/RippleUtils;
.super Ljava/lang/Object;
.source "RippleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/ripple/RippleUtils$RippleUtilsLollipop;
    }
.end annotation


# static fields
.field private static final ENABLED_PRESSED_STATE_SET:[I

.field private static final FOCUSED_STATE_SET:[I

.field private static final HOVERED_FOCUSED_STATE_SET:[I

.field private static final HOVERED_STATE_SET:[I

.field static final LOG_TAG:Ljava/lang/String;

.field private static final PRESSED_STATE_SET:[I

.field private static final SELECTED_FOCUSED_STATE_SET:[I

.field private static final SELECTED_HOVERED_FOCUSED_STATE_SET:[I

.field private static final SELECTED_HOVERED_STATE_SET:[I

.field private static final SELECTED_PRESSED_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field static final TRANSPARENT_DEFAULT_COLOR_WARNING:Ljava/lang/String; = "Use a non-transparent color for the default color as it will be used to finish ripple animations."

.field public static final USE_FRAMEWORK_RIPPLE:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    .line 55
    sput-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    #@3
    new-array v1, v0, [I

    #@5
    const v2, 0x10100a7

    #@8
    const/4 v3, 0x0

    #@9
    aput v2, v1, v3

    #@b
    .line 57
    sput-object v1, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    #@d
    const/4 v1, 0x2

    #@e
    new-array v2, v1, [I

    #@10
    .line 60
    fill-array-data v2, :array_5a

    #@13
    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    #@15
    new-array v2, v0, [I

    #@17
    const v4, 0x101009c

    #@1a
    aput v4, v2, v3

    #@1c
    .line 63
    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    #@1e
    new-array v2, v0, [I

    #@20
    const v4, 0x1010367

    #@23
    aput v4, v2, v3

    #@25
    .line 66
    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    #@27
    new-array v2, v1, [I

    #@29
    .line 70
    fill-array-data v2, :array_62

    #@2c
    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    #@2e
    const/4 v2, 0x3

    #@2f
    new-array v2, v2, [I

    #@31
    .line 73
    fill-array-data v2, :array_6a

    #@34
    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    #@36
    new-array v2, v1, [I

    #@38
    .line 76
    fill-array-data v2, :array_74

    #@3b
    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    #@3d
    new-array v2, v1, [I

    #@3f
    .line 79
    fill-array-data v2, :array_7c

    #@42
    sput-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    #@44
    new-array v0, v0, [I

    #@46
    const v2, 0x10100a1

    #@49
    aput v2, v0, v3

    #@4b
    .line 82
    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    #@4d
    new-array v0, v1, [I

    #@4f
    .line 86
    fill-array-data v0, :array_84

    #@52
    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->ENABLED_PRESSED_STATE_SET:[I

    #@54
    const-string v0, "RippleUtils"

    #@56
    .line 90
    sput-object v0, Lcom/google/android/material/ripple/RippleUtils;->LOG_TAG:Ljava/lang/String;

    #@58
    return-void

    #@59
    nop

    #@5a
    :array_5a
    .array-data 4
        0x1010367
        0x101009c
    .end array-data

    #@62
    :array_62
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data

    #@6a
    :array_6a
    .array-data 4
        0x10100a1
        0x1010367
        0x101009c
    .end array-data

    #@74
    :array_74
    .array-data 4
        0x10100a1
        0x101009c
    .end array-data

    #@7c
    :array_7c
    .array-data 4
        0x10100a1
        0x1010367
    .end array-data

    #@84
    :array_84
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static convertToRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 8

    #@0
    .line 125
    sget-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    #@2
    const/4 v1, 0x3

    #@3
    const/4 v2, 0x2

    #@4
    const/4 v3, 0x1

    #@5
    const/4 v4, 0x0

    #@6
    if-eqz v0, :cond_34

    #@8
    new-array v0, v1, [[I

    #@a
    new-array v1, v1, [I

    #@c
    .line 138
    sget-object v5, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    #@e
    aput-object v5, v0, v4

    #@10
    .line 139
    sget-object v5, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    #@12
    invoke-static {p0, v5}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    #@15
    move-result v5

    #@16
    aput v5, v1, v4

    #@18
    .line 142
    sget-object v4, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    #@1a
    aput-object v4, v0, v3

    #@1c
    .line 143
    invoke-static {p0, v4}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    #@1f
    move-result v4

    #@20
    aput v4, v1, v3

    #@22
    .line 147
    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    #@24
    aput-object v3, v0, v2

    #@26
    .line 148
    sget-object v3, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    #@28
    invoke-static {p0, v3}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    #@2b
    move-result p0

    #@2c
    aput p0, v1, v2

    #@2e
    .line 151
    new-instance p0, Landroid/content/res/ColorStateList;

    #@30
    invoke-direct {p0, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@33
    return-object p0

    #@34
    :cond_34
    const/16 v0, 0xa

    #@36
    new-array v5, v0, [[I

    #@38
    new-array v0, v0, [I

    #@3a
    .line 159
    sget-object v6, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_PRESSED_STATE_SET:[I

    #@3c
    aput-object v6, v5, v4

    #@3e
    .line 160
    invoke-static {p0, v6}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    #@41
    move-result v6

    #@42
    aput v6, v0, v4

    #@44
    .line 163
    sget-object v6, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_FOCUSED_STATE_SET:[I

    #@46
    aput-object v6, v5, v3

    #@48
    .line 164
    invoke-static {p0, v6}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    #@4b
    move-result v6

    #@4c
    aput v6, v0, v3

    #@4e
    .line 167
    sget-object v3, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_FOCUSED_STATE_SET:[I

    #@50
    aput-object v3, v5, v2

    #@52
    .line 168
    invoke-static {p0, v3}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    #@55
    move-result v3

    #@56
    aput v3, v0, v2

    #@58
    .line 171
    sget-object v2, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_HOVERED_STATE_SET:[I

    #@5a
    aput-object v2, v5, v1

    #@5c
    .line 172
    invoke-static {p0, v2}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    #@5f
    move-result v2

    #@60
    aput v2, v0, v1

    #@62
    .line 176
    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->SELECTED_STATE_SET:[I

    #@64
    const/4 v2, 0x4

    #@65
    aput-object v1, v5, v2

    #@67
    aput v4, v0, v2

    #@69
    .line 180
    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->PRESSED_STATE_SET:[I

    #@6b
    const/4 v2, 0x5

    #@6c
    aput-object v1, v5, v2

    #@6e
    .line 181
    invoke-static {p0, v1}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    #@71
    move-result v1

    #@72
    aput v1, v0, v2

    #@74
    .line 184
    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_FOCUSED_STATE_SET:[I

    #@76
    const/4 v2, 0x6

    #@77
    aput-object v1, v5, v2

    #@79
    .line 185
    invoke-static {p0, v1}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    #@7c
    move-result v1

    #@7d
    aput v1, v0, v2

    #@7f
    .line 188
    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->FOCUSED_STATE_SET:[I

    #@81
    const/4 v2, 0x7

    #@82
    aput-object v1, v5, v2

    #@84
    .line 189
    invoke-static {p0, v1}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    #@87
    move-result v1

    #@88
    aput v1, v0, v2

    #@8a
    .line 192
    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->HOVERED_STATE_SET:[I

    #@8c
    const/16 v2, 0x8

    #@8e
    aput-object v1, v5, v2

    #@90
    .line 193
    invoke-static {p0, v1}, Lcom/google/android/material/ripple/RippleUtils;->getColorForState(Landroid/content/res/ColorStateList;[I)I

    #@93
    move-result p0

    #@94
    aput p0, v0, v2

    #@96
    .line 197
    sget-object p0, Landroid/util/StateSet;->NOTHING:[I

    #@98
    const/16 v1, 0x9

    #@9a
    aput-object p0, v5, v1

    #@9c
    aput v4, v0, v1

    #@9e
    .line 201
    new-instance p0, Landroid/content/res/ColorStateList;

    #@a0
    invoke-direct {p0, v5, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@a3
    return-object p0
.end method

.method public static createOvalRippleLollipop(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 264
    # invokes: Lcom/google/android/material/ripple/RippleUtils$RippleUtilsLollipop;->createOvalRipple(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    invoke-static {p0, p1}, Lcom/google/android/material/ripple/RippleUtils$RippleUtilsLollipop;->access$000(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private static doubleAlpha(I)I
    .registers 3

    #@0
    .line 285
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    #@3
    move-result v0

    #@4
    mul-int/lit8 v0, v0, 0x2

    #@6
    const/16 v1, 0xff

    #@8
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v0

    #@c
    .line 286
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    #@f
    move-result p0

    #@10
    return p0
.end method

.method private static getColorForState(Landroid/content/res/ColorStateList;[I)I
    .registers 3

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 271
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@9
    move-result p0

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p0, 0x0

    #@c
    .line 275
    :goto_c
    sget-boolean p1, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z

    #@e
    if-eqz p1, :cond_14

    #@10
    invoke-static {p0}, Lcom/google/android/material/ripple/RippleUtils;->doubleAlpha(I)I

    #@13
    move-result p0

    #@14
    :cond_14
    return p0
.end method

.method public static sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_27

    #@3
    .line 221
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v2, 0x1b

    #@7
    if-gt v1, v2, :cond_26

    #@9
    .line 223
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@c
    move-result v1

    #@d
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_26

    #@13
    sget-object v1, Lcom/google/android/material/ripple/RippleUtils;->ENABLED_PRESSED_STATE_SET:[I

    #@15
    .line 224
    invoke-virtual {p0, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@18
    move-result v0

    #@19
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_26

    #@1f
    .line 226
    sget-object v0, Lcom/google/android/material/ripple/RippleUtils;->LOG_TAG:Ljava/lang/String;

    #@21
    const-string v1, "Use a non-transparent color for the default color as it will be used to finish ripple animations."

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    :cond_26
    return-object p0

    #@27
    .line 230
    :cond_27
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@2a
    move-result-object p0

    #@2b
    return-object p0
.end method

.method public static shouldDrawRippleCompat([I)Z
    .registers 9

    #@0
    .line 241
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    move v2, v1

    #@3
    move v3, v2

    #@4
    move v4, v3

    #@5
    :goto_5
    const/4 v5, 0x1

    #@6
    if-ge v2, v0, :cond_27

    #@8
    aget v6, p0, v2

    #@a
    const v7, 0x101009e

    #@d
    if-ne v6, v7, :cond_11

    #@f
    move v3, v5

    #@10
    goto :goto_24

    #@11
    :cond_11
    const v7, 0x101009c

    #@14
    if-ne v6, v7, :cond_18

    #@16
    :goto_16
    move v4, v5

    #@17
    goto :goto_24

    #@18
    :cond_18
    const v7, 0x10100a7

    #@1b
    if-ne v6, v7, :cond_1e

    #@1d
    goto :goto_16

    #@1e
    :cond_1e
    const v7, 0x1010367

    #@21
    if-ne v6, v7, :cond_24

    #@23
    goto :goto_16

    #@24
    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_5

    #@27
    :cond_27
    if-eqz v3, :cond_2c

    #@29
    if-eqz v4, :cond_2c

    #@2b
    move v1, v5

    #@2c
    :cond_2c
    return v1
.end method
