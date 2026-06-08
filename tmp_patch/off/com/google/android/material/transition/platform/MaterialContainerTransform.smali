.class public final Lcom/google/android/material/transition/platform/MaterialContainerTransform;
.super Landroid/transition/Transition;
.source "MaterialContainerTransform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$FitMode;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$FadeMode;,
        Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDirection;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

.field private static final ELEVATION_NOT_SET:F = -1.0f

.field public static final FADE_MODE_CROSS:I = 0x2

.field public static final FADE_MODE_IN:I = 0x0

.field public static final FADE_MODE_OUT:I = 0x1

.field public static final FADE_MODE_THROUGH:I = 0x3

.field public static final FIT_MODE_AUTO:I = 0x0

.field public static final FIT_MODE_HEIGHT:I = 0x2

.field public static final FIT_MODE_WIDTH:I = 0x1

.field private static final PROP_BOUNDS:Ljava/lang/String; = "materialContainerTransition:bounds"

.field private static final PROP_SHAPE_APPEARANCE:Ljava/lang/String; = "materialContainerTransition:shapeAppearance"

.field private static final TAG:Ljava/lang/String; = "MaterialContainerTransform"

.field public static final TRANSITION_DIRECTION_AUTO:I = 0x0

.field public static final TRANSITION_DIRECTION_ENTER:I = 0x1

.field public static final TRANSITION_DIRECTION_RETURN:I = 0x2

