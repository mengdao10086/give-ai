.class final Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialContainerTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/transition/MaterialContainerTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransitionDrawable"
.end annotation


# static fields
.field private static final COMPAT_SHADOW_COLOR:I = -0x777778

.field private static final SHADOW_COLOR:I = 0x2d000000

.field private static final SHADOW_DX_MULTIPLIER_ADJUSTMENT:F = 0.3f

.field private static final SHADOW_DY_MULTIPLIER_ADJUSTMENT:F = 1.5f


# instance fields
.field private final compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field private final containerPaint:Landroid/graphics/Paint;

.field private currentElevation:F

.field private currentElevationDy:F

.field private final currentEndBounds:Landroid/graphics/RectF;

.field private final currentEndBoundsMasked:Landroid/graphics/RectF;

.field private currentMaskBounds:Landroid/graphics/RectF;

.field private final currentStartBounds:Landroid/graphics/RectF;

.field private final currentStartBoundsMasked:Landroid/graphics/RectF;

.field private final debugPaint:Landroid/graphics/Paint;

.field private final debugPath:Landroid/graphics/Path;

.field private final displayHeight:F

.field private final displayWidth:F

.field private final drawDebugEnabled:Z

.field private final elevationShadowEnabled:Z

.field private final endBounds:Landroid/graphics/RectF;

.field private final endContainerPaint:Landroid/graphics/Paint;

.field private final endElevation:F

.field private final endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final endView:Landroid/view/View;

.field private final entering:Z

.field private final fadeModeEvaluator:Lcom/google/android/material/transition/FadeModeEvaluator;

.field private fadeModeResult:Lcom/google/android/material/transition/FadeModeResult;

.field private final fitModeEvaluator:Lcom/google/android/material/transition/FitModeEvaluator;

.field private fitModeResult:Lcom/google/android/material/transition/FitModeResult;

.field private final maskEvaluator:Lcom/google/android/material/transition/MaskEvaluator;

.field private final motionPathLength:F

.field private final motionPathMeasure:Landroid/graphics/PathMeasure;

