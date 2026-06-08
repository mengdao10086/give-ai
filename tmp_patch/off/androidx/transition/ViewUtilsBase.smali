.class Landroidx/transition/ViewUtilsBase;
.super Ljava/lang/Object;
.source "ViewUtilsBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsBase"

.field private static final VISIBILITY_MASK:I = 0xc

.field private static sSetFrameFetched:Z

.field private static sSetFrameMethod:Ljava/lang/reflect/Method;

.field private static sViewFlagsField:Ljava/lang/reflect/Field;

.field private static sViewFlagsFieldFetched:Z


# instance fields
.field private mMatrixValues:[F


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private fetchSetFrame()V
    .registers 7

    #@0
    .line 176
    sget-boolean v0, Landroidx/transition/ViewUtilsBase;->sSetFrameFetched:Z

    #@2
    if-nez v0, :cond_33

    #@4
    const/4 v0, 0x1

    #@5
    .line 178
    :try_start_5
    const-class v1, Landroid/view/View;

    #@7
    const-string v2, "setFrame"

    #@9
    const/4 v3, 0x4

    #@a
    new-array v3, v3, [Ljava/lang/Class;

    #@c
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@e
    const/4 v5, 0x0

    #@f
    aput-object v4, v3, v5

    #@11
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@13
    aput-object v4, v3, v0

    #@15
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@17
    const/4 v5, 0x2

    #@18
    aput-object v4, v3, v5

    #@1a
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1c
    const/4 v5, 0x3

    #@1d
    aput-object v4, v3, v5

    #@1f
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@22
    move-result-object v1

    #@23
    sput-object v1, Landroidx/transition/ViewUtilsBase;->sSetFrameMethod:Ljava/lang/reflect/Method;

    #@25
    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_28} :catch_29

    #@28
    goto :goto_31

    #@29
    :catch_29
    move-exception v1

    #@2a
    const-string v2, "ViewUtilsBase"

    #@2c
    const-string v3, "Failed to retrieve setFrame method"

    #@2e
    .line 182
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    .line 184
    :goto_31
    sput-boolean v0, Landroidx/transition/ViewUtilsBase;->sSetFrameFetched:Z

    #@33
    :cond_33
    return-void
.end method


# virtual methods
.method public clearNonTransitionAlpha(Landroid/view/View;)V
    .registers 4

    #@0
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_c

    #@6
    .line 73
    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@c
    :cond_c
    return-void
.end method

.method public getTransitionAlpha(Landroid/view/View;)F
    .registers 3

    #@0
    .line 55
    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    #@2
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Float;

    #@8
    if-eqz v0, :cond_14

    #@a
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    #@d
    move-result p1

    #@e
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@11
    move-result v0

    #@12
    div-float/2addr p1, v0

    #@13
    return p1

    #@14
    .line 59
    :cond_14
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    #@17
    move-result p1

    #@18
    return p1
.end method

.method public saveNonTransitionAlpha(Landroid/view/View;)V
    .registers 4

    #@0
    .line 64
    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    #@2
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_15

    #@8
    .line 65
    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    #@a
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    #@d
    move-result v1

    #@e
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@15
    :cond_15
    return-void
.end method

.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 12

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x0

    #@4
    if-eqz p2, :cond_5f

    #@6
    .line 109
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    #@9
    move-result v3

    #@a
    if-eqz v3, :cond_d

    #@c
    goto :goto_5f

    #@d
    .line 118
    :cond_d
    iget-object v3, p0, Landroidx/transition/ViewUtilsBase;->mMatrixValues:[F

    #@f
    if-nez v3, :cond_17

    #@11
    const/16 v3, 0x9

    #@13
    new-array v3, v3, [F

    #@15
    .line 120
    iput-object v3, p0, Landroidx/transition/ViewUtilsBase;->mMatrixValues:[F

    #@17
    .line 122
    :cond_17
    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    #@1a
    const/4 p2, 0x3

    #@1b
    .line 123
    aget p2, v3, p2

    #@1d
    mul-float v4, p2, p2

    #@1f
    sub-float/2addr v0, v4

    #@20
    float-to-double v4, v0

    #@21
    .line 124
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    #@24
    move-result-wide v4

    #@25
    double-to-float v0, v4

    #@26
    const/4 v4, 0x0

    #@27
    aget v5, v3, v4

    #@29
    cmpg-float v5, v5, v2

    #@2b
    if-gez v5, :cond_2f

    #@2d
    const/4 v5, -0x1

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    const/4 v5, 0x1

    #@30
    :goto_30
    int-to-float v5, v5

    #@31
    mul-float/2addr v0, v5

    #@32
    float-to-double v5, p2

    #@33
    float-to-double v7, v0

    #@34
    .line 126
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    #@37
    move-result-wide v5

    #@38
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    #@3b
    move-result-wide v5

    #@3c
    double-to-float p2, v5

    #@3d
    .line 127
    aget v4, v3, v4

    #@3f
    div-float/2addr v4, v0

    #@40
    const/4 v5, 0x4

    #@41
    .line 128
    aget v5, v3, v5

    #@43
    div-float/2addr v5, v0

    #@44
    .line 129
    aget v0, v3, v1

    #@46
    const/4 v1, 0x5

    #@47
    .line 130
    aget v1, v3, v1

    #@49
    .line 131
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    #@4c
    .line 132
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    #@4f
    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    #@52
    .line 134
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    #@55
    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    #@58
    .line 136
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    #@5b
    .line 137
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    #@5e
    goto :goto_80

    #@5f
    .line 110
    :cond_5f
    :goto_5f
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@62
    move-result p2

    #@63
    div-int/2addr p2, v1

    #@64
    int-to-float p2, p2

    #@65
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    #@68
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@6b
    move-result p2

    #@6c
    div-int/2addr p2, v1

    #@6d
    int-to-float p2, p2

    #@6e
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    #@71
    .line 112
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    #@74
    .line 113
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    #@77
    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    #@7a
    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    #@7d
    .line 116
    invoke-virtual {p1, v2}, Landroid/view/View;->setRotation(F)V

    #@80
    :goto_80
    return-void
.end method

.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .registers 9

    #@0
    .line 142
    invoke-direct {p0}, Landroidx/transition/ViewUtilsBase;->fetchSetFrame()V

    #@3
    .line 143
    sget-object v0, Landroidx/transition/ViewUtilsBase;->sSetFrameMethod:Ljava/lang/reflect/Method;

    #@5
    if-eqz v0, :cond_35

    #@7
    const/4 v1, 0x4

    #@8
    :try_start_8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    .line 145
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object p2

    #@e
    const/4 v2, 0x0

    #@f
    aput-object p2, v1, v2

    #@11
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object p2

    #@15
    const/4 p3, 0x1

    #@16
    aput-object p2, v1, p3

    #@18
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object p2

    #@1c
    const/4 p3, 0x2

    #@1d
    aput-object p2, v1, p3

    #@1f
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object p2

    #@23
    const/4 p3, 0x3

    #@24
    aput-object p2, v1, p3

    #@26
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_29} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_29} :catch_2a

    #@29
    goto :goto_35

    #@2a
    :catch_2a
    move-exception p1

    #@2b
    .line 149
    new-instance p2, Ljava/lang/RuntimeException;

    #@2d
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@30
    move-result-object p1

    #@31
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@34
    throw p2

    #@35
    :catch_35
    :cond_35
    :goto_35
    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .registers 4

    #@0
    .line 46
    sget v0, Landroidx/transition/R$id;->save_non_transition_alpha:I

    #@2
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Float;

    #@8
    if-eqz v0, :cond_13

    #@a
    .line 48
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@d
    move-result v0

    #@e
    mul-float/2addr v0, p2

    #@f
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    #@12
    goto :goto_16

    #@13
    .line 50
    :cond_13
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    #@16
    :goto_16
    return-void
.end method

.method public setTransitionVisibility(Landroid/view/View;I)V
    .registers 6

    #@0
    .line 155
    sget-boolean v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsFieldFetched:Z

    #@2
    if-nez v0, :cond_1c

    #@4
    const/4 v0, 0x1

    #@5
    .line 157
    :try_start_5
    const-class v1, Landroid/view/View;

    #@7
    const-string v2, "mViewFlags"

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@c
    move-result-object v1

    #@d
    sput-object v1, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    #@f
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_12} :catch_13

    #@12
    goto :goto_1a

    #@13
    :catch_13
    const-string v1, "ViewUtilsBase"

    #@15
    const-string v2, "fetchViewFlagsField: "

    #@17
    .line 160
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 162
    :goto_1a
    sput-boolean v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsFieldFetched:Z

    #@1c
    .line 164
    :cond_1c
    sget-object v0, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    #@1e
    if-eqz v0, :cond_2c

    #@20
    .line 166
    :try_start_20
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@23
    move-result v0

    #@24
    .line 167
    sget-object v1, Landroidx/transition/ViewUtilsBase;->sViewFlagsField:Ljava/lang/reflect/Field;

    #@26
    and-int/lit8 v0, v0, -0xd

    #@28
    or-int/2addr p2, v0

    #@29
    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_2c} :catch_2c

    #@2c
    :catch_2c
    :cond_2c
    return-void
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 5

    #@0
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    .line 79
    instance-of v1, v0, Landroid/view/View;

    #@6
    if-eqz v1, :cond_1c

    #@8
    .line 80
    check-cast v0, Landroid/view/View;

    #@a
    .line 81
    invoke-virtual {p0, v0, p2}, Landroidx/transition/ViewUtilsBase;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    #@d
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    #@10
    move-result v1

    #@11
    neg-int v1, v1

    #@12
    int-to-float v1, v1

    #@13
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    #@16
    move-result v0

    #@17
    neg-int v0, v0

    #@18
    int-to-float v0, v0

    #@19
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@1c
    .line 84
    :cond_1c
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@1f
    move-result v0

    #@20
    int-to-float v0, v0

    #@21
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@24
    move-result v1

    #@25
    int-to-float v1, v1

    #@26
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@29
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@2c
    move-result-object p1

    #@2d
    .line 86
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    #@30
    move-result v0

    #@31
    if-nez v0, :cond_36

    #@33
    .line 87
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    #@36
    :cond_36
    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 5

    #@0
    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    .line 93
    instance-of v1, v0, Landroid/view/View;

    #@6
    if-eqz v1, :cond_1a

    #@8
    .line 94
    check-cast v0, Landroid/view/View;

    #@a
    .line 95
    invoke-virtual {p0, v0, p2}, Landroidx/transition/ViewUtilsBase;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    #@d
    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    #@10
    move-result v1

    #@11
    int-to-float v1, v1

    #@12
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    #@15
    move-result v0

    #@16
    int-to-float v0, v0

    #@17
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@1a
    .line 98
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@1d
    move-result v0

    #@1e
    neg-int v0, v0

    #@1f
    int-to-float v0, v0

    #@20
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@23
    move-result v1

    #@24
    neg-int v1, v1

    #@25
    int-to-float v1, v1

    #@26
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@29
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@2c
    move-result-object p1

    #@2d
    .line 100
    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    #@30
    move-result v0

    #@31
    if-nez v0, :cond_41

    #@33
    .line 101
    new-instance v0, Landroid/graphics/Matrix;

    #@35
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@38
    .line 102
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    #@3b
    move-result p1

    #@3c
    if-eqz p1, :cond_41

    #@3e
    .line 103
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@41
    :cond_41
    return-void
.end method
