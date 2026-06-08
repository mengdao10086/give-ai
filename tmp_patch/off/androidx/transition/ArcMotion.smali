.class public Landroidx/transition/ArcMotion;
.super Landroidx/transition/PathMotion;
.source "ArcMotion.java"


# static fields
.field private static final DEFAULT_MAX_ANGLE_DEGREES:F = 70.0f

.field private static final DEFAULT_MAX_TANGENT:F

.field private static final DEFAULT_MIN_ANGLE_DEGREES:F


# instance fields
.field private mMaximumAngle:F

.field private mMaximumTangent:F

.field private mMinimumHorizontalAngle:F

.field private mMinimumHorizontalTangent:F

.field private mMinimumVerticalAngle:F

.field private mMinimumVerticalTangent:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-wide v0, 0x4041800000000000L    # 35.0

    #@5
    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@8
    move-result-wide v0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    #@c
    move-result-wide v0

    #@d
    double-to-float v0, v0

    #@e
    sput v0, Landroidx/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    #@10
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    .line 65
    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 58
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalAngle:F

    #@6
    .line 59
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalAngle:F

    #@8
    const/high16 v1, 0x428c0000    # 70.0f

    #@a
    .line 60
    iput v1, p0, Landroidx/transition/ArcMotion;->mMaximumAngle:F

    #@c
    .line 61
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@e
    .line 62
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@10
    .line 63
    sget v0, Landroidx/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    #@12
    iput v0, p0, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    #@14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    #@0
    .line 71
    invoke-direct {p0, p1, p2}, Landroidx/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 58
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalAngle:F

    #@6
    .line 59
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalAngle:F

    #@8
    const/high16 v1, 0x428c0000    # 70.0f

    #@a
    .line 60
    iput v1, p0, Landroidx/transition/ArcMotion;->mMaximumAngle:F

    #@c
    .line 61
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@e
    .line 62
    iput v0, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@10
    .line 63
    sget v2, Landroidx/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    #@12
    iput v2, p0, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    #@14
    .line 72
    sget-object v2, Landroidx/transition/Styleable;->ARC_MOTION:[I

    #@16
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@19
    move-result-object p1

    #@1a
    .line 73
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    #@1c
    const-string v2, "minimumVerticalAngle"

    #@1e
    const/4 v3, 0x1

    #@1f
    .line 74
    invoke-static {p1, p2, v2, v3, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@22
    move-result v2

    #@23
    .line 77
    invoke-virtual {p0, v2}, Landroidx/transition/ArcMotion;->setMinimumVerticalAngle(F)V

    #@26
    const-string v2, "minimumHorizontalAngle"

    #@28
    const/4 v3, 0x0

    #@29
    .line 78
    invoke-static {p1, p2, v2, v3, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@2c
    move-result v0

    #@2d
    .line 81
    invoke-virtual {p0, v0}, Landroidx/transition/ArcMotion;->setMinimumHorizontalAngle(F)V

    #@30
    const-string v0, "maximumAngle"

    #@32
    const/4 v2, 0x2

    #@33
    .line 82
    invoke-static {p1, p2, v0, v2, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    #@36
    move-result p2

    #@37
    .line 84
    invoke-virtual {p0, p2}, Landroidx/transition/ArcMotion;->setMaximumAngle(F)V

    #@3a
    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@3d
    return-void
.end method

.method private static toTangent(F)F
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p0, v0

    #@3
    if-ltz v0, :cond_19

    #@5
    const/high16 v0, 0x42b40000    # 90.0f

    #@7
    cmpl-float v0, p0, v0

    #@9
    if-gtz v0, :cond_19

    #@b
    const/high16 v0, 0x40000000    # 2.0f

    #@d
    div-float/2addr p0, v0

    #@e
    float-to-double v0, p0

    #@f
    .line 180
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    #@12
    move-result-wide v0

    #@13
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    #@16
    move-result-wide v0

    #@17
    double-to-float p0, v0

    #@18
    return p0

    #@19
    .line 178
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string v0, "Arc must be between 0 and 90 degrees"

    #@1d
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw p0
.end method


# virtual methods
.method public getMaximumAngle()F
    .registers 2

    #@0
    .line 173
    iget v0, p0, Landroidx/transition/ArcMotion;->mMaximumAngle:F

    #@2
    return v0
.end method

.method public getMinimumHorizontalAngle()F
    .registers 2

    #@0
    .line 115
    iget v0, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalAngle:F

    #@2
    return v0
.end method

.method public getMinimumVerticalAngle()F
    .registers 2

    #@0
    .line 146
    iget v0, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalAngle:F

    #@2
    return v0
.end method

.method public getPath(FFFF)Landroid/graphics/Path;
    .registers 16

    #@0
    .line 201
    new-instance v7, Landroid/graphics/Path;

    #@2
    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    #@5
    .line 202
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    #@8
    sub-float v0, p3, p1

    #@a
    sub-float v1, p4, p2

    #@c
    mul-float v2, v0, v0

    #@e
    mul-float v3, v1, v1

    #@10
    add-float/2addr v2, v3

    #@11
    add-float v3, p1, p3

    #@13
    const/high16 v4, 0x40000000    # 2.0f

    #@15
    div-float/2addr v3, v4

    #@16
    add-float v5, p2, p4

    #@18
    div-float/2addr v5, v4

    #@19
    const/high16 v6, 0x3e800000    # 0.25f

    #@1b
    mul-float/2addr v6, v2

    #@1c
    cmpl-float v8, p2, p4

    #@1e
    if-lez v8, :cond_22

    #@20
    const/4 v8, 0x1

    #@21
    goto :goto_23

    #@22
    :cond_22
    const/4 v8, 0x0

    #@23
    .line 223
    :goto_23
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@26
    move-result v9

    #@27
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@2a
    move-result v10

    #@2b
    cmpg-float v9, v9, v10

    #@2d
    if-gez v9, :cond_3f

    #@2f
    mul-float/2addr v1, v4

    #@30
    div-float/2addr v2, v1

    #@31
    .line 229
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@34
    move-result v0

    #@35
    if-eqz v8, :cond_3a

    #@37
    add-float/2addr v0, p4

    #@38
    move v1, p3

    #@39
    goto :goto_3c

    #@3a
    :cond_3a
    add-float/2addr v0, p2

    #@3b
    move v1, p1

    #@3c
    .line 238
    :goto_3c
    iget v2, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@3e
    goto :goto_4d

    #@3f
    :cond_3f
    mul-float/2addr v0, v4

    #@40
    div-float/2addr v2, v0

    #@41
    if-eqz v8, :cond_47

    #@43
    add-float/2addr v2, p1

    #@44
    move v0, p2

    #@45
    move v1, v2

    #@46
    goto :goto_4b

    #@47
    :cond_47
    sub-float v0, p3, v2

    #@49
    move v1, v0

    #@4a
    move v0, p4

    #@4b
    .line 251
    :goto_4b
    iget v2, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@4d
    :goto_4d
    mul-float v8, v6, v2

    #@4f
    mul-float/2addr v8, v2

    #@50
    sub-float v2, v3, v1

    #@52
    sub-float v9, v5, v0

    #@54
    mul-float/2addr v2, v2

    #@55
    mul-float/2addr v9, v9

    #@56
    add-float/2addr v2, v9

    #@57
    .line 258
    iget v9, p0, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    #@59
    mul-float/2addr v6, v9

    #@5a
    mul-float/2addr v6, v9

    #@5b
    cmpg-float v9, v2, v8

    #@5d
    const/4 v10, 0x0

    #@5e
    if-gez v9, :cond_61

    #@60
    goto :goto_68

    #@61
    :cond_61
    cmpl-float v8, v2, v6

    #@63
    if-lez v8, :cond_67

    #@65
    move v8, v6

    #@66
    goto :goto_68

    #@67
    :cond_67
    move v8, v10

    #@68
    :goto_68
    cmpl-float v6, v8, v10

    #@6a
    if-eqz v6, :cond_7a

    #@6c
    div-float/2addr v8, v2

    #@6d
    float-to-double v8, v8

    #@6e
    .line 268
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    #@71
    move-result-wide v8

    #@72
    double-to-float v2, v8

    #@73
    sub-float/2addr v1, v3

    #@74
    mul-float/2addr v1, v2

    #@75
    add-float/2addr v1, v3

    #@76
    sub-float/2addr v0, v5

    #@77
    mul-float/2addr v2, v0

    #@78
    add-float v0, v5, v2

    #@7a
    :cond_7a
    add-float/2addr p1, v1

    #@7b
    div-float/2addr p1, v4

    #@7c
    add-float/2addr p2, v0

    #@7d
    div-float v2, p2, v4

    #@7f
    add-float/2addr v1, p3

    #@80
    div-float v3, v1, v4

    #@82
    add-float/2addr v0, p4

    #@83
    div-float v4, v0, v4

    #@85
    move-object v0, v7

    #@86
    move v1, p1

    #@87
    move v5, p3

    #@88
    move v6, p4

    #@89
    .line 276
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@8c
    return-object v7
.end method

.method public setMaximumAngle(F)V
    .registers 2

    #@0
    .line 159
    iput p1, p0, Landroidx/transition/ArcMotion;->mMaximumAngle:F

    #@2
    .line 160
    invoke-static {p1}, Landroidx/transition/ArcMotion;->toTangent(F)F

    #@5
    move-result p1

    #@6
    iput p1, p0, Landroidx/transition/ArcMotion;->mMaximumTangent:F

    #@8
    return-void
.end method

.method public setMinimumHorizontalAngle(F)V
    .registers 2

    #@0
    .line 100
    iput p1, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalAngle:F

    #@2
    .line 101
    invoke-static {p1}, Landroidx/transition/ArcMotion;->toTangent(F)F

    #@5
    move-result p1

    #@6
    iput p1, p0, Landroidx/transition/ArcMotion;->mMinimumHorizontalTangent:F

    #@8
    return-void
.end method

.method public setMinimumVerticalAngle(F)V
    .registers 2

    #@0
    .line 130
    iput p1, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalAngle:F

    #@2
    .line 131
    invoke-static {p1}, Landroidx/transition/ArcMotion;->toTangent(F)F

    #@5
    move-result p1

    #@6
    iput p1, p0, Landroidx/transition/ArcMotion;->mMinimumVerticalTangent:F

    #@8
    return-void
.end method