.field private final motionPathPosition:[F

.field private progress:F

.field private final progressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

.field private final scrimPaint:Landroid/graphics/Paint;

.field private final shadowPaint:Landroid/graphics/Paint;

.field private final startBounds:Landroid/graphics/RectF;

.field private final startContainerPaint:Landroid/graphics/Paint;

.field private final startElevation:F

.field private final startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final startView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/FadeModeEvaluator;Lcom/google/android/material/transition/FitModeEvaluator;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;Z)V
    .registers 33

    #@0
    move-object v0, p0

    #@1
    move-object/from16 v1, p3

    #@3
    .line 1155
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@6
    .line 1097
    new-instance v2, Landroid/graphics/Paint;

    #@8
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    #@b
    iput-object v2, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->containerPaint:Landroid/graphics/Paint;

    #@d
    .line 1098
    new-instance v3, Landroid/graphics/Paint;

    #@f
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    #@12
    iput-object v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    #@14
    .line 1099
    new-instance v4, Landroid/graphics/Paint;

    #@16
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    #@19
    iput-object v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    #@1b
    .line 1100
    new-instance v5, Landroid/graphics/Paint;

    #@1d
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    #@20
    iput-object v5, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    #@22
    .line 1101
    new-instance v5, Landroid/graphics/Paint;

    #@24
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    #@27
    iput-object v5, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    #@29
    .line 1104
    new-instance v6, Lcom/google/android/material/transition/MaskEvaluator;

    #@2b
    invoke-direct {v6}, Lcom/google/android/material/transition/MaskEvaluator;-><init>()V

    #@2e
    iput-object v6, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/MaskEvaluator;

    #@30
    const/4 v6, 0x2

    #@31
    new-array v7, v6, [F

    #@33
    .line 1107
    iput-object v7, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    #@35
    .line 1114
    new-instance v8, Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@37
    invoke-direct {v8}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    #@3a
    iput-object v8, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@3c
    .line 1125
    new-instance v9, Landroid/graphics/Paint;

    #@3e
    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    #@41
    iput-object v9, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    #@43
    .line 1126
    new-instance v10, Landroid/graphics/Path;

    #@45
    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    #@48
    iput-object v10, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->debugPath:Landroid/graphics/Path;

    #@4a
    move-object v10, p2

    #@4b
    .line 1156
    iput-object v10, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startView:Landroid/view/View;

    #@4d
    .line 1157
    iput-object v1, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startBounds:Landroid/graphics/RectF;

    #@4f
    move-object/from16 v11, p4

    #@51
    .line 1158
    iput-object v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@53
    move/from16 v11, p5

    #@55
    .line 1159
    iput v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startElevation:F

    #@57
    move-object/from16 v11, p6

    #@59
    .line 1160
    iput-object v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endView:Landroid/view/View;

    #@5b
    move-object/from16 v11, p7

    #@5d
    .line 1161
    iput-object v11, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endBounds:Landroid/graphics/RectF;

    #@5f
    move-object/from16 v12, p8

    #@61
    .line 1162
    iput-object v12, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@63
    move/from16 v12, p9

    #@65
    .line 1163
    iput v12, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endElevation:F

    #@67
    move/from16 v12, p14

    #@69
    .line 1164
    iput-boolean v12, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->entering:Z

    #@6b
    move/from16 v12, p15

    #@6d
    .line 1165
    iput-boolean v12, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->elevationShadowEnabled:Z

    #@6f
    move-object/from16 v12, p16

    #@71
    .line 1166
    iput-object v12, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeEvaluator:Lcom/google/android/material/transition/FadeModeEvaluator;

    #@73
    move-object/from16 v12, p17

    #@75
    .line 1167
    iput-object v12, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/FitModeEvaluator;

    #@77
    move-object/from16 v12, p18

    #@79
    .line 1168
    iput-object v12, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    #@7b
    move/from16 v12, p19

    #@7d
    .line 1169
    iput-boolean v12, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    #@7f
    .line 1172
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@82
    move-result-object v10

    #@83
    const-string v12, "window"

    #@85
    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@88
    move-result-object v10

    #@89
    check-cast v10, Landroid/view/WindowManager;

    #@8b
    .line 1173
    new-instance v12, Landroid/util/DisplayMetrics;

    #@8d
    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    #@90
    .line 1174
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@93
    move-result-object v10

    #@94
    invoke-virtual {v10, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@97
    .line 1175
    iget v10, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    #@99
    int-to-float v10, v10

    #@9a
    iput v10, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->displayWidth:F

    #@9c
    .line 1176
    iget v10, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    #@9e
    int-to-float v10, v10

    #@9f
    iput v10, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->displayHeight:F

    #@a1
    move/from16 v10, p10

    #@a3
    .line 1178
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    #@a6
    move/from16 v2, p11

    #@a8
    .line 1179
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    #@ab
    move/from16 v2, p12

    #@ad
    .line 1180
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    #@b0
    const/4 v2, 0x0

    #@b1
    .line 1182
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@b4
    move-result-object v3

    #@b5
    invoke-virtual {v8, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    #@b8
    .line 1183
    invoke-virtual {v8, v6}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowCompatibilityMode(I)V

    #@bb
    .line 1185
    invoke-virtual {v8, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowBitmapDrawingEnable(Z)V

    #@be
    const v3, -0x777778

    #@c1
    .line 1186
    invoke-virtual {v8, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowColor(I)V

    #@c4
    .line 1188
    new-instance v3, Landroid/graphics/RectF;

    #@c6
    invoke-direct {v3, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@c9
    iput-object v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    #@cb
    .line 1189
    new-instance v4, Landroid/graphics/RectF;

    #@cd
    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@d0
    iput-object v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    #@d2
    .line 1190
    new-instance v4, Landroid/graphics/RectF;

    #@d4
    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@d7
    iput-object v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    #@d9
    .line 1191
    new-instance v3, Landroid/graphics/RectF;

    #@db
    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    #@de
    iput-object v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    #@e0
    .line 1194
    invoke-static/range {p3 .. p3}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    #@e3
    move-result-object v3

    #@e4
    .line 1195
    invoke-static/range {p7 .. p7}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    #@e7
    move-result-object v4

    #@e8
    .line 1196
    iget v6, v3, Landroid/graphics/PointF;->x:F

    #@ea
    iget v3, v3, Landroid/graphics/PointF;->y:F

    #@ec
    iget v8, v4, Landroid/graphics/PointF;->x:F

    #@ee
    iget v4, v4, Landroid/graphics/PointF;->y:F

    #@f0
    move-object v10, p1

    #@f1
    invoke-virtual {p1, v6, v3, v8, v4}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    #@f4
    move-result-object v3

    #@f5
    .line 1197
    new-instance v4, Landroid/graphics/PathMeasure;

    #@f7
    invoke-direct {v4, v3, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    #@fa
    iput-object v4, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Landroid/graphics/PathMeasure;

    #@fc
    .line 1198
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    #@ff
    move-result v3

    #@100
    iput v3, v0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathLength:F

    #@102
    .line 1203
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->centerX()F

    #@105
    move-result v3

    #@106
    aput v3, v7, v2

    #@108
    const/4 v2, 0x1

    #@109
    .line 1204
    iget v1, v1, Landroid/graphics/RectF;->top:F

    #@10b
    aput v1, v7, v2

    #@10d
    .line 1206
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@10f
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@112
    .line 1207
    invoke-static/range {p13 .. p13}, Lcom/google/android/material/transition/TransitionUtils;->createColorShader(I)Landroid/graphics/Shader;

    #@115
    move-result-object v1

    #@116
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@119
    .line 1209
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@11b
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@11e
    const/high16 v1, 0x41200000    # 10.0f

    #@120
    .line 1210
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@123
    const/4 v1, 0x0

    #@124
    .line 1213
    invoke-direct {p0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->updateProgress(F)V

    #@127
    return-void
.end method

.method synthetic constructor <init>(Landroidx/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/FadeModeEvaluator;Lcom/google/android/material/transition/FitModeEvaluator;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;ZLcom/google/android/material/transition/MaterialContainerTransform$1;)V
    .registers 21

    #@0
    .line 1074
    invoke-direct/range {p0 .. p19}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;-><init>(Landroidx/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearanceModel;FIIIIZZLcom/google/android/material/transition/FadeModeEvaluator;Lcom/google/android/material/transition/FitModeEvaluator;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;Z)V

    #@3
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;F)V
    .registers 2

    #@0
    .line 1074
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->setProgress(F)V

    #@3
    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)Landroid/view/View;
    .registers 1

    #@0
    .line 1074
    iget-object p0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startView:Landroid/view/View;

    #@2
    return-object p0
.end method

.method static synthetic access$900(Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)Landroid/view/View;
    .registers 1

    #@0
    .line 1074
    iget-object p0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endView:Landroid/view/View;

    #@2
    return-object p0
.end method

.method private static calculateElevationDxMultiplier(Landroid/graphics/RectF;F)F
    .registers 3

    #@0
    .line 1488
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    #@3
    move-result p0

    #@4
    const/high16 v0, 0x40000000    # 2.0f

    #@6
    div-float/2addr p1, v0

    #@7
    div-float/2addr p0, p1

    #@8
    const/high16 p1, 0x3f800000    # 1.0f

    #@a
    sub-float/2addr p0, p1

    #@b
    const p1, 0x3e99999a    # 0.3f

    #@e
    mul-float/2addr p0, p1

    #@f
    return p0
.end method

.method private static calculateElevationDyMultiplier(Landroid/graphics/RectF;F)F
    .registers 2

    #@0
    .line 1500
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    #@3
    move-result p0

    #@4
    div-float/2addr p0, p1

    #@5
    const/high16 p1, 0x3fc00000    # 1.5f

    #@7
    mul-float/2addr p0, p1

    #@8
    return p0
.end method

.method private drawDebugCumulativePath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;I)V
    .registers 7

    #@0
    .line 1505
    invoke-static {p2}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    #@3
    move-result-object p2

    #@4
    .line 1506
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progress:F

    #@6
    const/4 v1, 0x0

    #@7
    cmpl-float v0, v0, v1

    #@9
    if-nez v0, :cond_16

    #@b
    .line 1507
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    #@e
    .line 1508
    iget p1, p2, Landroid/graphics/PointF;->x:F

    #@10
    iget p2, p2, Landroid/graphics/PointF;->y:F

    #@12
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    #@15
    goto :goto_27

    #@16
    .line 1510
    :cond_16
    iget v0, p2, Landroid/graphics/PointF;->x:F

    #@18
    iget p2, p2, Landroid/graphics/PointF;->y:F

    #@1a
    invoke-virtual {p3, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    #@1d
    .line 1511
    iget-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    #@1f
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    #@22
    .line 1512
    iget-object p2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    #@24
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@27
    :goto_27
    return-void
.end method

.method private drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V
    .registers 5

    #@0
    .line 1517
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    #@5
    .line 1518
    iget-object p3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->debugPaint:Landroid/graphics/Paint;

    #@7
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@a
    return-void
.end method

.method private drawElevationShadow(Landroid/graphics/Canvas;)V
    .registers 4

    #@0
    .line 1254
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@3
    .line 1255
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/MaskEvaluator;

    #@5
    invoke-virtual {v0}, Lcom/google/android/material/transition/MaskEvaluator;->getPath()Landroid/graphics/Path;

    #@8
    move-result-object v0

    #@9
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    #@b
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    #@e
    .line 1257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@10
    const/16 v1, 0x1c

    #@12
    if-le v0, v1, :cond_18

    #@14
    .line 1258
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawElevationShadowWithPaintShadowLayer(Landroid/graphics/Canvas;)V

    #@17
    goto :goto_1b

    #@18
    .line 1260
    :cond_18
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawElevationShadowWithMaterialShapeDrawable(Landroid/graphics/Canvas;)V

    #@1b
    .line 1263
    :goto_1b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@1e
    return-void
.end method

.method private drawElevationShadowWithMaterialShapeDrawable(Landroid/graphics/Canvas;)V
    .registers 7

    #@0
    .line 1281
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    #@4
    iget v1, v1, Landroid/graphics/RectF;->left:F

    #@6
    float-to-int v1, v1

    #@7
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    #@9
    iget v2, v2, Landroid/graphics/RectF;->top:F

    #@b
    float-to-int v2, v2

    #@c
    iget-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    #@e
    iget v3, v3, Landroid/graphics/RectF;->right:F

    #@10
    float-to-int v3, v3

    #@11
    iget-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    #@13
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    #@15
    float-to-int v4, v4

    #@16
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setBounds(IIII)V

    #@19
    .line 1286
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@1b
    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    #@1d
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    #@20
    .line 1287
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@22
    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentElevationDy:F

    #@24
    float-to-int v1, v1

    #@25
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShadowVerticalOffset(I)V

    #@28
    .line 1288
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@2a
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/MaskEvaluator;

    #@2c
    invoke-virtual {v1}, Lcom/google/android/material/transition/MaskEvaluator;->getCurrentShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@33
    .line 1289
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->compatShadowDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    #@35
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    #@38
    return-void
.end method

.method private drawElevationShadowWithPaintShadowLayer(Landroid/graphics/Canvas;)V
    .registers 5

    #@0
    .line 1267
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/MaskEvaluator;

    #@2
    .line 1268
    invoke-virtual {v0}, Lcom/google/android/material/transition/MaskEvaluator;->getCurrentShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@5
    move-result-object v0

    #@6
    .line 1269
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    #@8
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Landroid/graphics/RectF;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_20

    #@e
    .line 1272
    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    #@14
    invoke-interface {v0, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@17
    move-result v0

    #@18
    .line 1273
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    #@1a
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    #@1c
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@1f
    goto :goto_2b

    #@20
    .line 1276
    :cond_20
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/MaskEvaluator;

    #@22
    invoke-virtual {v0}, Lcom/google/android/material/transition/MaskEvaluator;->getPath()Landroid/graphics/Path;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@2b
    :goto_2b
    return-void
.end method

.method private drawEndView(Landroid/graphics/Canvas;)V
    .registers 10

    #@0
    .line 1312
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    #@5
    .line 1315
    invoke-virtual {p0}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->getBounds()Landroid/graphics/Rect;

    #@8
    move-result-object v2

    #@9
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    #@b
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #@d
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    #@f
    iget v4, v0, Landroid/graphics/RectF;->top:F

    #@11
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/FitModeResult;

    #@13
    iget v5, v0, Lcom/google/android/material/transition/FitModeResult;->endScale:F

    #@15
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/FadeModeResult;

    #@17
    iget v6, v0, Lcom/google/android/material/transition/FadeModeResult;->endAlpha:I

    #@19
    new-instance v7, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$2;

    #@1b
    invoke-direct {v7, p0}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$2;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)V

    #@1e
    move-object v1, p1

    #@1f
    .line 1313
    invoke-static/range {v1 .. v7}, Lcom/google/android/material/transition/TransitionUtils;->transform(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/TransitionUtils$CanvasOperation;)V

    #@22
    return-void
.end method

.method private drawStartView(Landroid/graphics/Canvas;)V
    .registers 10

    #@0
    .line 1294
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    #@5
    .line 1297
    invoke-virtual {p0}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->getBounds()Landroid/graphics/Rect;

    #@8
    move-result-object v2

    #@9
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    #@b
    iget v3, v0, Landroid/graphics/RectF;->left:F

    #@d
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    #@f
    iget v4, v0, Landroid/graphics/RectF;->top:F

    #@11
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/FitModeResult;

    #@13
    iget v5, v0, Lcom/google/android/material/transition/FitModeResult;->startScale:F

    #@15
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/FadeModeResult;

    #@17
    iget v6, v0, Lcom/google/android/material/transition/FadeModeResult;->startAlpha:I

    #@19
    new-instance v7, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$1;

    #@1b
    invoke-direct {v7, p0}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable$1;-><init>(Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)V

    #@1e
    move-object v1, p1

    #@1f
    .line 1295
    invoke-static/range {v1 .. v7}, Lcom/google/android/material/transition/TransitionUtils;->transform(Landroid/graphics/Canvas;Landroid/graphics/Rect;FFFILcom/google/android/material/transition/TransitionUtils$CanvasOperation;)V

    #@22
    return-void
.end method

.method private static getMotionPathPoint(Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .registers 3

    #@0
    .line 1470
    new-instance v0, Landroid/graphics/PointF;

    #@2
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    #@5
    move-result v1

    #@6
    iget p0, p0, Landroid/graphics/RectF;->top:F

    #@8
    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    #@b
    return-object v0
.end method

.method private maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4

    #@0
    .line 1332
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_13

    #@6
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    #@9
    move-result v0

    #@a
    if-lez v0, :cond_13

    #@c
    .line 1333
    invoke-virtual {p0}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->getBounds()Landroid/graphics/Rect;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@13
    :cond_13
    return-void
.end method

.method private setProgress(F)V
    .registers 3

    #@0
    .line 1352
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progress:F

    #@2
    cmpl-float v0, v0, p1

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 1353
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->updateProgress(F)V

    #@9
    :cond_9
    return-void
.end method

.method private updateProgress(F)V
    .registers 14

    #@0
    .line 1358
    iput p1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progress:F

    #@2
    .line 1361
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    #@4
    iget-boolean v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->entering:Z

    #@6
    const/high16 v2, 0x437f0000    # 255.0f

    #@8
    const/4 v8, 0x0

    #@9
    if-eqz v1, :cond_10

    #@b
    invoke-static {v8, v2, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    #@e
    move-result v1

    #@f
    goto :goto_14

    #@10
    :cond_10
    invoke-static {v2, v8, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    #@13
    move-result v1

    #@14
    :goto_14
    float-to-int v1, v1

    #@15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@18
    .line 1364
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Landroid/graphics/PathMeasure;

    #@1a
    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathLength:F

    #@1c
    mul-float/2addr v1, p1

    #@1d
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    #@1f
    const/4 v3, 0x0

    #@20
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    #@23
    .line 1365
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    #@25
    const/4 v1, 0x0

    #@26
    aget v2, v0, v1

    #@28
    const/4 v4, 0x1

    #@29
    .line 1366
    aget v5, v0, v4

    #@2b
    const/high16 v9, 0x3f800000    # 1.0f

    #@2d
    cmpl-float v6, p1, v9

    #@2f
    if-gtz v6, :cond_39

    #@31
    cmpg-float v7, p1, v8

    #@33
    if-gez v7, :cond_36

    #@35
    goto :goto_39

    #@36
    :cond_36
    :goto_36
    move v10, v2

    #@37
    move v11, v5

    #@38
    goto :goto_64

    #@39
    :cond_39
    :goto_39
    if-lez v6, :cond_45

    #@3b
    sub-float v6, p1, v9

    #@3d
    const v7, 0x3c23d700    # 0.00999999f

    #@40
    div-float/2addr v6, v7

    #@41
    const v7, 0x3f7d70a4    # 0.99f

    #@44
    goto :goto_4d

    #@45
    :cond_45
    const v7, 0x3c23d70a    # 0.01f

    #@48
    div-float v6, p1, v7

    #@4a
    const/high16 v10, -0x40800000    # -1.0f

    #@4c
    mul-float/2addr v6, v10

    #@4d
    .line 1380
    :goto_4d
    iget-object v10, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathMeasure:Landroid/graphics/PathMeasure;

    #@4f
    iget v11, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathLength:F

    #@51
    mul-float/2addr v11, v7

    #@52
    invoke-virtual {v10, v11, v0, v3}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    #@55
    .line 1382
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->motionPathPosition:[F

    #@57
    aget v1, v0, v1

    #@59
    .line 1383
    aget v0, v0, v4

    #@5b
    sub-float v1, v2, v1

    #@5d
    mul-float/2addr v1, v6

    #@5e
    add-float/2addr v2, v1

    #@5f
    sub-float v0, v5, v0

    #@61
    mul-float/2addr v0, v6

    #@62
    add-float/2addr v5, v0

    #@63
    goto :goto_36

    #@64
    .line 1389
    :goto_64
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    #@66
    # getter for: Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->scale:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    #@69
    move-result-object v0

    #@6a
    # getter for: Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->start:F
    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->access$1000(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)F

    #@6d
    move-result v0

    #@6e
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@71
    move-result-object v0

    #@72
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    move-result-object v0

    #@76
    check-cast v0, Ljava/lang/Float;

    #@78
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@7b
    move-result v2

    #@7c
    .line 1390
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    #@7e
    # getter for: Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->scale:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$500(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    #@81
    move-result-object v0

    #@82
    # getter for: Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->end:F
    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->access$1100(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)F

    #@85
    move-result v0

    #@86
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@89
    move-result-object v0

    #@8a
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    move-result-object v0

    #@8e
    check-cast v0, Ljava/lang/Float;

    #@90
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@93
    move-result v3

    #@94
    .line 1391
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/FitModeEvaluator;

    #@96
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startBounds:Landroid/graphics/RectF;

    #@98
    .line 1396
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@9b
    move-result v4

    #@9c
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startBounds:Landroid/graphics/RectF;

    #@9e
    .line 1397
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@a1
    move-result v5

    #@a2
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endBounds:Landroid/graphics/RectF;

    #@a4
    .line 1398
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    #@a7
    move-result v6

    #@a8
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endBounds:Landroid/graphics/RectF;

    #@aa
    .line 1399
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    #@ad
    move-result v7

    #@ae
    move v1, p1

    #@af
    .line 1392
    invoke-interface/range {v0 .. v7}, Lcom/google/android/material/transition/FitModeEvaluator;->evaluate(FFFFFFF)Lcom/google/android/material/transition/FitModeResult;

    #@b2
    move-result-object v0

    #@b3
    iput-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/FitModeResult;

    #@b5
    .line 1400
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    #@b7
    iget v0, v0, Lcom/google/android/material/transition/FitModeResult;->currentStartWidth:F

    #@b9
    const/high16 v2, 0x40000000    # 2.0f

    #@bb
    div-float/2addr v0, v2

    #@bc
    sub-float v0, v10, v0

    #@be
    iget-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/FitModeResult;

    #@c0
    iget v3, v3, Lcom/google/android/material/transition/FitModeResult;->currentStartWidth:F

    #@c2
    div-float/2addr v3, v2

    #@c3
    add-float/2addr v3, v10

    #@c4
    iget-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/FitModeResult;

    #@c6
    iget v4, v4, Lcom/google/android/material/transition/FitModeResult;->currentStartHeight:F

    #@c8
    add-float/2addr v4, v11

    #@c9
    invoke-virtual {v1, v0, v11, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    #@cc
    .line 1405
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    #@ce
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/FitModeResult;

    #@d0
    iget v1, v1, Lcom/google/android/material/transition/FitModeResult;->currentEndWidth:F

    #@d2
    div-float/2addr v1, v2

    #@d3
    sub-float v1, v10, v1

    #@d5
    iget-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/FitModeResult;

    #@d7
    iget v3, v3, Lcom/google/android/material/transition/FitModeResult;->currentEndWidth:F

    #@d9
    div-float/2addr v3, v2

    #@da
    add-float/2addr v10, v3

    #@db
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/FitModeResult;

    #@dd
    iget v2, v2, Lcom/google/android/material/transition/FitModeResult;->currentEndHeight:F

    #@df
    add-float/2addr v2, v11

    #@e0
    invoke-virtual {v0, v1, v11, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    #@e3
    .line 1412
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    #@e5
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    #@e7
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    #@ea
    .line 1413
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    #@ec
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    #@ee
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    #@f1
    .line 1414
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    #@f3
    # getter for: Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->scaleMask:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    #@f6
    move-result-object v0

    #@f7
    # getter for: Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->start:F
    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->access$1000(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)F

    #@fa
    move-result v0

    #@fb
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@fe
    move-result-object v0

    #@ff
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@102
    move-result-object v0

    #@103
    check-cast v0, Ljava/lang/Float;

    #@105
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@108
    move-result v0

    #@109
    .line 1415
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    #@10b
    # getter for: Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->scaleMask:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    invoke-static {v1}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$600(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    #@10e
    move-result-object v1

    #@10f
    # getter for: Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->end:F
    invoke-static {v1}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->access$1100(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)F

    #@112
    move-result v1

    #@113
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@116
    move-result-object v1

    #@117
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@11a
    move-result-object v1

    #@11b
    check-cast v1, Ljava/lang/Float;

    #@11d
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@120
    move-result v1

    #@121
    .line 1416
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/FitModeEvaluator;

    #@123
    iget-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/FitModeResult;

    #@125
    invoke-interface {v2, v3}, Lcom/google/android/material/transition/FitModeEvaluator;->shouldMaskStartBounds(Lcom/google/android/material/transition/FitModeResult;)Z

    #@128
    move-result v2

    #@129
    if-eqz v2, :cond_12e

    #@12b
    .line 1417
    iget-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    #@12d
    goto :goto_130

    #@12e
    :cond_12e
    iget-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    #@130
    .line 1418
    :goto_130
    invoke-static {v8, v9, v0, v1, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFFFF)F

    #@133
    move-result v0

    #@134
    if-eqz v2, :cond_137

    #@136
    goto :goto_139

    #@137
    :cond_137
    sub-float v0, v9, v0

    #@139
    .line 1420
    :goto_139
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeEvaluator:Lcom/google/android/material/transition/FitModeEvaluator;

    #@13b
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fitModeResult:Lcom/google/android/material/transition/FitModeResult;

    #@13d
    invoke-interface {v1, v3, v0, v2}, Lcom/google/android/material/transition/FitModeEvaluator;->applyMask(Landroid/graphics/RectF;FLcom/google/android/material/transition/FitModeResult;)V

    #@140
    .line 1423
    new-instance v0, Landroid/graphics/RectF;

    #@142
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    #@144
    iget v1, v1, Landroid/graphics/RectF;->left:F

    #@146
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    #@148
    iget v2, v2, Landroid/graphics/RectF;->left:F

    #@14a
    .line 1425
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    #@14d
    move-result v1

    #@14e
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    #@150
    iget v2, v2, Landroid/graphics/RectF;->top:F

    #@152
    iget-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    #@154
    iget v3, v3, Landroid/graphics/RectF;->top:F

    #@156
    .line 1426
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    #@159
    move-result v2

    #@15a
    iget-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    #@15c
    iget v3, v3, Landroid/graphics/RectF;->right:F

    #@15e
    iget-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    #@160
    iget v4, v4, Landroid/graphics/RectF;->right:F

    #@162
    .line 1427
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    #@165
    move-result v3

    #@166
    iget-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    #@168
    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    #@16a
    iget-object v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    #@16c
    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    #@16e
    .line 1428
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    #@171
    move-result v4

    #@172
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@175
    iput-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    #@177
    .line 1430
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/MaskEvaluator;

    #@179
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@17b
    iget-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endShapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@17d
    iget-object v4, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    #@17f
    iget-object v5, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    #@181
    iget-object v6, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    #@183
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    #@185
    .line 1437
    # getter for: Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->shapeMask:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    invoke-static {v1}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$700(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    #@188
    move-result-object v7

    #@189
    move v1, p1

    #@18a
    .line 1430
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/material/transition/MaskEvaluator;->evaluate(FLcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)V

    #@18d
    .line 1440
    iget v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startElevation:F

    #@18f
    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endElevation:F

    #@191
    invoke-static {v0, v1, p1}, Lcom/google/android/material/transition/TransitionUtils;->lerp(FFF)F

    #@194
    move-result v0

    #@195
    iput v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    #@197
    .line 1441
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    #@199
    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->displayWidth:F

    #@19b
    invoke-static {v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->calculateElevationDxMultiplier(Landroid/graphics/RectF;F)F

    #@19e
    move-result v0

    #@19f
    .line 1442
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentMaskBounds:Landroid/graphics/RectF;

    #@1a1
    iget v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->displayHeight:F

    #@1a3
    invoke-static {v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->calculateElevationDyMultiplier(Landroid/graphics/RectF;F)F

    #@1a6
    move-result v1

    #@1a7
    .line 1443
    iget v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    #@1a9
    mul-float/2addr v0, v2

    #@1aa
    float-to-int v0, v0

    #@1ab
    int-to-float v0, v0

    #@1ac
    mul-float/2addr v1, v2

    #@1ad
    float-to-int v1, v1

    #@1ae
    int-to-float v1, v1

    #@1af
    .line 1444
    iput v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentElevationDy:F

    #@1b1
    .line 1445
    iget-object v3, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->shadowPaint:Landroid/graphics/Paint;

    #@1b3
    const/high16 v4, 0x2d000000

    #@1b5
    invoke-virtual {v3, v2, v0, v1, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    #@1b8
    .line 1449
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    #@1ba
    # getter for: Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->fade:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    #@1bd
    move-result-object v0

    #@1be
    # getter for: Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->start:F
    invoke-static {v0}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->access$1000(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)F

    #@1c1
    move-result v0

    #@1c2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1c5
    move-result-object v0

    #@1c6
    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c9
    move-result-object v0

    #@1ca
    check-cast v0, Ljava/lang/Float;

    #@1cc
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@1cf
    move-result v0

    #@1d0
    .line 1450
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->progressThresholds:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;

    #@1d2
    # getter for: Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->fade:Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;
    invoke-static {v1}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;->access$400(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholdsGroup;)Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;

    #@1d5
    move-result-object v1

    #@1d6
    # getter for: Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->end:F
    invoke-static {v1}, Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;->access$1100(Lcom/google/android/material/transition/MaterialContainerTransform$ProgressThresholds;)F

    #@1d9
    move-result v1

    #@1da
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1dd
    move-result-object v1

    #@1de
    invoke-static {v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e1
    move-result-object v1

    #@1e2
    check-cast v1, Ljava/lang/Float;

    #@1e4
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    #@1e7
    move-result v1

    #@1e8
    .line 1451
    iget-object v2, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeEvaluator:Lcom/google/android/material/transition/FadeModeEvaluator;

    #@1ea
    const v3, 0x3eb33333    # 0.35f

    #@1ed
    .line 1452
    invoke-interface {v2, p1, v0, v1, v3}, Lcom/google/android/material/transition/FadeModeEvaluator;->evaluate(FFFF)Lcom/google/android/material/transition/FadeModeResult;

    #@1f0
    move-result-object v0

    #@1f1
    iput-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/FadeModeResult;

    #@1f3
    .line 1459
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    #@1f5
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    #@1f8
    move-result v0

    #@1f9
    if-eqz v0, :cond_204

    #@1fb
    .line 1460
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->startContainerPaint:Landroid/graphics/Paint;

    #@1fd
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/FadeModeResult;

    #@1ff
    iget v1, v1, Lcom/google/android/material/transition/FadeModeResult;->startAlpha:I

    #@201
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@204
    .line 1462
    :cond_204
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    #@206
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    #@209
    move-result v0

    #@20a
    if-eqz v0, :cond_215

    #@20c
    .line 1463
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->endContainerPaint:Landroid/graphics/Paint;

    #@20e
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/FadeModeResult;

    #@210
    iget v1, v1, Lcom/google/android/material/transition/FadeModeResult;->endAlpha:I

    #@212
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    #@215
    .line 1466
    :cond_215
    invoke-virtual {p0}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->invalidateSelf()V

    #@218
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    #@0
    .line 1218
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_11

    #@8
    .line 1219
    invoke-virtual {p0}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->getBounds()Landroid/graphics/Rect;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->scrimPaint:Landroid/graphics/Paint;

    #@e
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@11
    .line 1222
    :cond_11
    iget-boolean v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    #@13
    if-eqz v0, :cond_1a

    #@15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@18
    move-result v0

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    const/4 v0, -0x1

    #@1b
    .line 1224
    :goto_1b
    iget-boolean v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->elevationShadowEnabled:Z

    #@1d
    if-eqz v1, :cond_29

    #@1f
    iget v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentElevation:F

    #@21
    const/4 v2, 0x0

    #@22
    cmpl-float v1, v1, v2

    #@24
    if-lez v1, :cond_29

    #@26
    .line 1225
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawElevationShadow(Landroid/graphics/Canvas;)V

    #@29
    .line 1230
    :cond_29
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maskEvaluator:Lcom/google/android/material/transition/MaskEvaluator;

    #@2b
    invoke-virtual {v1, p1}, Lcom/google/android/material/transition/MaskEvaluator;->clip(Landroid/graphics/Canvas;)V

    #@2e
    .line 1232
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->containerPaint:Landroid/graphics/Paint;

    #@30
    invoke-direct {p0, p1, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->maybeDrawContainerColor(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    #@33
    .line 1234
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->fadeModeResult:Lcom/google/android/material/transition/FadeModeResult;

    #@35
    iget-boolean v1, v1, Lcom/google/android/material/transition/FadeModeResult;->endOnTop:Z

    #@37
    if-eqz v1, :cond_40

    #@39
    .line 1235
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawStartView(Landroid/graphics/Canvas;)V

    #@3c
    .line 1236
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawEndView(Landroid/graphics/Canvas;)V

    #@3f
    goto :goto_46

    #@40
    .line 1238
    :cond_40
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawEndView(Landroid/graphics/Canvas;)V

    #@43
    .line 1239
    invoke-direct {p0, p1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawStartView(Landroid/graphics/Canvas;)V

    #@46
    .line 1242
    :goto_46
    iget-boolean v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugEnabled:Z

    #@48
    if-eqz v1, :cond_76

    #@4a
    .line 1243
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@4d
    .line 1244
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    #@4f
    iget-object v1, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->debugPath:Landroid/graphics/Path;

    #@51
    const v2, -0xff01

    #@54
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugCumulativePath(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;I)V

    #@57
    .line 1245
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBoundsMasked:Landroid/graphics/RectF;

    #@59
    const/16 v1, -0x100

    #@5b
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    #@5e
    .line 1246
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentStartBounds:Landroid/graphics/RectF;

    #@60
    const v1, -0xff0100

    #@63
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    #@66
    .line 1247
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBoundsMasked:Landroid/graphics/RectF;

    #@68
    const v1, -0xff0001

    #@6b
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    #@6e
    .line 1248
    iget-object v0, p0, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->currentEndBounds:Landroid/graphics/RectF;

    #@70
    const v1, -0xffff01

    #@73
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->drawDebugRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V

    #@76
    :cond_76
    return-void
.end method

.method public getOpacity()I
    .registers 2

    #@0
    const/4 v0, -0x3

    #@1
    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    #@0
    .line 1339
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Setting alpha on is not supported"

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    #@0
    .line 1343
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v0, "Setting a color filter is not supported"

    #@4
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method