.field private static final TRANSITION_PROPS:[Ljava/lang/String;


# instance fields
.field private appliedThemeValues:Z

.field private containerColor:I

.field private drawDebugEnabled:Z

.field private drawingViewId:I

.field private elevationShadowEnabled:Z

.field private endContainerColor:I

.field private endElevation:F

.field private endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private endView:Landroid/view/View;

.field private endViewId:I

.field private fadeMode:I

.field private fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private fitMode:I

.field private holdAtEndEnabled:Z

.field private pathMotionCustom:Z

.field private scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private scrimColor:I

.field private shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

.field private startContainerColor:I

.field private startElevation:F

.field private startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private startView:Landroid/view/View;

.field private startViewId:I

.field private transitionDirection:I


# direct methods
.method static constructor <clinit>()V
    .registers 21

    #@0
    const-string v0, "materialContainerTransition:bounds"

    #@2
    const-string v1, "materialContainerTransition:shapeAppearance"

    #@4
    .line 201
    filled-new-array {v0, v1}, [Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TRANSITION_PROPS:[Ljava/lang/String;

    #@a
    .line 207
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@c
    new-instance v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@e
    const/high16 v1, 0x3e800000    # 0.25f

    #@10
    const/4 v7, 0x0

    #@11
    invoke-direct {v2, v7, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@14
    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@16
    const/high16 v8, 0x3f800000    # 1.0f

    #@18
    invoke-direct {v3, v7, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@1b
    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@1d
    invoke-direct {v4, v7, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@20
    new-instance v5, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@22
    const/high16 v1, 0x3f400000    # 0.75f

    #@24
    invoke-direct {v5, v7, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@27
    const/4 v6, 0x0

    #@28
    move-object v1, v0

    #@29
    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    #@2c
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@2e
    .line 213
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@30
    new-instance v10, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@32
    const v1, 0x3f19999a    # 0.6f

    #@35
    const v2, 0x3f666666    # 0.9f

    #@38
    invoke-direct {v10, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@3b
    new-instance v11, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@3d
    invoke-direct {v11, v7, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@40
    new-instance v12, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@42
    invoke-direct {v12, v7, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@45
    new-instance v13, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@47
    const v3, 0x3e99999a    # 0.3f

    #@4a
    invoke-direct {v13, v3, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@4d
    const/4 v14, 0x0

    #@4e
    move-object v9, v0

    #@4f
    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    #@52
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@54
    .line 222
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@56
    new-instance v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@58
    const v4, 0x3ecccccd    # 0.4f

    #@5b
    const v5, 0x3dcccccd    # 0.1f

    #@5e
    invoke-direct {v3, v5, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@61
    new-instance v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@63
    invoke-direct {v4, v5, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@66
    new-instance v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@68
    invoke-direct {v6, v5, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@6b
    new-instance v8, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@6d
    invoke-direct {v8, v5, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@70
    const/16 v20, 0x0

    #@72
    move-object v15, v0

    #@73
    move-object/from16 v16, v3

    #@75
    move-object/from16 v17, v4

    #@77
    move-object/from16 v18, v6

    #@79
    move-object/from16 v19, v8

    #@7b
    invoke-direct/range {v15 .. v20}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    #@7e
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@80
    .line 228
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@82
    new-instance v10, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@84
    invoke-direct {v10, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@87
    new-instance v11, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@89
    invoke-direct {v11, v7, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@8c
    new-instance v12, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@8e
    invoke-direct {v12, v7, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@91
    new-instance v13, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@93
    const v1, 0x3e4ccccd    # 0.2f

    #@96
    invoke-direct {v13, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;-><init>(FF)V

    #@99
    move-object v9, v0

    #@9a
    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    #@9d
    sput-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@9f
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    .line 263
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 237
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    #@6
    .line 238
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    #@8
    .line 239
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->pathMotionCustom:Z

    #@a
    .line 240
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->appliedThemeValues:Z

    #@c
    const v1, 0x1020002

    #@f
    .line 241
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    #@11
    const/4 v1, -0x1

    #@12
    .line 242
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    #@14
    .line 243
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    #@16
    .line 244
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    #@18
    .line 245
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    #@1a
    .line 246
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    #@1c
    const/high16 v1, 0x52000000

    #@1e
    .line 247
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    #@20
    .line 248
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    #@22
    .line 249
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    #@24
    .line 250
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    #@26
    .line 259
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@28
    const/16 v2, 0x1c

    #@2a
    if-lt v1, v2, :cond_2d

    #@2c
    const/4 v0, 0x1

    #@2d
    :cond_2d
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    #@2f
    const/high16 v0, -0x40800000    # -1.0f

    #@31
    .line 260
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    #@33
    .line 261
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    #@35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 7

    #@0
    .line 267
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 237
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    #@6
    .line 238
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    #@8
    .line 239
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->pathMotionCustom:Z

    #@a
    .line 240
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->appliedThemeValues:Z

    #@c
    const v1, 0x1020002

    #@f
    .line 241
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    #@11
    const/4 v1, -0x1

    #@12
    .line 242
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    #@14
    .line 243
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    #@16
    .line 244
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    #@18
    .line 245
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    #@1a
    .line 246
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    #@1c
    const/high16 v1, 0x52000000

    #@1e
    .line 247
    iput v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    #@20
    .line 248
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    #@22
    .line 249
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    #@24
    .line 250
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    #@26
    .line 259
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@28
    const/16 v2, 0x1c

    #@2a
    const/4 v3, 0x1

    #@2b
    if-lt v1, v2, :cond_2e

    #@2d
    move v0, v3

    #@2e
    :cond_2e
    iput-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    #@30
    const/high16 v0, -0x40800000    # -1.0f

    #@32
    .line 260
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    #@34
    .line 261
    iput v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    #@36
    .line 268
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->maybeApplyThemeValues(Landroid/content/Context;Z)V

    #@39
    .line 269
    iput-boolean v3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->appliedThemeValues:Z

    #@3b
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/transition/platform/MaterialContainerTransform;)Z
    .registers 1

    #@0
    .line 126
    iget-boolean p0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    #@2
    return p0
.end method

.method private buildThresholdsGroup(Z)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;
    .registers 4

    #@0
    .line 1053
    invoke-virtual {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getPathMotion()Landroid/transition/PathMotion;

    #@3
    move-result-object v0

    #@4
    .line 1054
    instance-of v1, v0, Landroid/transition/ArcMotion;

    #@6
    if-nez v1, :cond_16

    #@8
    instance-of v0, v0, Lcom/google/android/material/transition/platform/MaterialArcMotion;

    #@a
    if-eqz v0, :cond_d

    #@c
    goto :goto_16

    #@d
    .line 1058
    :cond_d
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@f
    sget-object v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@11
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getThresholdsOrDefault(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@14
    move-result-object p1

    #@15
    return-object p1

    #@16
    .line 1055
    :cond_16
    :goto_16
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_ENTER_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@18
    sget-object v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->DEFAULT_RETURN_THRESHOLDS_ARC:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@1a
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getThresholdsOrDefault(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@1d
    move-result-object p1

    #@1e
    return-object p1
.end method

.method private static calculateDrawableBounds(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;
    .registers 4

    #@0
    if-eqz p1, :cond_a

    #@2
    .line 1031
    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    #@5
    move-result-object p0

    #@6
    .line 1032
    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    #@9
    return-object p0

    #@a
    .line 1035
    :cond_a
    new-instance p1, Landroid/graphics/RectF;

    #@c
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@f
    move-result p2

    #@10
    int-to-float p2, p2

    #@11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@14
    move-result p0

    #@15
    int-to-float p0, p0

    #@16
    const/4 p3, 0x0

    #@17
    invoke-direct {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@1a
    return-object p1
.end method

.method private static captureShapeAppearance(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3

    #@0
    .line 850
    invoke-static {p0, p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getShapeAppearance(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@3
    move-result-object p0

    #@4
    .line 851
    invoke-static {p0, p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->convertToRelativeCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 6

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p2, v0, :cond_c

    #@3
    .line 820
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@5
    invoke-static {p1, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->findDescendantOrAncestorById(Landroid/view/View;I)Landroid/view/View;

    #@8
    move-result-object p1

    #@9
    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@b
    goto :goto_31

    #@c
    :cond_c
    if-eqz p1, :cond_11

    #@e
    .line 822
    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@10
    goto :goto_31

    #@11
    .line 823
    :cond_11
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@13
    sget p2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    #@15
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@18
    move-result-object p1

    #@19
    instance-of p1, p1, Landroid/view/View;

    #@1b
    if-eqz p1, :cond_31

    #@1d
    .line 824
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@1f
    sget p2, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    #@21
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@24
    move-result-object p1

    #@25
    check-cast p1, Landroid/view/View;

    #@27
    .line 827
    iget-object p2, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@29
    sget v0, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    #@2b
    const/4 v1, 0x0

    #@2c
    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@2f
    .line 830
    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@31
    .line 832
    :cond_31
    :goto_31
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@33
    .line 834
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    #@36
    move-result p2

    #@37
    if-nez p2, :cond_45

    #@39
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@3c
    move-result p2

    #@3d
    if-nez p2, :cond_45

    #@3f
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@42
    move-result p2

    #@43
    if-eqz p2, :cond_66

    #@45
    .line 836
    :cond_45
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@48
    move-result-object p2

    #@49
    if-nez p2, :cond_50

    #@4b
    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->getRelativeBounds(Landroid/view/View;)Landroid/graphics/RectF;

    #@4e
    move-result-object p2

    #@4f
    goto :goto_54

    #@50
    :cond_50
    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    #@53
    move-result-object p2

    #@54
    .line 837
    :goto_54
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@56
    const-string v1, "materialContainerTransition:bounds"

    #@58
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 838
    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@5d
    const-string v0, "materialContainerTransition:shapeAppearance"

    #@5f
    .line 840
    invoke-static {p1, p2, p3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->captureShapeAppearance(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@62
    move-result-object p1

    #@63
    .line 838
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    :cond_66
    return-void
.end method

.method private static getElevationOrDefault(FLandroid/view/View;)F
    .registers 3

    #@0
    const/high16 v0, -0x40800000    # -1.0f

    #@2
    cmpl-float v0, p0, v0

    #@4
    if-eqz v0, :cond_7

    #@6
    goto :goto_b

    #@7
    .line 1025
    :cond_7
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@a
    move-result p0

    #@b
    :goto_b
    return p0
.end method

.method private static getShapeAppearance(Landroid/view/View;Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 4

    #@0
    if-eqz p1, :cond_3

    #@2
    return-object p1

    #@3
    .line 862
    :cond_3
    sget p1, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    #@5
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@8
    move-result-object p1

    #@9
    instance-of p1, p1, Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@b
    if-eqz p1, :cond_16

    #@d
    .line 863
    sget p1, Lcom/google/android/material/R$id;->mtrl_motion_snapshot_view:I

    #@f
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@12
    move-result-object p0

    #@13
    check-cast p0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@15
    return-object p0

    #@16
    .line 866
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@19
    move-result-object p1

    #@1a
    .line 867
    invoke-static {p1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getTransitionShapeAppearanceResId(Landroid/content/Context;)I

    #@1d
    move-result v0

    #@1e
    const/4 v1, -0x1

    #@1f
    if-eq v0, v1, :cond_2b

    #@21
    const/4 p0, 0x0

    #@22
    .line 869
    invoke-static {p1, v0, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@25
    move-result-object p0

    #@26
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@29
    move-result-object p0

    #@2a
    return-object p0

    #@2b
    .line 872
    :cond_2b
    instance-of p1, p0, Lcom/google/android/material/shape/Shapeable;

    #@2d
    if-eqz p1, :cond_36

    #@2f
    .line 873
    check-cast p0, Lcom/google/android/material/shape/Shapeable;

    #@31
    invoke-interface {p0}, Lcom/google/android/material/shape/Shapeable;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@34
    move-result-object p0

    #@35
    return-object p0

    #@36
    .line 876
    :cond_36
    invoke-static {}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@39
    move-result-object p0

    #@3a
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@3d
    move-result-object p0

    #@3e
    return-object p0
.end method

.method private getThresholdsOrDefault(ZLcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;
    .registers 10

    #@0
    if-eqz p1, :cond_3

    #@2
    goto :goto_4

    #@3
    :cond_3
    move-object p2, p3

    #@4
    .line 1068
    :goto_4
    new-instance p1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@6
    iget-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@8
    .line 1069
    # getter for: Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->fade:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@b
    move-result-object v0

    #@c
    invoke-static {p3, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object p3

    #@10
    move-object v1, p3

    #@11
    check-cast v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@13
    iget-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@15
    .line 1070
    # getter for: Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->scale:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@18
    move-result-object v0

    #@19
    invoke-static {p3, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object p3

    #@1d
    move-object v2, p3

    #@1e
    check-cast v2, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@20
    iget-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@22
    .line 1071
    # getter for: Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->scaleMask:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@25
    move-result-object v0

    #@26
    invoke-static {p3, v0}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object p3

    #@2a
    move-object v3, p3

    #@2b
    check-cast v3, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@2d
    iget-object p3, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@2f
    .line 1072
    # getter for: Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->shapeMask:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    invoke-static {p2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;->access$700(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@32
    move-result-object p2

    #@33
    invoke-static {p3, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object p2

    #@37
    move-object v4, p2

    #@38
    check-cast v4, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@3a
    const/4 v5, 0x0

    #@3b
    move-object v0, p1

    #@3c
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    #@3f
    return-object p1
.end method

.method private static getTransitionShapeAppearanceResId(Landroid/content/Context;)I
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    .line 881
    sget v1, Lcom/google/android/material/R$attr;->transitionShapeAppearance:I

    #@5
    const/4 v2, 0x0

    #@6
    aput v1, v0, v2

    #@8
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@b
    move-result-object p0

    #@c
    const/4 v0, -0x1

    #@d
    .line 882
    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@10
    move-result v0

    #@11
    .line 883
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@14
    return v0
.end method

.method private isEntering(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 6

    #@0
    .line 1040
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-eqz v0, :cond_24

    #@6
    if-eq v0, v2, :cond_23

    #@8
    const/4 p1, 0x2

    #@9
    if-ne v0, p1, :cond_c

    #@b
    return v1

    #@c
    .line 1048
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance p2, Ljava/lang/StringBuilder;

    #@10
    const-string v0, "Invalid transition direction: "

    #@12
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@15
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    #@17
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p2

    #@1b
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p2

    #@1f
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw p1

    #@23
    :cond_23
    return v2

    #@24
    .line 1042
    :cond_24
    invoke-static {p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->calculateArea(Landroid/graphics/RectF;)F

    #@27
    move-result p2

    #@28
    invoke-static {p1}, Lcom/google/android/material/transition/platform/TransitionUtils;->calculateArea(Landroid/graphics/RectF;)F

    #@2b
    move-result p1

    #@2c
    cmpl-float p1, p2, p1

    #@2e
    if-lez p1, :cond_31

    #@30
    move v1, v2

    #@31
    :cond_31
    return v1
.end method

.method private maybeApplyThemeValues(Landroid/content/Context;Z)V
    .registers 5

    #@0
    .line 1012
    sget v0, Lcom/google/android/material/R$attr;->motionEasingEmphasizedInterpolator:I

    #@2
    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    #@4
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/transition/platform/TransitionUtils;->maybeApplyThemeInterpolator(Landroid/transition/Transition;Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Z

    #@7
    if-eqz p2, :cond_c

    #@9
    .line 1018
    sget p2, Lcom/google/android/material/R$attr;->motionDurationLong2:I

    #@b
    goto :goto_e

    #@c
    :cond_c
    sget p2, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    #@e
    .line 1017
    :goto_e
    invoke-static {p0, p1, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->maybeApplyThemeDuration(Landroid/transition/Transition;Landroid/content/Context;I)Z

    #@11
    .line 1019
    iget-boolean p2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->pathMotionCustom:Z

    #@13
    if-nez p2, :cond_1a

    #@15
    .line 1020
    sget p2, Lcom/google/android/material/R$attr;->motionPath:I

    #@17
    invoke-static {p0, p1, p2}, Lcom/google/android/material/transition/platform/TransitionUtils;->maybeApplyThemePath(Landroid/transition/Transition;Landroid/content/Context;I)Z

    #@1a
    :cond_1a
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 5

    #@0
    .line 811
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endView:Landroid/view/View;

    #@2
    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    #@4
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@6
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@9
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 5

    #@0
    .line 806
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startView:Landroid/view/View;

    #@2
    iget v1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    #@4
    iget-object v2, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@6
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->captureValues(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@9
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 33

    #@0
    move-object/from16 v6, p0

    #@2
    move-object/from16 v0, p2

    #@4
    move-object/from16 v1, p3

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v0, :cond_11a

    #@9
    if-nez v1, :cond_d

    #@b
    goto/16 :goto_11a

    #@d
    .line 897
    :cond_d
    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@f
    const-string v4, "materialContainerTransition:bounds"

    #@11
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    move-object v10, v3

    #@16
    check-cast v10, Landroid/graphics/RectF;

    #@18
    .line 898
    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@1a
    const-string v5, "materialContainerTransition:shapeAppearance"

    #@1c
    .line 899
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    move-object v11, v3

    #@21
    check-cast v11, Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@23
    if-eqz v10, :cond_113

    #@25
    if-nez v11, :cond_29

    #@27
    goto/16 :goto_113

    #@29
    .line 905
    :cond_29
    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@2b
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    move-object v14, v3

    #@30
    check-cast v14, Landroid/graphics/RectF;

    #@32
    .line 906
    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    #@34
    .line 907
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v3

    #@38
    move-object v15, v3

    #@39
    check-cast v15, Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@3b
    if-eqz v14, :cond_10b

    #@3d
    if-nez v15, :cond_41

    #@3f
    goto/16 :goto_10b

    #@41
    .line 913
    :cond_41
    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@43
    .line 914
    iget-object v5, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    #@45
    .line 917
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@48
    move-result-object v0

    #@49
    if-eqz v0, :cond_4d

    #@4b
    move-object v0, v5

    #@4c
    goto :goto_4e

    #@4d
    :cond_4d
    move-object v0, v4

    #@4e
    .line 918
    :goto_4e
    iget v1, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    #@50
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    #@53
    move-result v3

    #@54
    if-ne v1, v3, :cond_5f

    #@56
    .line 919
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@59
    move-result-object v1

    #@5a
    check-cast v1, Landroid/view/View;

    #@5c
    move-object v2, v1

    #@5d
    move-object v1, v0

    #@5e
    goto :goto_6a

    #@5f
    .line 922
    :cond_5f
    iget v1, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    #@61
    invoke-static {v0, v1}, Lcom/google/android/material/transition/platform/TransitionUtils;->findAncestorById(Landroid/view/View;I)Landroid/view/View;

    #@64
    move-result-object v1

    #@65
    move-object/from16 v28, v2

    #@67
    move-object v2, v1

    #@68
    move-object/from16 v1, v28

    #@6a
    .line 927
    :goto_6a
    invoke-static {v2}, Lcom/google/android/material/transition/platform/TransitionUtils;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    #@6d
    move-result-object v3

    #@6e
    .line 928
    iget v7, v3, Landroid/graphics/RectF;->left:F

    #@70
    neg-float v7, v7

    #@71
    .line 929
    iget v3, v3, Landroid/graphics/RectF;->top:F

    #@73
    neg-float v3, v3

    #@74
    .line 930
    invoke-static {v2, v1, v7, v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->calculateDrawableBounds(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;

    #@77
    move-result-object v1

    #@78
    .line 931
    invoke-virtual {v10, v7, v3}, Landroid/graphics/RectF;->offset(FF)V

    #@7b
    .line 932
    invoke-virtual {v14, v7, v3}, Landroid/graphics/RectF;->offset(FF)V

    #@7e
    .line 934
    invoke-direct {v6, v10, v14}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->isEntering(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    #@81
    move-result v3

    #@82
    .line 936
    iget-boolean v7, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->appliedThemeValues:Z

    #@84
    if-nez v7, :cond_8d

    #@86
    .line 939
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@89
    move-result-object v0

    #@8a
    invoke-direct {v6, v0, v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->maybeApplyThemeValues(Landroid/content/Context;Z)V

    #@8d
    .line 942
    :cond_8d
    new-instance v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    #@8f
    move-object v7, v0

    #@90
    .line 944
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getPathMotion()Landroid/transition/PathMotion;

    #@93
    move-result-object v8

    #@94
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    #@96
    .line 948
    invoke-static {v9, v4}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getElevationOrDefault(FLandroid/view/View;)F

    #@99
    move-result v12

    #@9a
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    #@9c
    .line 952
    invoke-static {v9, v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->getElevationOrDefault(FLandroid/view/View;)F

    #@9f
    move-result v16

    #@a0
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    #@a2
    move/from16 v17, v9

    #@a4
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    #@a6
    move/from16 v18, v9

    #@a8
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    #@aa
    move/from16 v19, v9

    #@ac
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    #@ae
    move/from16 v20, v9

    #@b0
    iget-boolean v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    #@b2
    move/from16 v22, v9

    #@b4
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    #@b6
    .line 959
    invoke-static {v9, v3}, Lcom/google/android/material/transition/platform/FadeModeEvaluators;->get(IZ)Lcom/google/android/material/transition/platform/FadeModeEvaluator;

    #@b9
    move-result-object v23

    #@ba
    iget v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    #@bc
    .line 960
    invoke-static {v9, v3, v10, v14}, Lcom/google/android/material/transition/platform/FitModeEvaluators;->get(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/transition/platform/FitModeEvaluator;

    #@bf
    move-result-object v24

    #@c0
    .line 961
    invoke-direct {v6, v3}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->buildThresholdsGroup(Z)Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;

    #@c3
    move-result-object v25

    #@c4
    iget-boolean v9, v6, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    #@c6
    move/from16 v26, v9

    #@c8
    const/16 v27, 0x0

    #@ca
    move-object v9, v4

    #@cb
    move-object v13, v5

    #@cc
    move/from16 v21, v3

    #@ce
    invoke-direct/range {v7 .. v27}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/platform/FadeModeEvaluator;Lcom/google/android/material/transition/platform/FitModeEvaluator;Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholdsGroup;ZLcom/google/android/material/transition/platform/MaterialContainerTransform$1;)V

    #@d1
    .line 965
    iget v3, v1, Landroid/graphics/RectF;->left:F

    #@d3
    .line 966
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@d6
    move-result v3

    #@d7
    iget v7, v1, Landroid/graphics/RectF;->top:F

    #@d9
    .line 967
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    #@dc
    move-result v7

    #@dd
    iget v8, v1, Landroid/graphics/RectF;->right:F

    #@df
    .line 968
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    #@e2
    move-result v8

    #@e3
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    #@e5
    .line 969
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@e8
    move-result v1

    #@e9
    .line 965
    invoke-virtual {v0, v3, v7, v8, v1}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->setBounds(IIII)V

    #@ec
    const/4 v1, 0x2

    #@ed
    new-array v1, v1, [F

    #@ef
    .line 971
    fill-array-data v1, :array_11c

    #@f2
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@f5
    move-result-object v7

    #@f6
    .line 972
    new-instance v1, Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;

    #@f8
    invoke-direct {v1, v6, v0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$1;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform;Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V

    #@fb
    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@fe
    .line 980
    new-instance v8, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;

    #@100
    move-object v3, v0

    #@101
    move-object v0, v8

    #@102
    move-object/from16 v1, p0

    #@104
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$2;-><init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform;Landroid/view/View;Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;Landroid/view/View;Landroid/view/View;)V

    #@107
    invoke-virtual {v6, v8}, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    #@10a
    return-object v7

    #@10b
    .line 909
    :cond_10b
    :goto_10b
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TAG:Ljava/lang/String;

    #@10d
    const-string v1, "Skipping due to null end bounds. Ensure end view is laid out and measured."

    #@10f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@112
    return-object v2

    #@113
    .line 901
    :cond_113
    :goto_113
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TAG:Ljava/lang/String;

    #@115
    const-string v1, "Skipping due to null start bounds. Ensure start view is laid out and measured."

    #@117
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11a
    :cond_11a
    :goto_11a
    return-object v2

    #@11b
    nop

    #@11c
    :array_11c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getContainerColor()I
    .registers 2

    #@0
    .line 491
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    #@2
    return v0
.end method

.method public getDrawingViewId()I
    .registers 2

    #@0
    .line 463
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    #@2
    return v0
.end method

.method public getEndContainerColor()I
    .registers 2

    #@0
    .line 550
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    #@2
    return v0
.end method

.method public getEndElevation()F
    .registers 2

    #@0
    .line 447
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    #@2
    return v0
.end method

.method public getEndShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    #@0
    .line 383
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    return-object v0
.end method

.method public getEndView()Landroid/view/View;
    .registers 2

    #@0
    .line 340
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getEndViewId()I
    .registers 2

    #@0
    .line 308
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    #@2
    return v0
.end method

.method public getFadeMode()I
    .registers 2

    #@0
    .line 637
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    #@2
    return v0
.end method

.method public getFadeProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .registers 2

    #@0
    .line 676
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@2
    return-object v0
.end method

.method public getFitMode()I
    .registers 2

    #@0
    .line 657
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    #@2
    return v0
.end method

.method public getScaleMaskProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .registers 2

    #@0
    .line 718
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@2
    return-object v0
.end method

.method public getScaleProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .registers 2

    #@0
    .line 697
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@2
    return-object v0
.end method

.method public getScrimColor()I
    .registers 2

    #@0
    .line 591
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    #@2
    return v0
.end method

.method public getShapeMaskProgressThresholds()Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;
    .registers 2

    #@0
    .line 740
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@2
    return-object v0
.end method

.method public getStartContainerColor()I
    .registers 2

    #@0
    .line 523
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    #@2
    return v0
.end method

.method public getStartElevation()F
    .registers 2

    #@0
    .line 427
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    #@2
    return v0
.end method

.method public getStartShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 2

    #@0
    .line 358
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    return-object v0
.end method

.method public getStartView()Landroid/view/View;
    .registers 2

    #@0
    .line 325
    iget-object v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getStartViewId()I
    .registers 2

    #@0
    .line 275
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    #@2
    return v0
.end method

.method public getTransitionDirection()I
    .registers 2

    #@0
    .line 619
    iget v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    #@2
    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    #@0
    .line 801
    sget-object v0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->TRANSITION_PROPS:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isDrawDebugEnabled()Z
    .registers 2

    #@0
    .line 780
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    #@2
    return v0
.end method

.method public isElevationShadowEnabled()Z
    .registers 2

    #@0
    .line 401
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    #@2
    return v0
.end method

.method public isHoldAtEndEnabled()Z
    .registers 2

    #@0
    .line 761
    iget-boolean v0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    #@2
    return v0
.end method

.method public setAllContainerColors(I)V
    .registers 2

    #@0
    .line 580
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    #@2
    .line 581
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    #@4
    .line 582
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    #@6
    return-void
.end method

.method public setContainerColor(I)V
    .registers 2

    #@0
    .line 513
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->containerColor:I

    #@2
    return-void
.end method

.method public setDrawDebugEnabled(Z)V
    .registers 2

    #@0
    .line 789
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawDebugEnabled:Z

    #@2
    return-void
.end method

.method public setDrawingViewId(I)V
    .registers 2

    #@0
    .line 481
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->drawingViewId:I

    #@2
    return-void
.end method

.method public setElevationShadowEnabled(Z)V
    .registers 2

    #@0
    .line 417
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->elevationShadowEnabled:Z

    #@2
    return-void
.end method

.method public setEndContainerColor(I)V
    .registers 2

    #@0
    .line 565
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endContainerColor:I

    #@2
    return-void
.end method

.method public setEndElevation(F)V
    .registers 2

    #@0
    .line 457
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endElevation:F

    #@2
    return-void
.end method

.method public setEndShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 2

    #@0
    .line 393
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    return-void
.end method

.method public setEndView(Landroid/view/View;)V
    .registers 2

    #@0
    .line 349
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endView:Landroid/view/View;

    #@2
    return-void
.end method

.method public setEndViewId(I)V
    .registers 2

    #@0
    .line 319
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->endViewId:I

    #@2
    return-void
.end method

.method public setFadeMode(I)V
    .registers 2

    #@0
    .line 651
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeMode:I

    #@2
    return-void
.end method

.method public setFadeProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .registers 2

    #@0
    .line 687
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fadeProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@2
    return-void
.end method

.method public setFitMode(I)V
    .registers 2

    #@0
    .line 666
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->fitMode:I

    #@2
    return-void
.end method

.method public setHoldAtEndEnabled(Z)V
    .registers 2

    #@0
    .line 771
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->holdAtEndEnabled:Z

    #@2
    return-void
.end method

.method public setPathMotion(Landroid/transition/PathMotion;)V
    .registers 2

    #@0
    .line 794
    invoke-super {p0, p1}, Landroid/transition/Transition;->setPathMotion(Landroid/transition/PathMotion;)V

    #@3
    const/4 p1, 0x1

    #@4
    .line 795
    iput-boolean p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->pathMotionCustom:Z

    #@6
    return-void
.end method

.method public setScaleMaskProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .registers 2

    #@0
    .line 730
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@2
    return-void
.end method

.method public setScaleProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .registers 2

    #@0
    .line 708
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scaleProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@2
    return-void
.end method

.method public setScrimColor(I)V
    .registers 2

    #@0
    .line 607
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->scrimColor:I

    #@2
    return-void
.end method

.method public setShapeMaskProgressThresholds(Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;)V
    .registers 2

    #@0
    .line 752
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->shapeMaskProgressThresholds:Lcom/google/android/material/transition/platform/MaterialContainerTransform$ProgressThresholds;

    #@2
    return-void
.end method

.method public setStartContainerColor(I)V
    .registers 2

    #@0
    .line 540
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startContainerColor:I

    #@2
    return-void
.end method

.method public setStartElevation(F)V
    .registers 2

    #@0
    .line 437
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startElevation:F

    #@2
    return-void
.end method

.method public setStartShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .registers 2

    #@0
    .line 374
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2
    return-void
.end method

.method public setStartView(Landroid/view/View;)V
    .registers 2

    #@0
    .line 334
    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startView:Landroid/view/View;

    #@2
    return-void
.end method

.method public setStartViewId(I)V
    .registers 2

    #@0
    .line 293
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->startViewId:I

    #@2
    return-void
.end method

.method public setTransitionDirection(I)V
    .registers 2

    #@0
    .line 631
    iput p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform;->transitionDirection:I

    #@2
    return-void
.end method
