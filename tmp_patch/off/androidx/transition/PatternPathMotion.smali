.class public Landroidx/transition/PatternPathMotion;
.super Landroidx/transition/PathMotion;
.source "PatternPathMotion.java"


# instance fields
.field private mOriginalPatternPath:Landroid/graphics/Path;

.field private final mPatternPath:Landroid/graphics/Path;

.field private final mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .registers 4

    #@0
    .line 54
    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    #@3
    .line 47
    new-instance v0, Landroid/graphics/Path;

    #@5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    #@a
    .line 49
    new-instance v1, Landroid/graphics/Matrix;

    #@c
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@f
    iput-object v1, p0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@11
    const/high16 v1, 0x3f800000    # 1.0f

    #@13
    const/4 v2, 0x0

    #@14
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    #@17
    .line 56
    iput-object v0, p0, Landroidx/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    #@19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    #@0
    .line 61
    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    #@3
    .line 47
    new-instance v0, Landroid/graphics/Path;

    #@5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    #@a
    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    #@c
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@11
    .line 62
    sget-object v0, Landroidx/transition/Styleable;->PATTERN_PATH_MOTION:[I

    #@13
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@16
    move-result-object p1

    #@17
    .line 64
    :try_start_17
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    #@19
    const-string v0, "patternPathData"

    #@1b
    const/4 v1, 0x0

    #@1c
    invoke-static {p1, p2, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    #@1f
    move-result-object p2

    #@20
    if-eqz p2, :cond_2d

    #@22
    .line 69
    invoke-static {p2}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    #@25
    move-result-object p2

    #@26
    .line 70
    invoke-virtual {p0, p2}, Landroidx/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_35

    #@29
    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@2c
    return-void

    #@2d
    .line 67
    :cond_2d
    :try_start_2d
    new-instance p2, Ljava/lang/RuntimeException;

    #@2f
    const-string v0, "pathData must be supplied for patternPathMotion"

    #@31
    invoke-direct {p2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@34
    throw p2
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    #@35
    :catchall_35
    move-exception p2

    #@36
    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@39
    .line 73
    throw p2
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .registers 3

    #@0
    .line 84
    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    #@3
    .line 47
    new-instance v0, Landroid/graphics/Path;

    #@5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    #@a
    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    #@c
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@11
    .line 85
    invoke-virtual {p0, p1}, Landroidx/transition/PatternPathMotion;->setPatternPath(Landroid/graphics/Path;)V

    #@14
    return-void
.end method

.method private static distance(FF)F
    .registers 2

    #@0
    mul-float/2addr p0, p0

    #@1
    mul-float/2addr p1, p1

    #@2
    add-float/2addr p0, p1

    #@3
    float-to-double p0, p0

    #@4
    .line 149
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    #@7
    move-result-wide p0

    #@8
    double-to-float p0, p0

    #@9
    return p0
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .registers 8

    #@0
    sub-float/2addr p3, p1

    #@1
    sub-float/2addr p4, p2

    #@2
    .line 137
    invoke-static {p3, p4}, Landroidx/transition/PatternPathMotion;->distance(FF)F

    #@5
    move-result v0

    #@6
    float-to-double v1, p4

    #@7
    float-to-double p3, p3

    #@8
    .line 138
    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    #@b
    move-result-wide p3

    #@c
    .line 140
    iget-object v1, p0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@e
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    #@11
    .line 141
    iget-object v0, p0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@13
    invoke-static {p3, p4}, Ljava/lang/Math;->toDegrees(D)D

    #@16
    move-result-wide p3

    #@17
    double-to-float p3, p3

    #@18
    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->postRotate(F)Z

    #@1b
    .line 142
    iget-object p3, p0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@1d
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@20
    .line 143
    new-instance p1, Landroid/graphics/Path;

    #@22
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    #@25
    .line 144
    iget-object p2, p0, Landroidx/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    #@27
    iget-object p3, p0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@29
    invoke-virtual {p2, p3, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    #@2c
    return-object p1
.end method

.method public getPatternPath()Landroid/graphics/Path;
    .registers 2

    #@0
    .line 96
    iget-object v0, p0, Landroidx/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    #@2
    return-object v0
.end method

.method public setPatternPath(Landroid/graphics/Path;)V
    .registers 10

    #@0
    .line 107
    new-instance v0, Landroid/graphics/PathMeasure;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    #@6
    .line 108
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    #@9
    move-result v2

    #@a
    const/4 v3, 0x2

    #@b
    new-array v3, v3, [F

    #@d
    const/4 v4, 0x0

    #@e
    .line 110
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    #@11
    aget v2, v3, v1

    #@13
    const/4 v5, 0x1

    #@14
    aget v6, v3, v5

    #@16
    const/4 v7, 0x0

    #@17
    .line 113
    invoke-virtual {v0, v7, v3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    #@1a
    aget v0, v3, v1

    #@1c
    aget v1, v3, v5

    #@1e
    cmpl-float v3, v0, v2

    #@20
    if-nez v3, :cond_2f

    #@22
    cmpl-float v3, v1, v6

    #@24
    if-eqz v3, :cond_27

    #@26
    goto :goto_2f

    #@27
    .line 118
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@29
    const-string v0, "pattern must not end at the starting point"

    #@2b
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw p1

    #@2f
    .line 121
    :cond_2f
    :goto_2f
    iget-object v3, p0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@31
    neg-float v4, v0

    #@32
    neg-float v5, v1

    #@33
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@36
    sub-float/2addr v2, v0

    #@37
    sub-float/2addr v6, v1

    #@38
    .line 124
    invoke-static {v2, v6}, Landroidx/transition/PatternPathMotion;->distance(FF)F

    #@3b
    move-result v0

    #@3c
    const/high16 v1, 0x3f800000    # 1.0f

    #@3e
    div-float/2addr v1, v0

    #@3f
    .line 126
    iget-object v0, p0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@41
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@44
    float-to-double v0, v6

    #@45
    float-to-double v2, v2

    #@46
    .line 127
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@49
    move-result-wide v0

    #@4a
    .line 128
    iget-object v2, p0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@4c
    neg-double v0, v0

    #@4d
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    #@50
    move-result-wide v0

    #@51
    double-to-float v0, v0

    #@52
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    #@55
    .line 129
    iget-object v0, p0, Landroidx/transition/PatternPathMotion;->mTempMatrix:Landroid/graphics/Matrix;

    #@57
    iget-object v1, p0, Landroidx/transition/PatternPathMotion;->mPatternPath:Landroid/graphics/Path;

    #@59
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    #@5c
    .line 130
    iput-object p1, p0, Landroidx/transition/PatternPathMotion;->mOriginalPatternPath:Landroid/graphics/Path;

    #@5e
    return-void
.end method
