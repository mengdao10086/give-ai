.class public Lcom/google/android/material/color/DynamicColors;
.super Ljava/lang/Object;
.source "DynamicColors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;,
        Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;,
        Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;,
        Lcom/google/android/material/color/DynamicColors$Precondition;
    }
.end annotation


# static fields
.field private static final DEFAULT_DEVICE_SUPPORT_CONDITION:Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

.field private static final DYNAMIC_COLOR_SUPPORTED_BRANDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;",
            ">;"
        }
    .end annotation
.end field

.field private static final DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;",
            ">;"
        }
    .end annotation
.end field

.field private static final DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

.field private static final SAMSUNG_DEVICE_SUPPORT_CONDITION:Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

.field private static final USE_DEFAULT_THEME_OVERLAY:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const/4 v1, 0x0

    #@4
    .line 45
    sget v2, Lcom/google/android/material/R$attr;->dynamicColorThemeOverlay:I

    #@6
    aput v2, v0, v1

    #@8
    sput-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

    #@a
    .line 48
    new-instance v0, Lcom/google/android/material/color/DynamicColors$1;

    #@c
    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColors$1;-><init>()V

    #@f
    sput-object v0, Lcom/google/android/material/color/DynamicColors;->DEFAULT_DEVICE_SUPPORT_CONDITION:Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

    #@11
    .line 57
    new-instance v1, Lcom/google/android/material/color/DynamicColors$2;

    #@13
    invoke-direct {v1}, Lcom/google/android/material/color/DynamicColors$2;-><init>()V

    #@16
    sput-object v1, Lcom/google/android/material/color/DynamicColors;->SAMSUNG_DEVICE_SUPPORT_CONDITION:Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

    #@18
    .line 79
    new-instance v2, Ljava/util/HashMap;

    #@1a
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@1d
    const-string v3, "fcnt"

    #@1f
    .line 80
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    const-string v3, "google"

    #@24
    .line 81
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    const-string v3, "hmd global"

    #@29
    .line 82
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    const-string v3, "infinix"

    #@2e
    .line 83
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    const-string v3, "infinix mobility limited"

    #@33
    .line 84
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    const-string v3, "itel"

    #@38
    .line 85
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    const-string v3, "kyocera"

    #@3d
    .line 86
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    const-string v3, "lenovo"

    #@42
    .line 87
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    const-string v3, "lge"

    #@47
    .line 88
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    const-string v3, "motorola"

    #@4c
    .line 89
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    const-string v3, "nothing"

    #@51
    .line 90
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    const-string v3, "oneplus"

    #@56
    .line 91
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    const-string v3, "oppo"

    #@5b
    .line 92
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    const-string v3, "realme"

    #@60
    .line 93
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    const-string v3, "robolectric"

    #@65
    .line 94
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    const-string v3, "samsung"

    #@6a
    .line 95
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    const-string v1, "sharp"

    #@6f
    .line 96
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    const-string v1, "sony"

    #@74
    .line 97
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    const-string v1, "tcl"

    #@79
    .line 98
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    const-string v1, "tecno"

    #@7e
    .line 99
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@81
    const-string v1, "tecno mobile limited"

    #@83
    .line 100
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    const-string v1, "vivo"

    #@88
    .line 101
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    const-string v1, "wingtech"

    #@8d
    .line 102
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@90
    const-string v1, "xiaomi"

    #@92
    .line 103
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@95
    .line 104
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@98
    move-result-object v1

    #@99
    sput-object v1, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS:Ljava/util/Map;

    #@9b
    .line 110
    new-instance v1, Ljava/util/HashMap;

    #@9d
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@a0
    const-string v2, "asus"

    #@a2
    .line 111
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a5
    const-string v2, "jio"

    #@a7
    .line 112
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@aa
    .line 113
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@ad
    move-result-object v0

    #@ae
    sput-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_BRANDS:Ljava/util/Map;

    #@b0
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static applyIfAvailable(Landroid/app/Activity;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 229
    invoke-static {p0}, Lcom/google/android/material/color/DynamicColors;->applyToActivityIfAvailable(Landroid/app/Activity;)V

    #@3
    return-void
.end method

.method public static applyIfAvailable(Landroid/app/Activity;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 241
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>()V

    #@5
    .line 242
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->setThemeOverlay(I)Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    #@c
    move-result-object p1

    #@d
    .line 241
    invoke-static {p0, p1}, Lcom/google/android/material/color/DynamicColors;->applyToActivityIfAvailable(Landroid/app/Activity;Lcom/google/android/material/color/DynamicColorsOptions;)V

    #@10
    return-void
.end method

.method public static applyIfAvailable(Landroid/app/Activity;Lcom/google/android/material/color/DynamicColors$Precondition;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 256
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>()V

    #@5
    .line 257
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->setPrecondition(Lcom/google/android/material/color/DynamicColors$Precondition;)Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    #@c
    move-result-object p1

    #@d
    .line 256
    invoke-static {p0, p1}, Lcom/google/android/material/color/DynamicColors;->applyToActivityIfAvailable(Landroid/app/Activity;Lcom/google/android/material/color/DynamicColorsOptions;)V

    #@10
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;)V
    .registers 2

    #@0
    .line 130
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>()V

    #@5
    invoke-virtual {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    #@8
    move-result-object v0

    #@9
    invoke-static {p0, v0}, Lcom/google/android/material/color/DynamicColors;->applyToActivitiesIfAvailable(Landroid/app/Application;Lcom/google/android/material/color/DynamicColorsOptions;)V

    #@c
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 145
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>()V

    #@5
    .line 146
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->setThemeOverlay(I)Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    #@c
    move-result-object p1

    #@d
    .line 145
    invoke-static {p0, p1}, Lcom/google/android/material/color/DynamicColors;->applyToActivitiesIfAvailable(Landroid/app/Application;Lcom/google/android/material/color/DynamicColorsOptions;)V

    #@10
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;ILcom/google/android/material/color/DynamicColors$Precondition;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 179
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>()V

    #@5
    .line 182
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->setThemeOverlay(I)Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    #@8
    move-result-object p1

    #@9
    .line 183
    invoke-virtual {p1, p2}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->setPrecondition(Lcom/google/android/material/color/DynamicColors$Precondition;)Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    #@c
    move-result-object p1

    #@d
    .line 184
    invoke-virtual {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    #@10
    move-result-object p1

    #@11
    .line 179
    invoke-static {p0, p1}, Lcom/google/android/material/color/DynamicColors;->applyToActivitiesIfAvailable(Landroid/app/Application;Lcom/google/android/material/color/DynamicColorsOptions;)V

    #@14
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;Lcom/google/android/material/color/DynamicColors$Precondition;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 162
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>()V

    #@5
    .line 163
    invoke-virtual {v0, p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->setPrecondition(Lcom/google/android/material/color/DynamicColors$Precondition;)Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    #@c
    move-result-object p1

    #@d
    .line 162
    invoke-static {p0, p1}, Lcom/google/android/material/color/DynamicColors;->applyToActivitiesIfAvailable(Landroid/app/Application;Lcom/google/android/material/color/DynamicColorsOptions;)V

    #@10
    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;Lcom/google/android/material/color/DynamicColorsOptions;)V
    .registers 3

    #@0
    .line 216
    new-instance v0, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/material/color/DynamicColors$DynamicColorsActivityLifecycleCallbacks;-><init>(Lcom/google/android/material/color/DynamicColorsOptions;)V

    #@5
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    #@8
    return-void
.end method

.method public static applyToActivityIfAvailable(Landroid/app/Activity;)V
    .registers 2

    #@0
    .line 267
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;-><init>()V

    #@5
    invoke-virtual {v0}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->build()Lcom/google/android/material/color/DynamicColorsOptions;

    #@8
    move-result-object v0

    #@9
    invoke-static {p0, v0}, Lcom/google/android/material/color/DynamicColors;->applyToActivityIfAvailable(Landroid/app/Activity;Lcom/google/android/material/color/DynamicColorsOptions;)V

    #@c
    return-void
.end method

.method public static applyToActivityIfAvailable(Landroid/app/Activity;Lcom/google/android/material/color/DynamicColorsOptions;)V
    .registers 4

    #@0
    .line 280
    invoke-static {}, Lcom/google/android/material/color/DynamicColors;->isDynamicColorAvailable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 286
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/material/color/DynamicColorsOptions;->getContentBasedSeedColor()Ljava/lang/Integer;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_1d

    #@d
    .line 288
    invoke-virtual {p1}, Lcom/google/android/material/color/DynamicColorsOptions;->getThemeOverlay()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_18

    #@13
    .line 289
    invoke-static {p0}, Lcom/google/android/material/color/DynamicColors;->getDefaultThemeOverlay(Landroid/content/Context;)I

    #@16
    move-result v0

    #@17
    goto :goto_1e

    #@18
    .line 290
    :cond_18
    invoke-virtual {p1}, Lcom/google/android/material/color/DynamicColorsOptions;->getThemeOverlay()I

    #@1b
    move-result v0

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 v0, 0x0

    #@1e
    .line 293
    :goto_1e
    invoke-virtual {p1}, Lcom/google/android/material/color/DynamicColorsOptions;->getPrecondition()Lcom/google/android/material/color/DynamicColors$Precondition;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v1, p0, v0}, Lcom/google/android/material/color/DynamicColors$Precondition;->shouldApplyDynamicColors(Landroid/app/Activity;I)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_6c

    #@28
    .line 295
    invoke-virtual {p1}, Lcom/google/android/material/color/DynamicColorsOptions;->getContentBasedSeedColor()Ljava/lang/Integer;

    #@2b
    move-result-object v1

    #@2c
    if-eqz v1, :cond_62

    #@2e
    .line 297
    sget v0, Lcom/google/android/material/R$attr;->isLightTheme:I

    #@30
    const/4 v1, 0x1

    #@31
    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_44

    #@37
    .line 299
    invoke-virtual {p1}, Lcom/google/android/material/color/DynamicColorsOptions;->getContentBasedSeedColor()Ljava/lang/Integer;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@3e
    move-result v0

    #@3f
    invoke-static {v0}, Lcom/google/android/material/color/utilities/Scheme;->lightContent(I)Lcom/google/android/material/color/utilities/Scheme;

    #@42
    move-result-object v0

    #@43
    goto :goto_50

    #@44
    .line 300
    :cond_44
    invoke-virtual {p1}, Lcom/google/android/material/color/DynamicColorsOptions;->getContentBasedSeedColor()Ljava/lang/Integer;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@4b
    move-result v0

    #@4c
    invoke-static {v0}, Lcom/google/android/material/color/utilities/Scheme;->darkContent(I)Lcom/google/android/material/color/utilities/Scheme;

    #@4f
    move-result-object v0

    #@50
    .line 301
    :goto_50
    invoke-static {}, Lcom/google/android/material/color/ColorResourcesOverride;->getInstance()Lcom/google/android/material/color/ColorResourcesOverride;

    #@53
    move-result-object v1

    #@54
    if-nez v1, :cond_57

    #@56
    return-void

    #@57
    .line 307
    :cond_57
    invoke-static {v0}, Lcom/google/android/material/color/MaterialColorUtilitiesHelper;->createColorResourcesIdsToColorValues(Lcom/google/android/material/color/utilities/Scheme;)Ljava/util/Map;

    #@5a
    move-result-object v0

    #@5b
    .line 305
    invoke-interface {v1, p0, v0}, Lcom/google/android/material/color/ColorResourcesOverride;->applyIfPossible(Landroid/content/Context;Ljava/util/Map;)Z

    #@5e
    move-result v0

    #@5f
    if-nez v0, :cond_65

    #@61
    return-void

    #@62
    .line 312
    :cond_62
    invoke-static {p0, v0}, Lcom/google/android/material/color/ThemeUtils;->applyThemeOverlay(Landroid/content/Context;I)V

    #@65
    .line 316
    :cond_65
    invoke-virtual {p1}, Lcom/google/android/material/color/DynamicColorsOptions;->getOnAppliedCallback()Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    #@68
    move-result-object p1

    #@69
    invoke-interface {p1, p0}, Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;->onApplied(Landroid/app/Activity;)V

    #@6c
    :cond_6c
    return-void
.end method

.method private static getDefaultThemeOverlay(Landroid/content/Context;)I
    .registers 2

    #@0
    .line 375
    sget-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_THEME_OVERLAY_ATTRIBUTE:[I

    #@2
    .line 376
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p0

    #@6
    const/4 v0, 0x0

    #@7
    .line 377
    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@a
    move-result v0

    #@b
    .line 378
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@e
    return v0
.end method

.method public static isDynamicColorAvailable()Z
    .registers 4

    #@0
    .line 360
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1f

    #@4
    const/4 v2, 0x0

    #@5
    if-ge v0, v1, :cond_8

    #@7
    return v2

    #@8
    .line 363
    :cond_8
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    #@b
    move-result v0

    #@c
    const/4 v1, 0x1

    #@d
    if-eqz v0, :cond_10

    #@f
    return v1

    #@10
    .line 366
    :cond_10
    sget-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_MANUFACTURERS:Ljava/util/Map;

    #@12
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@14
    .line 367
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

    #@1e
    if-nez v0, :cond_2e

    #@20
    .line 369
    sget-object v0, Lcom/google/android/material/color/DynamicColors;->DYNAMIC_COLOR_SUPPORTED_BRANDS:Ljava/util/Map;

    #@22
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    #@24
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;

    #@2e
    :cond_2e
    if-eqz v0, :cond_37

    #@30
    .line 371
    invoke-interface {v0}, Lcom/google/android/material/color/DynamicColors$DeviceSupportCondition;->isSupported()Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_37

    #@36
    move v2, v1

    #@37
    :cond_37
    return v2
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 332
    invoke-static {p0, v0}, Lcom/google/android/material/color/DynamicColors;->wrapContextIfAvailable(Landroid/content/Context;I)Landroid/content/Context;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;I)Landroid/content/Context;
    .registers 3

    #@0
    .line 347
    invoke-static {}, Lcom/google/android/material/color/DynamicColors;->isDynamicColorAvailable()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-object p0

    #@7
    :cond_7
    if-nez p1, :cond_d

    #@9
    .line 351
    invoke-static {p0}, Lcom/google/android/material/color/DynamicColors;->getDefaultThemeOverlay(Landroid/content/Context;)I

    #@c
    move-result p1

    #@d
    :cond_d
    if-nez p1, :cond_10

    #@f
    goto :goto_16

    #@10
    .line 353
    :cond_10
    new-instance v0, Landroid/view/ContextThemeWrapper;

    #@12
    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@15
    move-object p0, v0

    #@16
    :goto_16
    return-object p0
.end method
