.class public Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source "MotionKeyCycle.java"


# static fields
.field public static final KEY_TYPE:I = 0x4

.field static final NAME:Ljava/lang/String; = "KeyCycle"

.field public static final SHAPE_BOUNCE:I = 0x6

.field public static final SHAPE_COS_WAVE:I = 0x5

.field public static final SHAPE_REVERSE_SAW_WAVE:I = 0x4

.field public static final SHAPE_SAW_WAVE:I = 0x3

.field public static final SHAPE_SIN_WAVE:I = 0x0

.field public static final SHAPE_SQUARE_WAVE:I = 0x1

.field public static final SHAPE_TRIANGLE_WAVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyCycle"

.field public static final WAVE_OFFSET:Ljava/lang/String; = "waveOffset"

.field public static final WAVE_PERIOD:Ljava/lang/String; = "wavePeriod"

.field public static final WAVE_PHASE:Ljava/lang/String; = "wavePhase"

.field public static final WAVE_SHAPE:Ljava/lang/String; = "waveShape"


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

.field private mWavePhase:F

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 28
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 43
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionEasing:Ljava/lang/String;

    #@6
    const/4 v1, 0x0

    #@7
    .line 44
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCurveFit:I

    #@9
    const/4 v1, -0x1

    #@a
    .line 45
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    #@c
    .line 46
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    #@e
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@10
    .line 47
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    #@12
    const/4 v1, 0x0

    #@13
    .line 48
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    #@15
    .line 49
    iput v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    #@17
    .line 50
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

    #@19
    .line 51
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    #@1b
    .line 52
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    #@1d
    .line 53
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    #@1f
    .line 54
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    #@21
    .line 55
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    #@23
    .line 56
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    #@25
    .line 57
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    #@27
    .line 58
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    #@29
    .line 59
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    #@2b
    .line 60
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    #@2d
    .line 61
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    #@2f
    const/4 v0, 0x4

    #@30
    .line 65
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mType:I

    #@32
    .line 66
    new-instance v0, Ljava/util/HashMap;

    #@34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@37
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

    #@39
    return-void
.end method


