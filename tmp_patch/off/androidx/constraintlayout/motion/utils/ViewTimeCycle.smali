.class public abstract Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.super Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewTimeCycle"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 38
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;-><init>()V

    #@3
    return-void
.end method

.method public static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "attrList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/utils/ViewTimeCycle;"
        }
    .end annotation

    #@0
    .line 69
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    #@2
    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@5
    return-object v0
.end method

.method public static makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "currentTime"
        }
    .end annotation

    #@0
    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_ec

    #@b
    goto/16 :goto_9c

    #@d
    :sswitch_d
    const-string v0, "alpha"

    #@f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result p0

    #@13
    if-nez p0, :cond_17

    #@15
    goto/16 :goto_9c

    #@17
    :cond_17
    const/16 v1, 0xb

    #@19
    goto/16 :goto_9c

    #@1b
    :sswitch_1b
    const-string v0, "transitionPathRotate"

    #@1d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result p0

    #@21
    if-nez p0, :cond_25

    #@23
    goto/16 :goto_9c

    #@25
    :cond_25
    const/16 v1, 0xa

    #@27
    goto/16 :goto_9c

    #@29
    :sswitch_29
    const-string v0, "elevation"

    #@2b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result p0

    #@2f
    if-nez p0, :cond_33

    #@31
    goto/16 :goto_9c

    #@33
    :cond_33
    const/16 v1, 0x9

    #@35
    goto/16 :goto_9c

    #@37
    :sswitch_37
    const-string v0, "rotation"

    #@39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result p0

    #@3d
    if-nez p0, :cond_41

    #@3f
    goto/16 :goto_9c

    #@41
    :cond_41
    const/16 v1, 0x8

    #@43
    goto/16 :goto_9c

    #@45
    :sswitch_45
    const-string v0, "scaleY"

    #@47
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result p0

    #@4b
    if-nez p0, :cond_4e

    #@4d
    goto :goto_9c

    #@4e
    :cond_4e
    const/4 v1, 0x7

    #@4f
    goto :goto_9c

    #@50
    :sswitch_50
    const-string v0, "scaleX"

    #@52
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@55
    move-result p0

    #@56
    if-nez p0, :cond_59

    #@58
    goto :goto_9c

    #@59
    :cond_59
    const/4 v1, 0x6

    #@5a
    goto :goto_9c

    #@5b
    :sswitch_5b
    const-string v0, "progress"

    #@5d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result p0

    #@61
    if-nez p0, :cond_64

    #@63
    goto :goto_9c

    #@64
    :cond_64
    const/4 v1, 0x5

    #@65
    goto :goto_9c

    #@66
    :sswitch_66
    const-string v0, "translationZ"

    #@68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result p0

    #@6c
    if-nez p0, :cond_6f

    #@6e
    goto :goto_9c

    #@6f
    :cond_6f
    const/4 v1, 0x4

    #@70
    goto :goto_9c

    #@71
    :sswitch_71
    const-string v0, "translationY"

    #@73
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result p0

    #@77
    if-nez p0, :cond_7a

    #@79
    goto :goto_9c

    #@7a
    :cond_7a
    const/4 v1, 0x3

    #@7b
    goto :goto_9c

    #@7c
    :sswitch_7c
    const-string v0, "translationX"

    #@7e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result p0

    #@82
    if-nez p0, :cond_85

    #@84
    goto :goto_9c

    #@85
    :cond_85
    const/4 v1, 0x2

    #@86
    goto :goto_9c

    #@87
    :sswitch_87
    const-string v0, "rotationY"

    #@89
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result p0

    #@8d
    if-nez p0, :cond_90

    #@8f
    goto :goto_9c

    #@90
    :cond_90
    const/4 v1, 0x1

    #@91
    goto :goto_9c

    #@92
    :sswitch_92
    const-string v0, "rotationX"

    #@94
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result p0

    #@98
    if-nez p0, :cond_9b

    #@9a
    goto :goto_9c

    #@9b
    :cond_9b
    const/4 v1, 0x0

    #@9c
    :goto_9c
    packed-switch v1, :pswitch_data_11e

    #@9f
    const/4 p0, 0x0

    #@a0
    return-object p0

    #@a1
    .line 76
    :pswitch_a1
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    #@a3
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>()V

    #@a6
    goto :goto_e8

    #@a7
    .line 91
    :pswitch_a7
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

    #@a9
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;-><init>()V

    #@ac
    goto :goto_e8

    #@ad
    .line 79
    :pswitch_ad
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;

    #@af
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;-><init>()V

    #@b2
    goto :goto_e8

    #@b3
    .line 82
    :pswitch_b3
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;

    #@b5
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;-><init>()V

    #@b8
    goto :goto_e8

    #@b9
    .line 97
    :pswitch_b9
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;

    #@bb
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;-><init>()V

    #@be
    goto :goto_e8

    #@bf
    .line 94
    :pswitch_bf
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;

    #@c1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;-><init>()V

    #@c4
    goto :goto_e8

    #@c5
    .line 109
    :pswitch_c5
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;

    #@c7
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;-><init>()V

    #@ca
    goto :goto_e8

    #@cb
    .line 106
    :pswitch_cb
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;

    #@cd
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;-><init>()V

    #@d0
    goto :goto_e8

    #@d1
    .line 103
    :pswitch_d1
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;

    #@d3
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;-><init>()V

    #@d6
    goto :goto_e8

    #@d7
    .line 100
    :pswitch_d7
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;

    #@d9
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;-><init>()V

    #@dc
    goto :goto_e8

    #@dd
    .line 88
    :pswitch_dd
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;

    #@df
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;-><init>()V

    #@e2
    goto :goto_e8

    #@e3
    .line 85
    :pswitch_e3
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;

    #@e5
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;-><init>()V

    #@e8
    .line 114
    :goto_e8
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setStartTime(J)V

    #@eb
    return-object p0

    #@ec
    :sswitch_data_ec
    .sparse-switch
        -0x4a771f66 -> :sswitch_92
        -0x4a771f65 -> :sswitch_87
        -0x490b9c39 -> :sswitch_7c
        -0x490b9c38 -> :sswitch_71
        -0x490b9c37 -> :sswitch_66
        -0x3bab3dd3 -> :sswitch_5b
        -0x3621dfb2 -> :sswitch_50
        -0x3621dfb1 -> :sswitch_45
        -0x266f082 -> :sswitch_37
        -0x42d1a3 -> :sswitch_29
        0x2382115 -> :sswitch_1b
        0x589b15e -> :sswitch_d
    .end sparse-switch

    #@11e
    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_e3
        :pswitch_dd
        :pswitch_d7
        :pswitch_d1
        :pswitch_cb
        :pswitch_c5
        :pswitch_bf
        :pswitch_b9
        :pswitch_b3
        :pswitch_ad
        :pswitch_a7
        :pswitch_a1
    .end packed-switch
