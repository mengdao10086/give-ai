.class public Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;
.super Ljava/lang/Object;
.source "PathInterpolatorCompat.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static final EPSILON:D = 1.0E-5

.field public static final MAX_NUM_POINTS:I = 0xbb8

.field private static final PRECISION:F = 0.002f


# instance fields
.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5

    #@0
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@7
    move-result-object p1

    #@8
    invoke-direct {p0, v0, p1, p2, p3}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V

    #@b
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    #@0
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    sget-object v0, Landroidx/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_PATH_INTERPOLATOR:[I

    #@5
    invoke-static {p1, p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object p1

    #@9
    .line 75
    invoke-direct {p0, p1, p4}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    #@c
    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@f
    return-void
.end method

.method private initCubic(FFFF)V
    .registers 13

    #@0
    .line 130
    new-instance v7, Landroid/graphics/Path;

    #@2
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    .line 131
    invoke-virtual {v7, v0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    #@9
    const/high16 v5, 0x3f800000    # 1.0f

    #@b
    const/high16 v6, 0x3f800000    # 1.0f

    #@d
    move-object v0, v7

    #@e
    move v1, p1

    #@f
    move v2, p2

    #@10
    move v3, p3

    #@11
    move v4, p4

    #@12
    .line 132
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@15
    .line 133
    invoke-direct {p0, v7}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    #@18
    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .registers 12

    #@0
    .line 137
    new-instance v0, Landroid/graphics/PathMeasure;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    #@6
    .line 139
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    #@9
    move-result p1

    #@a
    const v2, 0x3b03126f    # 0.002f

    #@d
    div-float v2, p1, v2

    #@f
    float-to-int v2, v2

    #@10
    const/4 v3, 0x1

    #@11
    add-int/2addr v2, v3

    #@12
    const/16 v4, 0xbb8

    #@14
    .line 140
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    #@17
    move-result v2

    #@18
    if-lez v2, :cond_fb

    #@1a
    .line 146
    new-array v4, v2, [F

    #@1c
    iput-object v4, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    #@1e
    .line 147
    new-array v4, v2, [F

    #@20
    iput-object v4, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    #@22
    const/4 v4, 0x2

    #@23
    new-array v4, v4, [F

    #@25
    move v5, v1

    #@26
    :goto_26
    if-ge v5, v2, :cond_41

    #@28
    int-to-float v6, v5

    #@29
    mul-float/2addr v6, p1

    #@2a
    add-int/lit8 v7, v2, -0x1

    #@2c
    int-to-float v7, v7

    #@2d
    div-float/2addr v6, v7

    #@2e
    const/4 v7, 0x0

    #@2f
    .line 152
    invoke-virtual {v0, v6, v4, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    #@32
    .line 154
    iget-object v6, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    #@34
    aget v7, v4, v1

    #@36
    aput v7, v6, v5

    #@38
    .line 155
    iget-object v6, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    #@3a
    aget v7, v4, v3

    #@3c
    aput v7, v6, v5

    #@3e
    add-int/lit8 v5, v5, 0x1

    #@40
    goto :goto_26

    #@41
    .line 158
    :cond_41
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    #@43
    aget p1, p1, v1

    #@45
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@48
    move-result p1

    #@49
    float-to-double v4, p1

    #@4a
    const-wide v6, 0x3ee4f8b588e368f1L    # 1.0E-5

    #@4f
    cmpl-double p1, v4, v6

    #@51
    if-gtz p1, :cond_b9

    #@53
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    #@55
    aget p1, p1, v1

    #@57
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@5a
    move-result p1

    #@5b
    float-to-double v4, p1

    #@5c
    cmpl-double p1, v4, v6

    #@5e
    if-gtz p1, :cond_b9

    #@60
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    #@62
    add-int/lit8 v4, v2, -0x1

    #@64
    aget p1, p1, v4

    #@66
    const/high16 v5, 0x3f800000    # 1.0f

    #@68
    sub-float/2addr p1, v5

    #@69
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@6c
    move-result p1

    #@6d
    float-to-double v8, p1

    #@6e
    cmpl-double p1, v8, v6

    #@70
    if-gtz p1, :cond_b9

    #@72
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    #@74
    aget p1, p1, v4

    #@76
    sub-float/2addr p1, v5

    #@77
    .line 159
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@7a
    move-result p1

    #@7b
    float-to-double v4, p1

    #@7c
    cmpl-double p1, v4, v6

    #@7e
    if-gtz p1, :cond_b9

    #@80
    const/4 p1, 0x0

    #@81
    move v3, v1

    #@82
    :goto_82
    if-ge v1, v2, :cond_aa

    #@84
    .line 169
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    #@86
    add-int/lit8 v5, v3, 0x1

    #@88
    aget v3, v4, v3

    #@8a
    cmpg-float p1, v3, p1

    #@8c
    if-ltz p1, :cond_95

    #@8e
    .line 173
    aput v3, v4, v1

    #@90
    add-int/lit8 v1, v1, 0x1

    #@92
    move p1, v3

    #@93
    move v3, v5

    #@94
    goto :goto_82

    #@95
    .line 171
    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@97
    new-instance v0, Ljava/lang/StringBuilder;

    #@99
    const-string v1, "The Path cannot loop back on itself, x :"

    #@9b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v0

    #@a2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v0

    #@a6
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a9
    throw p1

    #@aa
    .line 177
    :cond_aa
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->nextContour()Z

    #@ad
    move-result p1

    #@ae
    if-nez p1, :cond_b1

    #@b0
    return-void

    #@b1
    .line 178
    :cond_b1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@b3
    const-string v0, "The Path should be continuous, can\'t have 2+ contours"

    #@b5
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b8
    throw p1

    #@b9
    .line 160
    :cond_b9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@bb
    new-instance v0, Ljava/lang/StringBuilder;

    #@bd
    const-string v4, "The Path must start at (0,0) and end at (1,1) start: "

    #@bf
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c2
    iget-object v4, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    #@c4
    aget v4, v4, v1

    #@c6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v0

    #@ca
    const-string v4, ","

    #@cc
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v0

    #@d0
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    #@d2
    aget v1, v5, v1

    #@d4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v0

    #@d8
    const-string v1, " end:"

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v0

    #@de
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    #@e0
    sub-int/2addr v2, v3

    #@e1
    aget v1, v1, v2

    #@e3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v0

    #@e7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v0

    #@eb
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    #@ed
    aget v1, v1, v2

    #@ef
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v0

    #@f3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v0

    #@f7
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@fa
    throw p1

    #@fb
    .line 143
    :cond_fb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@fd
    new-instance v1, Ljava/lang/StringBuilder;

    #@ff
    const-string v2, "The Path has a invalid length "

    #@101
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@104
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@107
    move-result-object p1

    #@108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object p1

    #@10c
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10f
    throw v0
.end method

.method private initQuad(FF)V
    .registers 5

    #@0
    .line 123
    new-instance v0, Landroid/graphics/Path;

    #@2
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    .line 124
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    #@9
    const/high16 v1, 0x3f800000    # 1.0f

    #@b
    .line 125
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    #@e
    .line 126
    invoke-direct {p0, v0}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    #@11
    return-void
.end method

.method private parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10

    #@0
    const-string v0, "pathData"

    #@2
    .line 82
    invoke-static {p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_2c

    #@8
    const/4 v1, 0x4

    #@9
    .line 83
    invoke-static {p1, p2, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    .line 85
    invoke-static {p1}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    #@10
    move-result-object p2

    #@11
    if-eqz p2, :cond_17

    #@13
    .line 90
    invoke-direct {p0, p2}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initPath(Landroid/graphics/Path;)V

    #@16
    goto :goto_68

    #@17
    .line 87
    :cond_17
    new-instance p2, Landroid/view/InflateException;

    #@19
    new-instance v0, Ljava/lang/StringBuilder;

    #@1b
    const-string v1, "The path is null, which is created from "

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object p1

    #@24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object p1

    #@28
    invoke-direct {p2, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw p2

    #@2c
    :cond_2c
    const-string v0, "controlX1"

    #@2e
    .line 92
    invoke-static {p2, v0}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_79

    #@34
    const-string v1, "controlY1"

    #@36
    .line 94
    invoke-static {p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_71

    #@3c
    const/4 v2, 0x0

    #@3d
    const/4 v3, 0x0

    #@3e
    .line 97
    invoke-static {p1, p2, v0, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@41
    move-result v0

    #@42
    const/4 v2, 0x1

    #@43
    .line 99
    invoke-static {p1, p2, v1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@46
    move-result v1

    #@47
    const-string v2, "controlX2"

    #@49
    .line 102
    invoke-static {p2, v2}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@4c
    move-result v4

    #@4d
    const-string v5, "controlY2"

    #@4f
    .line 103
    invoke-static {p2, v5}, Landroidx/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    #@52
    move-result v6

    #@53
    if-ne v4, v6, :cond_69

    #@55
    if-nez v4, :cond_5b

    #@57
    .line 111
    invoke-direct {p0, v0, v1}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initQuad(FF)V

    #@5a
    goto :goto_68

    #@5b
    :cond_5b
    const/4 v4, 0x2

    #@5c
    .line 113
    invoke-static {p1, p2, v2, v4, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@5f
    move-result v2

    #@60
    const/4 v4, 0x3

    #@61
    .line 115
    invoke-static {p1, p2, v5, v4, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@64
    move-result p1

    #@65
    .line 117
    invoke-direct {p0, v0, v1, v2, p1}, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->initCubic(FFFF)V

    #@68
    :goto_68
    return-void

    #@69
    .line 106
    :cond_69
    new-instance p1, Landroid/view/InflateException;

    #@6b
    const-string p2, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    #@6d
    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@70
    throw p1

    #@71
    .line 95
    :cond_71
    new-instance p1, Landroid/view/InflateException;

    #@73
    const-string p2, "pathInterpolator requires the controlY1 attribute"

    #@75
    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@78
    throw p1

    #@79
    .line 93
    :cond_79
    new-instance p1, Landroid/view/InflateException;

    #@7b
    const-string p2, "pathInterpolator requires the controlX1 attribute"

    #@7d
    invoke-direct {p1, p2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@80
    throw p1
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v1, p1, v0

    #@3
    if-gtz v1, :cond_6

    #@5
    return v0

    #@6
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    #@8
    cmpl-float v2, p1, v1

    #@a
    if-ltz v2, :cond_d

    #@c
    return v1

    #@d
    .line 202
    :cond_d
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    #@f
    array-length v1, v1

    #@10
    const/4 v2, 0x1

    #@11
    sub-int/2addr v1, v2

    #@12
    const/4 v3, 0x0

    #@13
    :goto_13
    sub-int v4, v1, v3

    #@15
    if-le v4, v2, :cond_27

    #@17
    add-int v4, v3, v1

    #@19
    .line 205
    div-int/lit8 v4, v4, 0x2

    #@1b
    .line 206
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    #@1d
    aget v5, v5, v4

    #@1f
    cmpg-float v5, p1, v5

    #@21
    if-gez v5, :cond_25

    #@23
    move v1, v4

    #@24
    goto :goto_13

    #@25
    :cond_25
    move v3, v4

    #@26
    goto :goto_13

    #@27
    .line 213
    :cond_27
    iget-object v2, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mX:[F

    #@29
    aget v4, v2, v1

    #@2b
    aget v2, v2, v3

    #@2d
    sub-float/2addr v4, v2

    #@2e
    cmpl-float v0, v4, v0

    #@30
    if-nez v0, :cond_37

    #@32
    .line 215
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    #@34
    aget p1, p1, v3

    #@36
    return p1

    #@37
    :cond_37
    sub-float/2addr p1, v2

    #@38
    div-float/2addr p1, v4

    #@39
    .line 221
    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/PathInterpolatorCompat;->mY:[F

    #@3b
    aget v2, v0, v3

    #@3d
    .line 222
    aget v0, v0, v1

    #@3f
    sub-float/2addr v0, v2

    #@40
    mul-float/2addr p1, v0

    #@41
    add-float/2addr v2, p1

    #@42
    return v2
.end method
