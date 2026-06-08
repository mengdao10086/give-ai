.class public Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source "MotionKeyTimeCycle.java"


# static fields
.field public static final KEY_TYPE:I = 0x3

.field static final NAME:Ljava/lang/String; = "KeyTimeCycle"

.field private static final TAG:Ljava/lang/String; = "KeyTimeCycle"


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mCustomWaveShape:Ljava/lang/String;

.field private mElevation:F

.field private mProgress:F

.field private mRotation:F

.field private mRotationX:F

.field private mRotationY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionEasing:Ljava/lang/String;

.field private mTransitionPathRotate:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private mTranslationZ:F

.field private mWaveOffset:F

.field private mWavePeriod:F

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 28
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 33
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    #@6
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@8
    .line 34
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    #@a
    .line 35
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    #@c
    .line 36
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    #@e
    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    #@10
    .line 38
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    #@12
    .line 39
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    #@14
    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    #@16
    .line 41
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    #@18
    .line 42
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    #@1a
    .line 43
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    #@1c
    .line 44
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    #@1e
    .line 45
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    #@20
    const/4 v1, 0x0

    #@21
    .line 46
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@23
    const/4 v1, 0x0

    #@24
    .line 47
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    #@26
    .line 48
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@28
    const/4 v0, 0x0

    #@29
    .line 49
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@2b
    const/4 v0, 0x3

    #@2c
    .line 53
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mType:I

    #@2e
    .line 54
    new-instance v0, Ljava/util/HashMap;

    #@30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@33
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustom:Ljava/util/HashMap;

    #@35
    return-void
.end method


