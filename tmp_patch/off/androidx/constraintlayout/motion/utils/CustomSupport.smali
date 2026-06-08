.class public Landroidx/constraintlayout/motion/utils/CustomSupport;
.super Ljava/lang/Object;
.source "CustomSupport.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomSupport"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static clamp(I)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    #@0
    shr-int/lit8 v0, p0, 0x1f

    #@2
    not-int v0, v0

    #@3
    and-int/2addr p0, v0

    #@4
    add-int/lit16 p0, p0, -0xff

    #@6
    shr-int/lit8 v0, p0, 0x1f

    #@8
    and-int/2addr p0, v0

    #@9
    add-int/lit16 p0, p0, 0xff

    #@b
    return p0
.end method

.method public static setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "att",
            "view",
            "value"
        }
    .end annotation

    #@0
    move-object/from16 v1, p1

    #@2
    const-string v2, "\""

    #@4
    const-string v3, " on View \""

    #@6
    const-string v4, "CustomSupport"

    #@8
    const-string v0, "unable to interpolate strings "

    #@a
    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v5

    #@e
    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    #@10
    const-string v7, "set"

    #@12
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@15
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getName()Ljava/lang/String;

    #@18
    move-result-object v7

    #@19
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    .line 23
    :try_start_21
    sget-object v7, Landroidx/constraintlayout/motion/utils/CustomSupport$1;->$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType:[I

    #@23
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@26
    move-result-object v8

    #@27
    invoke-virtual {v8}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->ordinal()I

    #@2a
    move-result v8

    #@2b
    aget v7, v7, v8

    #@2d
    const/4 v8, 0x3

    #@2e
    const/4 v9, 0x2

    #@2f
    const-wide v10, 0x3fdd1745d1745d17L    # 0.45454545454545453

    #@34
    const/high16 v12, 0x437f0000    # 255.0f

    #@36
    const/4 v13, 0x1

    #@37
    const/4 v14, 0x0

    #@38
    packed-switch v7, :pswitch_data_1c8

    #@3b
    goto/16 :goto_1c7

    #@3d
    :pswitch_3d
    new-array v0, v13, [Ljava/lang/Class;

    #@3f
    .line 61
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@41
    aput-object v7, v0, v14

    #@43
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@46
    move-result-object v0

    #@47
    new-array v5, v13, [Ljava/lang/Object;

    #@49
    .line 62
    aget v7, p2, v14

    #@4b
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@4e
    move-result-object v7

    #@4f
    aput-object v7, v5, v14

    #@51
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    goto/16 :goto_1c7

    #@56
    :pswitch_56
    new-array v0, v13, [Ljava/lang/Class;

    #@58
    .line 57
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@5a
    aput-object v7, v0, v14

    #@5c
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@5f
    move-result-object v0

    #@60
    new-array v5, v13, [Ljava/lang/Object;

    #@62
    .line 58
    aget v7, p2, v14

    #@64
    const/high16 v8, 0x3f000000    # 0.5f

    #@66
    cmpl-float v7, v7, v8

    #@68
    if-lez v7, :cond_6b

    #@6a
    goto :goto_6c

    #@6b
    :cond_6b
    move v13, v14

    #@6c
    :goto_6c
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6f
    move-result-object v7

    #@70
    aput-object v7, v5, v14

    #@72
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    goto/16 :goto_1c7

    #@77
    .line 54
    :pswitch_77
    new-instance v5, Ljava/lang/RuntimeException;

    #@79
    new-instance v7, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7e
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getName()Ljava/lang/String;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v0

    #@8a
    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v5

    #@8e
    :pswitch_8e
    new-array v0, v13, [Ljava/lang/Class;

    #@90
    .line 45
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@92
    aput-object v7, v0, v14

    #@94
    invoke-virtual {v5, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@97
    move-result-object v0

    #@98
    .line 46
    aget v5, p2, v14

    #@9a
    float-to-double v14, v5

    #@9b
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@9e
    move-result-wide v14

    #@9f
    double-to-float v5, v14

    #@a0
    mul-float/2addr v5, v12

    #@a1
    float-to-int v5, v5

    #@a2
    invoke-static {v5}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    #@a5
    move-result v5

    #@a6
    .line 47
    aget v14, p2, v13

    #@a8
    float-to-double v14, v14

    #@a9
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@ac
    move-result-wide v14

    #@ad
    double-to-float v14, v14

    #@ae
    mul-float/2addr v14, v12

    #@af
    float-to-int v14, v14

    #@b0
    invoke-static {v14}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    #@b3
    move-result v14

    #@b4
    .line 48
    aget v9, p2, v9

    #@b6
    move/from16 p0, v14

    #@b8
    float-to-double v13, v9

    #@b9
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@bc
    move-result-wide v9

    #@bd
    double-to-float v9, v9

    #@be
    mul-float/2addr v9, v12

    #@bf
    float-to-int v9, v9

    #@c0
    invoke-static {v9}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    #@c3
    move-result v9

    #@c4
    .line 49
    aget v8, p2, v8

    #@c6
    mul-float/2addr v8, v12

    #@c7
    float-to-int v8, v8

    #@c8
    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    #@cb
    move-result v8

    #@cc
    shl-int/lit8 v8, v8, 0x18

    #@ce
    shl-int/lit8 v5, v5, 0x10

    #@d0
    or-int/2addr v5, v8

    #@d1
    shl-int/lit8 v8, p0, 0x8

    #@d3
    or-int/2addr v5, v8

    #@d4
    or-int/2addr v5, v9

    #@d5
    const/4 v8, 0x1

    #@d6
    new-array v8, v8, [Ljava/lang/Object;

    #@d8
    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@db
    move-result-object v5

    #@dc
    const/4 v7, 0x0

    #@dd
    aput-object v5, v8, v7

    #@df
    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@e2
    goto/16 :goto_1c7

    #@e4
    :pswitch_e4
    move v0, v13

    #@e5
    new-array v13, v0, [Ljava/lang/Class;

    #@e7
    .line 33
    const-class v0, Landroid/graphics/drawable/Drawable;

    #@e9
    const/4 v7, 0x0

    #@ea
    aput-object v0, v13, v7

    #@ec
    invoke-virtual {v5, v6, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@ef
    move-result-object v0

    #@f0
    .line 34
    aget v5, p2, v7

    #@f2
    float-to-double v13, v5

    #@f3
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@f6
    move-result-wide v13

    #@f7
    double-to-float v5, v13

    #@f8
    mul-float/2addr v5, v12

    #@f9
    float-to-int v5, v5

    #@fa
    invoke-static {v5}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    #@fd
    move-result v5

    #@fe
    const/4 v13, 0x1

    #@ff
    .line 35
    aget v14, p2, v13

    #@101
    float-to-double v13, v14

    #@102
    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@105
    move-result-wide v13

    #@106
    double-to-float v13, v13

    #@107
    mul-float/2addr v13, v12

    #@108
    float-to-int v13, v13

    #@109
    invoke-static {v13}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    #@10c
    move-result v13

    #@10d
    .line 36
    aget v9, p2, v9

    #@10f
    float-to-double v7, v9

    #@110
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    #@113
    move-result-wide v7

    #@114
    double-to-float v7, v7

    #@115
    mul-float/2addr v7, v12

    #@116
    float-to-int v7, v7

    #@117
    invoke-static {v7}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    #@11a
    move-result v7

    #@11b
    const/4 v8, 0x3

    #@11c
    .line 37
    aget v8, p2, v8

    #@11e
    mul-float/2addr v8, v12

    #@11f
    float-to-int v8, v8

    #@120
    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    #@123
    move-result v8

    #@124
    shl-int/lit8 v8, v8, 0x18

    #@126
    shl-int/lit8 v5, v5, 0x10

    #@128
    or-int/2addr v5, v8

    #@129
    shl-int/lit8 v8, v13, 0x8

    #@12b
    or-int/2addr v5, v8

    #@12c
    or-int/2addr v5, v7

    #@12d
    .line 39
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    #@12f
    invoke-direct {v7}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    #@132
    .line 40
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    #@135
    const/4 v5, 0x1

    #@136
    new-array v5, v5, [Ljava/lang/Object;

    #@138
    const/4 v8, 0x0

    #@139
    aput-object v7, v5, v8

    #@13b
    .line 41
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@13e
    goto/16 :goto_1c7

    #@140
    :pswitch_140
    move v0, v13

    #@141
    new-array v8, v0, [Ljava/lang/Class;

    #@143
    .line 29
    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@145
    const/4 v7, 0x0

    #@146
    aput-object v9, v8, v7

    #@148
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@14b
    move-result-object v5

    #@14c
    new-array v0, v0, [Ljava/lang/Object;

    #@14e
    .line 30
    aget v8, p2, v7

    #@150
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@153
    move-result-object v8

    #@154
    aput-object v8, v0, v7

    #@156
    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@159
    goto :goto_1c7

    #@15a
    :pswitch_15a
    move v0, v13

    #@15b
    new-array v8, v0, [Ljava/lang/Class;

    #@15d
    .line 25
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@15f
    const/4 v7, 0x0

    #@160
    aput-object v9, v8, v7

    #@162
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@165
    move-result-object v5

    #@166
    new-array v0, v0, [Ljava/lang/Object;

    #@168
    .line 26
    aget v8, p2, v7

    #@16a
    float-to-int v8, v8

    #@16b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16e
    move-result-object v8

    #@16f
    aput-object v8, v0, v7

    #@171
    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_174
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_174} :catch_1a1
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_174} :catch_17a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_174} :catch_175

    #@174
    goto :goto_1c7

    #@175
    :catch_175
    move-exception v0

    #@176
    .line 72
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    #@179
    goto :goto_1c7

    #@17a
    :catch_17a
    move-exception v0

    #@17b
    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    #@17d
    const-string v7, "cannot access method "

    #@17f
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@182
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v5

    #@186
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v3

    #@18a
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@18d
    move-result-object v1

    #@18e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    move-result-object v1

    #@192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v1

    #@196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@199
    move-result-object v1

    #@19a
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@19d
    .line 70
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@1a0
    goto :goto_1c7

    #@1a1
    :catch_1a1
    move-exception v0

    #@1a2
    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a4
    const-string v7, "no method "

    #@1a6
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1a9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v5

    #@1ad
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v3

    #@1b1
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@1b4
    move-result-object v1

    #@1b5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v1

    #@1b9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v1

    #@1bd
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c0
    move-result-object v1

    #@1c1
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c4
    .line 67
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    #@1c7
    :goto_1c7
    return-void

    #@1c8
    :pswitch_data_1c8
    .packed-switch 0x1
        :pswitch_15a
        :pswitch_140
        :pswitch_e4
        :pswitch_8e
        :pswitch_77
        :pswitch_56
        :pswitch_3d
    .end packed-switch
.end method
