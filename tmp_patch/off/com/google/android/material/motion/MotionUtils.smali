.class public Lcom/google/android/material/motion/MotionUtils;
.super Ljava/lang/Object;
.source "MotionUtils.java"


# static fields
.field private static final EASING_TYPE_CUBIC_BEZIER:Ljava/lang/String; = "cubic-bezier"

.field private static final EASING_TYPE_FORMAT_END:Ljava/lang/String; = ")"

.field private static final EASING_TYPE_FORMAT_START:Ljava/lang/String; = "("

.field private static final EASING_TYPE_PATH:Ljava/lang/String; = "path"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getLegacyControlPoint([Ljava/lang/String;I)F
    .registers 4

    #@0
    .line 129
    aget-object p0, p0, p1

    #@2
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@5
    move-result p0

    #@6
    const/4 p1, 0x0

    #@7
    cmpg-float p1, p0, p1

    #@9
    if-ltz p1, :cond_12

    #@b
    const/high16 p1, 0x3f800000    # 1.0f

    #@d
    cmpl-float p1, p0, p1

    #@f
    if-gtz p1, :cond_12

    #@11
    return p0

    #@12
    .line 131
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    const-string v1, "Motion easing control point value must be between 0 and 1; instead got: "

    #@18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p0

    #@1f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object p0

    #@23
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw p1
.end method

.method private static getLegacyEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result p1

    #@4
    add-int/lit8 p1, p1, 0x1

    #@6
    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    .line 123
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method private static getLegacyThemeInterpolator(Ljava/lang/String;)Landroid/animation/TimeInterpolator;
    .registers 5

    #@0
    const-string v0, "cubic-bezier"

    #@2
    .line 89
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_45

    #@8
    .line 90
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->getLegacyEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object p0

    #@c
    const-string v0, ","

    #@e
    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    .line 92
    array-length v0, p0

    #@13
    const/4 v1, 0x4

    #@14
    if-ne v0, v1, :cond_2f

    #@16
    const/4 v0, 0x0

    #@17
    .line 99
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    #@1a
    move-result v0

    #@1b
    const/4 v1, 0x1

    #@1c
    .line 100
    invoke-static {p0, v1}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    #@1f
    move-result v1

    #@20
    const/4 v2, 0x2

    #@21
    .line 101
    invoke-static {p0, v2}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    #@24
    move-result v2

    #@25
    const/4 v3, 0x3

    #@26
    .line 102
    invoke-static {p0, v3}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    #@29
    move-result p0

    #@2a
    .line 103
    invoke-static {v0, v1, v2, p0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    #@2d
    move-result-object p0

    #@2e
    return-object p0

    #@2f
    .line 93
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@31
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    const-string v2, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: "

    #@35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@38
    array-length p0, p0

    #@39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object p0

    #@3d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object p0

    #@41
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    :cond_45
    const-string v0, "path"

    #@47
    .line 104
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_5a

    #@4d
    .line 105
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->getLegacyEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@50
    move-result-object p0

    #@51
    .line 106
    invoke-static {p0}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    #@54
    move-result-object p0

    #@55
    invoke-static {p0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    #@58
    move-result-object p0

    #@59
    return-object p0

    #@5a
    .line 108
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5c
    new-instance v1, Ljava/lang/StringBuilder;

    #@5e
    const-string v2, "Invalid motion easing type: "

    #@60
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@63
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object p0

    #@67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object p0

    #@6b
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v0
.end method

.method private static isLegacyEasingAttribute(Ljava/lang/String;)Z
    .registers 2

    #@0
    const-string v0, "cubic-bezier"

    #@2
    .line 113
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_13

    #@8
    const-string v0, "path"

    #@a
    .line 114
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result p0

    #@e
    if-eqz p0, :cond_11

    #@10
    goto :goto_13

    #@11
    :cond_11
    const/4 p0, 0x0

    #@12
    goto :goto_14

    #@13
    :cond_13
    :goto_13
    const/4 p0, 0x1

    #@14
    :goto_14
    return p0
.end method

.method private static isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object p1

    #@9
    const-string v0, "("

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object p1

    #@f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object p1

    #@13
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@16
    move-result p1

    #@17
    if-eqz p1, :cond_23

    #@19
    const-string p1, ")"

    #@1b
    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1e
    move-result p0

    #@1f
    if-eqz p0, :cond_23

    #@21
    const/4 p0, 0x1

    #@22
    goto :goto_24

    #@23
    :cond_23
    const/4 p0, 0x0

    #@24
    :goto_24
    return p0
.end method

.method public static resolveThemeDuration(Landroid/content/Context;II)I
    .registers 3

    #@0
    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveInteger(Landroid/content/Context;II)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .registers 6

    #@0
    .line 68
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@d
    move-result p1

    #@e
    if-nez p1, :cond_11

    #@10
    return-object p2

    #@11
    .line 73
    :cond_11
    iget p1, v0, Landroid/util/TypedValue;->type:I

    #@13
    const/4 p2, 0x3

    #@14
    if-ne p1, p2, :cond_2e

    #@16
    .line 80
    iget-object p1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object p1

    #@1c
    .line 81
    invoke-static {p1}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingAttribute(Ljava/lang/String;)Z

    #@1f
    move-result p2

    #@20
    if-eqz p2, :cond_27

    #@22
    .line 82
    invoke-static {p1}, Lcom/google/android/material/motion/MotionUtils;->getLegacyThemeInterpolator(Ljava/lang/String;)Landroid/animation/TimeInterpolator;

    #@25
    move-result-object p0

    #@26
    return-object p0

    #@27
    .line 85
    :cond_27
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    #@29
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@2c
    move-result-object p0

    #@2d
    return-object p0

    #@2e
    .line 74
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@30
    const-string p1, "Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes."

    #@32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw p0
.end method