# virtual methods
.method public addTimeValues(Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 58
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_20f

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/String;

    #@14
    .line 59
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    move-object v3, v2

    #@19
    check-cast v3, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;

    #@1b
    if-nez v3, :cond_1e

    #@1d
    goto :goto_8

    #@1e
    :cond_1e
    const-string v2, "CUSTOM"

    #@20
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@23
    move-result v2

    #@24
    const/4 v4, 0x7

    #@25
    if-eqz v2, :cond_45

    #@27
    .line 64
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 65
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustom:Ljava/util/HashMap;

    #@2d
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    move-object v6, v1

    #@32
    check-cast v6, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@34
    if-eqz v6, :cond_8

    #@36
    .line 67
    move-object v4, v3

    #@37
    check-cast v4, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;

    #@39
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    #@3b
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@3d
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@3f
    iget v9, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@41
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet$CustomVarSet;->setPoint(ILandroidx/constraintlayout/core/motion/CustomVariable;FIF)V

    #@44
    goto :goto_8

    #@45
    .line 71
    :cond_45
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@48
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@4b
    move-result v2

    #@4c
    const/4 v5, -0x1

    #@4d
    sparse-switch v2, :sswitch_data_210

    #@50
    :goto_50
    move v4, v5

    #@51
    goto/16 :goto_dc

    #@53
    :sswitch_53
    const-string v2, "pathRotate"

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v2

    #@59
    if-nez v2, :cond_5c

    #@5b
    goto :goto_50

    #@5c
    :cond_5c
    const/16 v4, 0xb

    #@5e
    goto/16 :goto_dc

    #@60
    :sswitch_60
    const-string v2, "alpha"

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v2

    #@66
    if-nez v2, :cond_69

    #@68
    goto :goto_50

    #@69
    :cond_69
    const/16 v4, 0xa

    #@6b
    goto/16 :goto_dc

    #@6d
    :sswitch_6d
    const-string v2, "elevation"

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v2

    #@73
    if-nez v2, :cond_76

    #@75
    goto :goto_50

    #@76
    :cond_76
    const/16 v4, 0x9

    #@78
    goto/16 :goto_dc

    #@7a
    :sswitch_7a
    const-string v2, "scaleY"

    #@7c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v2

    #@80
    if-nez v2, :cond_83

    #@82
    goto :goto_50

    #@83
    :cond_83
    const/16 v4, 0x8

    #@85
    goto :goto_dc

    #@86
    :sswitch_86
    const-string v2, "scaleX"

    #@88
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v2

    #@8c
    if-nez v2, :cond_dc

    #@8e
    goto :goto_50

    #@8f
    :sswitch_8f
    const-string v2, "progress"

    #@91
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v2

    #@95
    if-nez v2, :cond_98

    #@97
    goto :goto_50

    #@98
    :cond_98
    const/4 v4, 0x6

    #@99
    goto :goto_dc

    #@9a
    :sswitch_9a
    const-string v2, "translationZ"

    #@9c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result v2

    #@a0
    if-nez v2, :cond_a3

    #@a2
    goto :goto_50

    #@a3
    :cond_a3
    const/4 v4, 0x5

    #@a4
    goto :goto_dc

    #@a5
    :sswitch_a5
    const-string v2, "translationY"

    #@a7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v2

    #@ab
    if-nez v2, :cond_ae

    #@ad
    goto :goto_50

    #@ae
    :cond_ae
    const/4 v4, 0x4

    #@af
    goto :goto_dc

    #@b0
    :sswitch_b0
    const-string v2, "translationX"

    #@b2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b5
    move-result v2

    #@b6
    if-nez v2, :cond_b9

    #@b8
    goto :goto_50

    #@b9
    :cond_b9
    const/4 v4, 0x3

    #@ba
    goto :goto_dc

    #@bb
    :sswitch_bb
    const-string v2, "rotationZ"

    #@bd
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v2

    #@c1
    if-nez v2, :cond_c4

    #@c3
    goto :goto_50

    #@c4
    :cond_c4
    const/4 v4, 0x2

    #@c5
    goto :goto_dc

    #@c6
    :sswitch_c6
    const-string v2, "rotationY"

    #@c8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cb
    move-result v2

    #@cc
    if-nez v2, :cond_cf

    #@ce
    goto :goto_50

    #@cf
    :cond_cf
    const/4 v4, 0x1

    #@d0
    goto :goto_dc

    #@d1
    :sswitch_d1
    const-string v2, "rotationX"

    #@d3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d6
    move-result v2

    #@d7
    if-nez v2, :cond_db

    #@d9
    goto/16 :goto_50

    #@db
    :cond_db
    const/4 v4, 0x0

    #@dc
    :cond_dc
    :goto_dc
    packed-switch v4, :pswitch_data_242

    #@df
    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    #@e1
    const-string v3, "UNKNOWN addValues \""

    #@e3
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v1

    #@ea
    const-string v2, "\""

    #@ec
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v1

    #@f0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v1

    #@f4
    const-string v2, "KeyTimeCycles"

    #@f6
    invoke-static {v2, v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    #@f9
    goto/16 :goto_8

    #@fb
    .line 94
    :pswitch_fb
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    #@fd
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@100
    move-result v1

    #@101
    if-nez v1, :cond_8

    #@103
    .line 95
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    #@105
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    #@107
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@109
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@10b
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@10d
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    #@110
    goto/16 :goto_8

    #@112
    .line 73
    :pswitch_112
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    #@114
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@117
    move-result v1

    #@118
    if-nez v1, :cond_8

    #@11a
    .line 74
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    #@11c
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    #@11e
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@120
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@122
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@124
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    #@127
    goto/16 :goto_8

    #@129
    .line 125
    :pswitch_129
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    #@12b
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@12e
    move-result v1

    #@12f
    if-nez v1, :cond_8

    #@131
    .line 126
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    #@133
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    #@135
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@137
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@139
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@13b
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    #@13e
    goto/16 :goto_8

    #@140
    .line 105
    :pswitch_140
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    #@142
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@145
    move-result v1

    #@146
    if-nez v1, :cond_8

    #@148
    .line 106
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    #@14a
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    #@14c
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@14e
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@150
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@152
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    #@155
    goto/16 :goto_8

    #@157
    .line 100
    :pswitch_157
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    #@159
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@15c
    move-result v1

    #@15d
    if-nez v1, :cond_8

    #@15f
    .line 101
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    #@161
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    #@163
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@165
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@167
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@169
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    #@16c
    goto/16 :goto_8

    #@16e
    .line 130
    :pswitch_16e
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    #@170
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@173
    move-result v1

    #@174
    if-nez v1, :cond_8

    #@176
    .line 131
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    #@178
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    #@17a
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@17c
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@17e
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@180
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    #@183
    goto/16 :goto_8

    #@185
    .line 120
    :pswitch_185
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    #@187
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@18a
    move-result v1

    #@18b
    if-nez v1, :cond_8

    #@18d
    .line 121
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    #@18f
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    #@191
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@193
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@195
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@197
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    #@19a
    goto/16 :goto_8

    #@19c
    .line 115
    :pswitch_19c
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    #@19e
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1a1
    move-result v1

    #@1a2
    if-nez v1, :cond_8

    #@1a4
    .line 116
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    #@1a6
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    #@1a8
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@1aa
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@1ac
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@1ae
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    #@1b1
    goto/16 :goto_8

    #@1b3
    .line 110
    :pswitch_1b3
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    #@1b5
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1b8
    move-result v1

    #@1b9
    if-nez v1, :cond_8

    #@1bb
    .line 111
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    #@1bd
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    #@1bf
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@1c1
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@1c3
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@1c5
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    #@1c8
    goto/16 :goto_8

    #@1ca
    .line 89
    :pswitch_1ca
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    #@1cc
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1cf
    move-result v1

    #@1d0
    if-nez v1, :cond_8

    #@1d2
    .line 90
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    #@1d4
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    #@1d6
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@1d8
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@1da
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@1dc
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    #@1df
    goto/16 :goto_8

    #@1e1
    .line 84
    :pswitch_1e1
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    #@1e3
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1e6
    move-result v1

    #@1e7
    if-nez v1, :cond_8

    #@1e9
    .line 85
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    #@1eb
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    #@1ed
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@1ef
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@1f1
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@1f3
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    #@1f6
    goto/16 :goto_8

    #@1f8
    .line 79
    :pswitch_1f8
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    #@1fa
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1fd
    move-result v1

    #@1fe
    if-nez v1, :cond_8

    #@200
    .line 80
    iget v4, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    #@202
    iget v5, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    #@204
    iget v6, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@206
    iget v7, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@208
    iget v8, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@20a
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->setPoint(IFFIF)V

    #@20d
    goto/16 :goto_8

    #@20f
    :cond_20f
    return-void

    #@210
    :sswitch_data_210
    .sparse-switch
        -0x4a771f66 -> :sswitch_d1
        -0x4a771f65 -> :sswitch_c6
        -0x4a771f64 -> :sswitch_bb
        -0x490b9c39 -> :sswitch_b0
        -0x490b9c38 -> :sswitch_a5
        -0x490b9c37 -> :sswitch_9a
        -0x3bab3dd3 -> :sswitch_8f
        -0x3621dfb2 -> :sswitch_86
        -0x3621dfb1 -> :sswitch_7a
        -0x42d1a3 -> :sswitch_6d
        0x589b15e -> :sswitch_60
        0x2fdfbde0 -> :sswitch_53
    .end sparse-switch

    #@242
    :pswitch_data_242
    .packed-switch 0x0
        :pswitch_1f8
        :pswitch_1e1
        :pswitch_1ca
        :pswitch_1b3
        :pswitch_19c
        :pswitch_185
        :pswitch_16e
        :pswitch_157
        :pswitch_140
        :pswitch_129
        :pswitch_112
        :pswitch_fb
    .end packed-switch
.end method

.method public addValues(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public clone()Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 2

    #@0
    .line 297
    new-instance v0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .line 28
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;
    .registers 2

    #@0
    .line 28
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;
    .registers 3

    #@0
    .line 232
    invoke-super {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKey;->copy(Landroidx/constraintlayout/core/motion/key/MotionKey;)Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@3
    .line 233
    check-cast p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;

    #@5
    .line 234
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    #@7
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    #@9
    .line 235
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    #@b
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    #@d
    .line 236
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@f
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@11
    .line 237
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@13
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@15
    .line 238
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@17
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@19
    .line 239
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    #@1b
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    #@1d
    .line 240
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    #@1f
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    #@21
    .line 241
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    #@23
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    #@25
    .line 242
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    #@27
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    #@29
    .line 243
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    #@2b
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    #@2d
    .line 244
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    #@2f
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    #@31
    .line 245
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    #@33
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    #@35
    .line 246
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    #@37
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    #@39
    .line 247
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    #@3b
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    #@3d
    .line 248
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    #@3f
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    #@41
    .line 249
    iget v0, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    #@43
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    #@45
    .line 250
    iget p1, p1, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    #@47
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    #@49
    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 256
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_d

    #@8
    const-string v0, "alpha"

    #@a
    .line 257
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@d
    .line 259
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    #@f
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1a

    #@15
    const-string v0, "elevation"

    #@17
    .line 260
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1a
    .line 262
    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    #@1c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_27

    #@22
    const-string v0, "rotationZ"

    #@24
    .line 263
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@27
    .line 265
    :cond_27
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    #@29
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_34

    #@2f
    const-string v0, "rotationX"

    #@31
    .line 266
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@34
    .line 268
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    #@36
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_41

    #@3c
    const-string v0, "rotationY"

    #@3e
    .line 269
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@41
    .line 271
    :cond_41
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    #@43
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_4e

    #@49
    const-string v0, "scaleX"

    #@4b
    .line 272
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4e
    .line 274
    :cond_4e
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    #@50
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@53
    move-result v0

    #@54
    if-nez v0, :cond_5b

    #@56
    const-string v0, "scaleY"

    #@58
    .line 275
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5b
    .line 277
    :cond_5b
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    #@5d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@60
    move-result v0

    #@61
    if-nez v0, :cond_68

    #@63
    const-string v0, "pathRotate"

    #@65
    .line 278
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@68
    .line 280
    :cond_68
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    #@6a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@6d
    move-result v0

    #@6e
    if-nez v0, :cond_75

    #@70
    const-string v0, "translationX"

    #@72
    .line 281
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@75
    .line 283
    :cond_75
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    #@77
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@7a
    move-result v0

    #@7b
    if-nez v0, :cond_82

    #@7d
    const-string v0, "translationY"

    #@7f
    .line 284
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@82
    .line 286
    :cond_82
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    #@84
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@87
    move-result v0

    #@88
    if-nez v0, :cond_8f

    #@8a
    const-string v0, "translationZ"

    #@8c
    .line 287
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@8f
    .line 289
    :cond_8f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustom:Ljava/util/HashMap;

    #@91
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@94
    move-result v0

    #@95
    if-lez v0, :cond_c0

    #@97
    .line 290
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustom:Ljava/util/HashMap;

    #@99
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@9c
    move-result-object v0

    #@9d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a0
    move-result-object v0

    #@a1
    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a4
    move-result v1

    #@a5
    if-eqz v1, :cond_c0

    #@a7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@aa
    move-result-object v1

    #@ab
    check-cast v1, Ljava/lang/String;

    #@ad
    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    #@af
    const-string v3, "CUSTOM,"

    #@b1
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v1

    #@b8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v1

    #@bc
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@bf
    goto :goto_a1

    #@c0
    :cond_c0
    return-void
.end method

.method public getId(Ljava/lang/String;)I
    .registers 2

    #@0
    .line 302
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;->getId(Ljava/lang/String;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public setValue(IF)Z
    .registers 4

    #@0
    const/16 v0, 0x13b

    #@2
    if-eq p1, v0, :cond_b6

    #@4
    const/16 v0, 0x191

    #@6
    if-eq p1, v0, :cond_ab

    #@8
    const/16 v0, 0x193

    #@a
    if-eq p1, v0, :cond_a8

    #@c
    const/16 v0, 0x1a0

    #@e
    if-eq p1, v0, :cond_9d

    #@10
    const/16 v0, 0x1a7

    #@12
    if-eq p1, v0, :cond_92

    #@14
    const/16 v0, 0x1a8

    #@16
    if-eq p1, v0, :cond_87

    #@18
    packed-switch p1, :pswitch_data_c2

    #@1b
    .line 207
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    #@1e
    move-result p1

    #@1f
    return p1

    #@20
    .line 186
    :pswitch_20
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@23
    move-result-object p1

    #@24
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@27
    move-result p1

    #@28
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleY:F

    #@2a
    goto/16 :goto_c0

    #@2c
    .line 183
    :pswitch_2c
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2f
    move-result-object p1

    #@30
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@33
    move-result p1

    #@34
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mScaleX:F

    #@36
    goto/16 :goto_c0

    #@38
    .line 174
    :pswitch_38
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3b
    move-result-object p1

    #@3c
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@3f
    move-result p1

    #@40
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotation:F

    #@42
    goto/16 :goto_c0

    #@44
    .line 180
    :pswitch_44
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@47
    move-result-object p1

    #@48
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@4b
    move-result p1

    #@4c
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationY:F

    #@4e
    goto/16 :goto_c0

    #@50
    .line 177
    :pswitch_50
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@53
    move-result-object p1

    #@54
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@57
    move-result p1

    #@58
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mRotationX:F

    #@5a
    goto :goto_c0

    #@5b
    .line 168
    :pswitch_5b
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@5e
    move-result-object p1

    #@5f
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@62
    move-result p1

    #@63
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mElevation:F

    #@65
    goto :goto_c0

    #@66
    .line 198
    :pswitch_66
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@69
    move-result-object p1

    #@6a
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@6d
    move-result p1

    #@6e
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationZ:F

    #@70
    goto :goto_c0

    #@71
    .line 195
    :pswitch_71
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@74
    move-result-object p1

    #@75
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@78
    move-result p1

    #@79
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationY:F

    #@7b
    goto :goto_c0

    #@7c
    .line 192
    :pswitch_7c
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7f
    move-result-object p1

    #@80
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@83
    move-result p1

    #@84
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTranslationX:F

    #@86
    goto :goto_c0

    #@87
    .line 204
    :cond_87
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@8a
    move-result-object p1

    #@8b
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@8e
    move-result p1

    #@8f
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveOffset:F

    #@91
    goto :goto_c0

    #@92
    .line 201
    :cond_92
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@95
    move-result-object p1

    #@96
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@99
    move-result p1

    #@9a
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWavePeriod:F

    #@9c
    goto :goto_c0

    #@9d
    .line 189
    :cond_9d
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@a0
    move-result-object p1

    #@a1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@a4
    move-result p1

    #@a5
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionPathRotate:F

    #@a7
    goto :goto_c0

    #@a8
    .line 162
    :cond_a8
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mAlpha:F

    #@aa
    goto :goto_c0

    #@ab
    .line 165
    :cond_ab
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@ae
    move-result-object p1

    #@af
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toInt(Ljava/lang/Object;)I

    #@b2
    move-result p1

    #@b3
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCurveFit:I

    #@b5
    goto :goto_c0

    #@b6
    .line 171
    :cond_b6
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@b9
    move-result-object p1

    #@ba
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@bd
    move-result p1

    #@be
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mProgress:F

    #@c0
    :goto_c0
    const/4 p1, 0x1

    #@c1
    return p1

    #@c2
    :pswitch_data_c2
    .packed-switch 0x130
        :pswitch_7c
        :pswitch_71
        :pswitch_66
        :pswitch_5b
        :pswitch_50
        :pswitch_44
        :pswitch_38
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method public setValue(II)Z
    .registers 4

    #@0
    const/16 v0, 0x64

    #@2
    if-eq p1, v0, :cond_10

    #@4
    const/16 v0, 0x1a5

    #@6
    if-eq p1, v0, :cond_d

    #@8
    .line 154
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    #@b
    move-result p1

    #@c
    return p1

    #@d
    .line 151
    :cond_d
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@f
    goto :goto_12

    #@10
    .line 148
    :cond_10
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mFramePosition:I

    #@12
    :goto_12
    const/4 p1, 0x1

    #@13
    return p1
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 4

    #@0
    const/16 v0, 0x1a4

    #@2
    if-eq p1, v0, :cond_13

    #@4
    const/16 v0, 0x1a5

    #@6
    if-eq p1, v0, :cond_d

    #@8
    .line 222
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    #@b
    move-result p1

    #@c
    return p1

    #@d
    :cond_d
    const/4 p1, 0x7

    #@e
    .line 215
    iput p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mWaveShape:I

    #@10
    .line 216
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    #@12
    goto :goto_15

    #@13
    .line 219
    :cond_13
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    #@15
    :goto_15
    const/4 p1, 0x1

    #@16
    return p1
.end method

.method public setValue(IZ)Z
    .registers 3

    #@0
    .line 228
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IZ)Z

    #@3
    move-result p1

    #@4
    return p1
.end method