# virtual methods
.method public addCycleValues(Ljava/util/HashMap;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;",
            ">;)V"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    .line 293
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_8b

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Ljava/lang/String;

    #@18
    const-string v4, "CUSTOM"

    #@1a
    .line 294
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_58

    #@20
    const/4 v4, 0x7

    #@21
    .line 295
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 296
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

    #@27
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    move-object v14, v4

    #@2c
    check-cast v14, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@2e
    if-eqz v14, :cond_c

    #@30
    .line 297
    invoke-virtual {v14}, Landroidx/constraintlayout/core/motion/CustomVariable;->getType()I

    #@33
    move-result v4

    #@34
    const/16 v5, 0x385

    #@36
    if-eq v4, v5, :cond_39

    #@38
    goto :goto_c

    #@39
    .line 301
    :cond_39
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    move-object v5, v3

    #@3e
    check-cast v5, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    #@40
    if-nez v5, :cond_43

    #@42
    goto :goto_c

    #@43
    .line 306
    :cond_43
    iget v6, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mFramePosition:I

    #@45
    iget v7, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    #@47
    iget-object v8, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    #@49
    const/4 v9, -0x1

    #@4a
    iget v10, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    #@4c
    iget v11, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    #@4e
    iget v12, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    #@50
    invoke-virtual {v14}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    #@53
    move-result v13

    #@54
    invoke-virtual/range {v5 .. v14}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setPoint(IILjava/lang/String;IFFFFLjava/lang/Object;)V

    #@57
    goto :goto_c

    #@58
    .line 309
    :cond_58
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getValue(Ljava/lang/String;)F

    #@5b
    move-result v23

    #@5c
    .line 310
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->isNaN(F)Z

    #@5f
    move-result v4

    #@60
    if-eqz v4, :cond_63

    #@62
    goto :goto_c

    #@63
    .line 314
    :cond_63
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    move-result-object v3

    #@67
    move-object v15, v3

    #@68
    check-cast v15, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;

    #@6a
    if-nez v15, :cond_6d

    #@6c
    goto :goto_c

    #@6d
    .line 319
    :cond_6d
    iget v3, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mFramePosition:I

    #@6f
    iget v4, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    #@71
    iget-object v5, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    #@73
    const/16 v19, -0x1

    #@75
    iget v6, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    #@77
    iget v7, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    #@79
    iget v8, v0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    #@7b
    move/from16 v16, v3

    #@7d
    move/from16 v17, v4

    #@7f
    move-object/from16 v18, v5

    #@81
    move/from16 v20, v6

    #@83
    move/from16 v21, v7

    #@85
    move/from16 v22, v8

    #@87
    invoke-virtual/range {v15 .. v23}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;->setPoint(IILjava/lang/String;IFFFF)V

    #@8a
    goto :goto_c

    #@8b
    :cond_8b
    return-void
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
    const/4 v0, 0x0

    #@1
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
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public dump()V
    .registers 4

    #@0
    .line 326
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    const-string v2, "MotionKeyCycle{mWaveShape="

    #@6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string v2, ", mWavePeriod="

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, ", mWaveOffset="

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string v2, ", mWavePhase="

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const-string v2, ", mRotation="

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    const/16 v2, 0x7d

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4c
    return-void
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
    .line 71
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_d

    #@8
    const-string v0, "alpha"

    #@a
    .line 72
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@d
    .line 74
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    #@f
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1a

    #@15
    const-string v0, "elevation"

    #@17
    .line 75
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1a
    .line 77
    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    #@1c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_27

    #@22
    const-string v0, "rotationZ"

    #@24
    .line 78
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@27
    .line 80
    :cond_27
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    #@29
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_34

    #@2f
    const-string v0, "rotationX"

    #@31
    .line 81
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@34
    .line 83
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    #@36
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_41

    #@3c
    const-string v0, "rotationY"

    #@3e
    .line 84
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@41
    .line 86
    :cond_41
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    #@43
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_4e

    #@49
    const-string v0, "scaleX"

    #@4b
    .line 87
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4e
    .line 89
    :cond_4e
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    #@50
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@53
    move-result v0

    #@54
    if-nez v0, :cond_5b

    #@56
    const-string v0, "scaleY"

    #@58
    .line 90
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5b
    .line 92
    :cond_5b
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    #@5d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@60
    move-result v0

    #@61
    if-nez v0, :cond_68

    #@63
    const-string v0, "pathRotate"

    #@65
    .line 93
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@68
    .line 95
    :cond_68
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    #@6a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@6d
    move-result v0

    #@6e
    if-nez v0, :cond_75

    #@70
    const-string v0, "translationX"

    #@72
    .line 96
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@75
    .line 98
    :cond_75
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    #@77
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@7a
    move-result v0

    #@7b
    if-nez v0, :cond_82

    #@7d
    const-string v0, "translationY"

    #@7f
    .line 99
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@82
    .line 101
    :cond_82
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    #@84
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@87
    move-result v0

    #@88
    if-nez v0, :cond_8f

    #@8a
    const-string v0, "translationZ"

    #@8c
    .line 102
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@8f
    .line 104
    :cond_8f
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

    #@91
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@94
    move-result v0

    #@95
    if-lez v0, :cond_c0

    #@97
    .line 105
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustom:Ljava/util/HashMap;

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
    .line 106
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
    .registers 4

    #@0
    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_15e

    #@b
    :goto_b
    move p1, v1

    #@c
    goto/16 :goto_11a

    #@e
    :sswitch_e
    const-string v0, "visibility"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result p1

    #@14
    if-nez p1, :cond_17

    #@16
    goto :goto_b

    #@17
    :cond_17
    const/16 p1, 0x14

    #@19
    goto/16 :goto_11a

    #@1b
    :sswitch_1b
    const-string v0, "waveShape"

    #@1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result p1

    #@21
    if-nez p1, :cond_24

    #@23
    goto :goto_b

    #@24
    :cond_24
    const/16 p1, 0x13

    #@26
    goto/16 :goto_11a

    #@28
    :sswitch_28
    const-string v0, "pathRotate"

    #@2a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result p1

    #@2e
    if-nez p1, :cond_31

    #@30
    goto :goto_b

    #@31
    :cond_31
    const/16 p1, 0x12

    #@33
    goto/16 :goto_11a

    #@35
    :sswitch_35
    const-string v0, "curveFit"

    #@37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result p1

    #@3b
    if-nez p1, :cond_3e

    #@3d
    goto :goto_b

    #@3e
    :cond_3e
    const/16 p1, 0x11

    #@40
    goto/16 :goto_11a

    #@42
    :sswitch_42
    const-string v0, "phase"

    #@44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result p1

    #@48
    if-nez p1, :cond_4b

    #@4a
    goto :goto_b

    #@4b
    :cond_4b
    const/16 p1, 0x10

    #@4d
    goto/16 :goto_11a

    #@4f
    :sswitch_4f
    const-string v0, "alpha"

    #@51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result p1

    #@55
    if-nez p1, :cond_58

    #@57
    goto :goto_b

    #@58
    :cond_58
    const/16 p1, 0xf

    #@5a
    goto/16 :goto_11a

    #@5c
    :sswitch_5c
    const-string v0, "scaleY"

    #@5e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result p1

    #@62
    if-nez p1, :cond_65

    #@64
    goto :goto_b

    #@65
    :cond_65
    const/16 p1, 0xe

    #@67
    goto/16 :goto_11a

    #@69
    :sswitch_69
    const-string v0, "scaleX"

    #@6b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result p1

    #@6f
    if-nez p1, :cond_72

    #@71
    goto :goto_b

    #@72
    :cond_72
    const/16 p1, 0xd

    #@74
    goto/16 :goto_11a

    #@76
    :sswitch_76
    const-string v0, "pivotY"

    #@78
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result p1

    #@7c
    if-nez p1, :cond_7f

    #@7e
    goto :goto_b

    #@7f
    :cond_7f
    const/16 p1, 0xc

    #@81
    goto/16 :goto_11a

    #@83
    :sswitch_83
    const-string v0, "pivotX"

    #@85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result p1

    #@89
    if-nez p1, :cond_8d

    #@8b
    goto/16 :goto_b

    #@8d
    :cond_8d
    const/16 p1, 0xb

    #@8f
    goto/16 :goto_11a

    #@91
    :sswitch_91
    const-string v0, "period"

    #@93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@96
    move-result p1

    #@97
    if-nez p1, :cond_9b

    #@99
    goto/16 :goto_b

    #@9b
    :cond_9b
    const/16 p1, 0xa

    #@9d
    goto/16 :goto_11a

    #@9f
    :sswitch_9f
    const-string v0, "progress"

    #@a1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result p1

    #@a5
    if-nez p1, :cond_a9

    #@a7
    goto/16 :goto_b

    #@a9
    :cond_a9
    const/16 p1, 0x9

    #@ab
    goto/16 :goto_11a

    #@ad
    :sswitch_ad
    const-string v0, "offset"

    #@af
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result p1

    #@b3
    if-nez p1, :cond_b7

    #@b5
    goto/16 :goto_b

    #@b7
    :cond_b7
    const/16 p1, 0x8

    #@b9
    goto/16 :goto_11a

    #@bb
    :sswitch_bb
    const-string v0, "translationZ"

    #@bd
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result p1

    #@c1
    if-nez p1, :cond_c5

    #@c3
    goto/16 :goto_b

    #@c5
    :cond_c5
    const/4 p1, 0x7

    #@c6
    goto :goto_11a

    #@c7
    :sswitch_c7
    const-string v0, "translationY"

    #@c9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cc
    move-result p1

    #@cd
    if-nez p1, :cond_d1

    #@cf
    goto/16 :goto_b

    #@d1
    :cond_d1
    const/4 p1, 0x6

    #@d2
    goto :goto_11a

    #@d3
    :sswitch_d3
    const-string v0, "translationX"

    #@d5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d8
    move-result p1

    #@d9
    if-nez p1, :cond_dd

    #@db
    goto/16 :goto_b

    #@dd
    :cond_dd
    const/4 p1, 0x5

    #@de
    goto :goto_11a

    #@df
    :sswitch_df
    const-string v0, "rotationZ"

    #@e1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e4
    move-result p1

    #@e5
    if-nez p1, :cond_e9

    #@e7
    goto/16 :goto_b

    #@e9
    :cond_e9
    const/4 p1, 0x4

    #@ea
    goto :goto_11a

    #@eb
    :sswitch_eb
    const-string v0, "rotationY"

    #@ed
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f0
    move-result p1

    #@f1
    if-nez p1, :cond_f5

    #@f3
    goto/16 :goto_b

    #@f5
    :cond_f5
    const/4 p1, 0x3

    #@f6
    goto :goto_11a

    #@f7
    :sswitch_f7
    const-string v0, "rotationX"

    #@f9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fc
    move-result p1

    #@fd
    if-nez p1, :cond_101

    #@ff
    goto/16 :goto_b

    #@101
    :cond_101
    const/4 p1, 0x2

    #@102
    goto :goto_11a

    #@103
    :sswitch_103
    const-string v0, "easing"

    #@105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@108
    move-result p1

    #@109
    if-nez p1, :cond_10d

    #@10b
    goto/16 :goto_b

    #@10d
    :cond_10d
    const/4 p1, 0x1

    #@10e
    goto :goto_11a

    #@10f
    :sswitch_10f
    const-string v0, "customWave"

    #@111
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@114
    move-result p1

    #@115
    if-nez p1, :cond_119

    #@117
    goto/16 :goto_b

    #@119
    :cond_119
    const/4 p1, 0x0

    #@11a
    :goto_11a
    packed-switch p1, :pswitch_data_1b4

    #@11d
    return v1

    #@11e
    :pswitch_11e
    const/16 p1, 0x192

    #@120
    return p1

    #@121
    :pswitch_121
    const/16 p1, 0x1a5

    #@123
    return p1

    #@124
    :pswitch_124
    const/16 p1, 0x1a0

    #@126
    return p1

    #@127
    :pswitch_127
    const/16 p1, 0x191

    #@129
    return p1

    #@12a
    :pswitch_12a
    const/16 p1, 0x1a9

    #@12c
    return p1

    #@12d
    :pswitch_12d
    const/16 p1, 0x193

    #@12f
    return p1

    #@130
    :pswitch_130
    const/16 p1, 0x138

    #@132
    return p1

    #@133
    :pswitch_133
    const/16 p1, 0x137

    #@135
    return p1

    #@136
    :pswitch_136
    const/16 p1, 0x13a

    #@138
    return p1

    #@139
    :pswitch_139
    const/16 p1, 0x139

    #@13b
    return p1

    #@13c
    :pswitch_13c
    const/16 p1, 0x1a7

    #@13e
    return p1

    #@13f
    :pswitch_13f
    const/16 p1, 0x13b

    #@141
    return p1

    #@142
    :pswitch_142
    const/16 p1, 0x1a8

    #@144
    return p1

    #@145
    :pswitch_145
    const/16 p1, 0x132

    #@147
    return p1

    #@148
    :pswitch_148
    const/16 p1, 0x131

    #@14a
    return p1

    #@14b
    :pswitch_14b
    const/16 p1, 0x130

    #@14d
    return p1

    #@14e
    :pswitch_14e
    const/16 p1, 0x136

    #@150
    return p1

    #@151
    :pswitch_151
    const/16 p1, 0x135

    #@153
    return p1

    #@154
    :pswitch_154
    const/16 p1, 0x134

    #@156
    return p1

    #@157
    :pswitch_157
    const/16 p1, 0x1a4

    #@159
    return p1

    #@15a
    :pswitch_15a
    const/16 p1, 0x1a6

    #@15c
    return p1

    #@15d
    nop

    #@15e
    :sswitch_data_15e
    .sparse-switch
        -0x5e458df6 -> :sswitch_10f
        -0x4e19c2d5 -> :sswitch_103
        -0x4a771f66 -> :sswitch_f7
        -0x4a771f65 -> :sswitch_eb
        -0x4a771f64 -> :sswitch_df
        -0x490b9c39 -> :sswitch_d3
        -0x490b9c38 -> :sswitch_c7
        -0x490b9c37 -> :sswitch_bb
        -0x3cc89b6d -> :sswitch_ad
        -0x3bab3dd3 -> :sswitch_9f
        -0x3b1c8a3f -> :sswitch_91
        -0x3ae243aa -> :sswitch_83
        -0x3ae243a9 -> :sswitch_76
        -0x3621dfb2 -> :sswitch_69
        -0x3621dfb1 -> :sswitch_5c
        0x589b15e -> :sswitch_4f
        0x65b097b -> :sswitch_42
        0x2283b8a2 -> :sswitch_35
        0x2fdfbde0 -> :sswitch_28
        0x5b5cc028 -> :sswitch_1b
        0x73b66312 -> :sswitch_e
    .end sparse-switch

    #@1b4
    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_15a
        :pswitch_157
        :pswitch_154
        :pswitch_151
        :pswitch_14e
        :pswitch_14b
        :pswitch_148
        :pswitch_145
        :pswitch_142
        :pswitch_13f
        :pswitch_13c
        :pswitch_139
        :pswitch_136
        :pswitch_133
        :pswitch_130
        :pswitch_12d
        :pswitch_12a
        :pswitch_127
        :pswitch_124
        :pswitch_121
        :pswitch_11e
    .end packed-switch
.end method

.method public getValue(Ljava/lang/String;)F
    .registers 4

    #@0
    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_e8

    #@b
    goto/16 :goto_b8

    #@d
    :sswitch_d
    const-string v0, "pathRotate"

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result p1

    #@13
    if-nez p1, :cond_17

    #@15
    goto/16 :goto_b8

    #@17
    :cond_17
    const/16 v1, 0xd

    #@19
    goto/16 :goto_b8

    #@1b
    :sswitch_1b
    const-string v0, "phase"

    #@1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result p1

    #@21
    if-nez p1, :cond_25

    #@23
    goto/16 :goto_b8

    #@25
    :cond_25
    const/16 v1, 0xc

    #@27
    goto/16 :goto_b8

    #@29
    :sswitch_29
    const-string v0, "alpha"

    #@2b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result p1

    #@2f
    if-nez p1, :cond_33

    #@31
    goto/16 :goto_b8

    #@33
    :cond_33
    const/16 v1, 0xb

    #@35
    goto/16 :goto_b8

    #@37
    :sswitch_37
    const-string v0, "elevation"

    #@39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result p1

    #@3d
    if-nez p1, :cond_41

    #@3f
    goto/16 :goto_b8

    #@41
    :cond_41
    const/16 v1, 0xa

    #@43
    goto/16 :goto_b8

    #@45
    :sswitch_45
    const-string v0, "scaleY"

    #@47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result p1

    #@4b
    if-nez p1, :cond_4f

    #@4d
    goto/16 :goto_b8

    #@4f
    :cond_4f
    const/16 v1, 0x9

    #@51
    goto/16 :goto_b8

    #@53
    :sswitch_53
    const-string v0, "scaleX"

    #@55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result p1

    #@59
    if-nez p1, :cond_5d

    #@5b
    goto/16 :goto_b8

    #@5d
    :cond_5d
    const/16 v1, 0x8

    #@5f
    goto/16 :goto_b8

    #@61
    :sswitch_61
    const-string v0, "progress"

    #@63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result p1

    #@67
    if-nez p1, :cond_6a

    #@69
    goto :goto_b8

    #@6a
    :cond_6a
    const/4 v1, 0x7

    #@6b
    goto :goto_b8

    #@6c
    :sswitch_6c
    const-string v0, "offset"

    #@6e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result p1

    #@72
    if-nez p1, :cond_75

    #@74
    goto :goto_b8

    #@75
    :cond_75
    const/4 v1, 0x6

    #@76
    goto :goto_b8

    #@77
    :sswitch_77
    const-string v0, "translationZ"

    #@79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result p1

    #@7d
    if-nez p1, :cond_80

    #@7f
    goto :goto_b8

    #@80
    :cond_80
    const/4 v1, 0x5

    #@81
    goto :goto_b8

    #@82
    :sswitch_82
    const-string v0, "translationY"

    #@84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result p1

    #@88
    if-nez p1, :cond_8b

    #@8a
    goto :goto_b8

    #@8b
    :cond_8b
    const/4 v1, 0x4

    #@8c
    goto :goto_b8

    #@8d
    :sswitch_8d
    const-string v0, "translationX"

    #@8f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result p1

    #@93
    if-nez p1, :cond_96

    #@95
    goto :goto_b8

    #@96
    :cond_96
    const/4 v1, 0x3

    #@97
    goto :goto_b8

    #@98
    :sswitch_98
    const-string v0, "rotationZ"

    #@9a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result p1

    #@9e
    if-nez p1, :cond_a1

    #@a0
    goto :goto_b8

    #@a1
    :cond_a1
    const/4 v1, 0x2

    #@a2
    goto :goto_b8

    #@a3
    :sswitch_a3
    const-string v0, "rotationY"

    #@a5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result p1

    #@a9
    if-nez p1, :cond_ac

    #@ab
    goto :goto_b8

    #@ac
    :cond_ac
    const/4 v1, 0x1

    #@ad
    goto :goto_b8

    #@ae
    :sswitch_ae
    const-string v0, "rotationX"

    #@b0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result p1

    #@b4
    if-nez p1, :cond_b7

    #@b6
    goto :goto_b8

    #@b7
    :cond_b7
    const/4 v1, 0x0

    #@b8
    :goto_b8
    packed-switch v1, :pswitch_data_122

    #@bb
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@bd
    return p1

    #@be
    .line 214
    :pswitch_be
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    #@c0
    return p1

    #@c1
    .line 228
    :pswitch_c1
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    #@c3
    return p1

    #@c4
    .line 204
    :pswitch_c4
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    #@c6
    return p1

    #@c7
    .line 206
    :pswitch_c7
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    #@c9
    return p1

    #@ca
    .line 218
    :pswitch_ca
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    #@cc
    return p1

    #@cd
    .line 216
    :pswitch_cd
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    #@cf
    return p1

    #@d0
    .line 230
    :pswitch_d0
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

    #@d2
    return p1

    #@d3
    .line 226
    :pswitch_d3
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    #@d5
    return p1

    #@d6
    .line 224
    :pswitch_d6
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    #@d8
    return p1

    #@d9
    .line 222
    :pswitch_d9
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    #@db
    return p1

    #@dc
    .line 220
    :pswitch_dc
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    #@de
    return p1

    #@df
    .line 208
    :pswitch_df
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    #@e1
    return p1

    #@e2
    .line 212
    :pswitch_e2
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    #@e4
    return p1

    #@e5
    .line 210
    :pswitch_e5
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    #@e7
    return p1

    #@e8
    :sswitch_data_e8
    .sparse-switch
        -0x4a771f66 -> :sswitch_ae
        -0x4a771f65 -> :sswitch_a3
        -0x4a771f64 -> :sswitch_98
        -0x490b9c39 -> :sswitch_8d
        -0x490b9c38 -> :sswitch_82
        -0x490b9c37 -> :sswitch_77
        -0x3cc89b6d -> :sswitch_6c
        -0x3bab3dd3 -> :sswitch_61
        -0x3621dfb2 -> :sswitch_53
        -0x3621dfb1 -> :sswitch_45
        -0x42d1a3 -> :sswitch_37
        0x589b15e -> :sswitch_29
        0x65b097b -> :sswitch_1b
        0x2fdfbde0 -> :sswitch_d
    .end sparse-switch

    #@122
    :pswitch_data_122
    .packed-switch 0x0
        :pswitch_e5
        :pswitch_e2
        :pswitch_df
        :pswitch_dc
        :pswitch_d9
        :pswitch_d6
        :pswitch_d3
        :pswitch_d0
        :pswitch_cd
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
    .end packed-switch
.end method

.method public printAttributes()V
    .registers 5

    #@0
    .line 336
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 337
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getAttributeNames(Ljava/util/HashSet;)V

    #@8
    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    const-string v2, " ------------- "

    #@c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mFramePosition:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v2, " -------------"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    #@22
    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    const-string v2, "MotionKeyCycle{Shape="

    #@26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@29
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    const-string v2, ", Period="

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    const-string v2, ", Offset="

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    const-string v2, ", Phase="

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    const/16 v2, 0x7d

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    #@60
    const/4 v1, 0x0

    #@61
    new-array v2, v1, [Ljava/lang/String;

    #@63
    .line 346
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@66
    move-result-object v0

    #@67
    check-cast v0, [Ljava/lang/String;

    #@69
    .line 347
    :goto_69
    array-length v2, v0

    #@6a
    if-ge v1, v2, :cond_96

    #@6c
    .line 348
    aget-object v2, v0, v1

    #@6e
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->getId(Ljava/lang/String;)I

    #@71
    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    aget-object v3, v0, v1

    #@78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    const-string v3, ":"

    #@7e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    aget-object v3, v0, v1

    #@84
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->getValue(Ljava/lang/String;)F

    #@87
    move-result v3

    #@88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v2

    #@90
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Utils;->log(Ljava/lang/String;)V

    #@93
    add-int/lit8 v1, v1, 0x1

    #@95
    goto :goto_69

    #@96
    :cond_96
    return-void
.end method

.method public setValue(IF)Z
    .registers 4

    #@0
    const/16 v0, 0x13b

    #@2
    if-eq p1, v0, :cond_41

    #@4
    const/16 v0, 0x193

    #@6
    if-eq p1, v0, :cond_3e

    #@8
    const/16 v0, 0x1a0

    #@a
    if-eq p1, v0, :cond_3b

    #@c
    packed-switch p1, :pswitch_data_46

    #@f
    packed-switch p1, :pswitch_data_5c

    #@12
    .line 195
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    #@15
    move-result p1

    #@16
    return p1

    #@17
    .line 192
    :pswitch_17
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePhase:F

    #@19
    goto :goto_43

    #@1a
    .line 189
    :pswitch_1a
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveOffset:F

    #@1c
    goto :goto_43

    #@1d
    .line 186
    :pswitch_1d
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWavePeriod:F

    #@1f
    goto :goto_43

    #@20
    .line 177
    :pswitch_20
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleY:F

    #@22
    goto :goto_43

    #@23
    .line 174
    :pswitch_23
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mScaleX:F

    #@25
    goto :goto_43

    #@26
    .line 171
    :pswitch_26
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotation:F

    #@28
    goto :goto_43

    #@29
    .line 168
    :pswitch_29
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationY:F

    #@2b
    goto :goto_43

    #@2c
    .line 165
    :pswitch_2c
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mRotationX:F

    #@2e
    goto :goto_43

    #@2f
    .line 162
    :pswitch_2f
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mElevation:F

    #@31
    goto :goto_43

    #@32
    .line 159
    :pswitch_32
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationZ:F

    #@34
    goto :goto_43

    #@35
    .line 156
    :pswitch_35
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationY:F

    #@37
    goto :goto_43

    #@38
    .line 153
    :pswitch_38
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTranslationX:F

    #@3a
    goto :goto_43

    #@3b
    .line 183
    :cond_3b
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionPathRotate:F

    #@3d
    goto :goto_43

    #@3e
    .line 150
    :cond_3e
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mAlpha:F

    #@40
    goto :goto_43

    #@41
    .line 180
    :cond_41
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mProgress:F

    #@43
    :goto_43
    const/4 p1, 0x1

    #@44
    return p1

    #@45
    nop

    #@46
    :pswitch_data_46
    .packed-switch 0x130
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
    .end packed-switch

    #@5c
    :pswitch_data_5c
    .packed-switch 0x1a7
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method public setValue(II)Z
    .registers 5

    #@0
    const/16 v0, 0x191

    #@2
    const/4 v1, 0x1

    #@3
    if-eq p1, v0, :cond_19

    #@5
    const/16 v0, 0x1a5

    #@7
    if-eq p1, v0, :cond_16

    #@9
    int-to-float v0, p2

    #@a
    .line 125
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->setValue(IF)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_11

    #@10
    return v1

    #@11
    .line 129
    :cond_11
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    #@14
    move-result p1

    #@15
    return p1

    #@16
    .line 122
    :cond_16
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mWaveShape:I

    #@18
    return v1

    #@19
    .line 119
    :cond_19
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCurveFit:I

    #@1b
    return v1
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 5

    #@0
    const/16 v0, 0x1a4

    #@2
    const/4 v1, 0x1

    #@3
    if-eq p1, v0, :cond_11

    #@5
    const/16 v0, 0x1a6

    #@7
    if-eq p1, v0, :cond_e

    #@9
    .line 142
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    #@c
    move-result p1

    #@d
    return p1

    #@e
    .line 139
    :cond_e
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mCustomWaveShape:Ljava/lang/String;

    #@10
    return v1

    #@11
    .line 136
    :cond_11
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyCycle;->mTransitionEasing:Ljava/lang/String;

    #@13
    return v1
.end method