.end method


# virtual methods
.method public get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F
    .registers 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "time",
            "view",
            "cache"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-wide/from16 v1, p2

    #@4
    move-object/from16 v3, p4

    #@6
    move-object/from16 v4, p5

    #@8
    .line 44
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    #@a
    move/from16 v6, p1

    #@c
    float-to-double v6, v6

    #@d
    iget-object v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    #@f
    invoke-virtual {v5, v6, v7, v8}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    #@12
    .line 45
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    #@14
    const/4 v6, 0x1

    #@15
    aget v5, v5, v6

    #@17
    const/4 v7, 0x0

    #@18
    cmpl-float v8, v5, v7

    #@1a
    const/4 v9, 0x2

    #@1b
    const/4 v10, 0x0

    #@1c
    if-nez v8, :cond_25

    #@1e
    .line 47
    iput-boolean v10, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    #@20
    .line 48
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    #@22
    aget v1, v1, v9

    #@24
    return v1

    #@25
    .line 50
    :cond_25
    iget v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    #@27
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    #@2a
    move-result v11

    #@2b
    if-eqz v11, :cond_3f

    #@2d
    .line 51
    iget-object v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    #@2f
    invoke-virtual {v4, v3, v11, v10}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    #@32
    move-result v11

    #@33
    iput v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    #@35
    .line 52
    iget v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    #@37
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    #@3a
    move-result v11

    #@3b
    if-eqz v11, :cond_3f

    #@3d
    .line 53
    iput v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    #@3f
    .line 56
    :cond_3f
    iget-wide v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_time:J

    #@41
    sub-long v11, v1, v11

    #@43
    .line 57
    iget v13, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    #@45
    float-to-double v13, v13

    #@46
    long-to-double v11, v11

    #@47
    const-wide v15, 0x3e112e0be826d695L    # 1.0E-9

    #@4c
    mul-double/2addr v11, v15

    #@4d
    float-to-double v6, v5

    #@4e
    mul-double/2addr v11, v6

    #@4f
    add-double/2addr v13, v11

    #@50
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    #@52
    rem-double/2addr v13, v5

    #@53
    double-to-float v5, v13

    #@54
    iput v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    #@56
    .line 58
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    #@58
    iget v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    #@5a
    invoke-virtual {v4, v3, v5, v10, v6}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->setFloatValue(Ljava/lang/Object;Ljava/lang/String;IF)V

    #@5d
    .line 59
    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_time:J

    #@5f
    .line 60
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    #@61
    aget v1, v1, v10

    #@63
    .line 61
    iget v2, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    #@65
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->calcWave(F)F

    #@68
    move-result v2

    #@69
    .line 62
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    #@6b
    aget v3, v3, v9

    #@6d
    mul-float/2addr v2, v1

    #@6e
    add-float/2addr v2, v3

    #@6f
    const/4 v3, 0x0

    #@70
    cmpl-float v1, v1, v3

    #@72
    if-nez v1, :cond_79

    #@74
    if-eqz v8, :cond_77

    #@76
    goto :goto_79

    #@77
    :cond_77
    move v6, v10

    #@78
    goto :goto_7a

    #@79
    :cond_79
    :goto_79
    const/4 v6, 0x1

    #@7a
    .line 64
    :goto_7a
    iput-boolean v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    #@7c
    return v2
.end method

.method public abstract setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "t",
            "time",
            "cache"
        }
    .end annotation
.end method
