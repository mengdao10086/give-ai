.class public Landroidx/constraintlayout/motion/widget/KeyCycle;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "KeyCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;
    }
.end annotation


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

.field private mWaveVariesBy:I


# direct methods
.method public constructor <init>()V
    .registers 4

    #@0
    .line 42
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 57
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    #@6
    const/4 v1, 0x0

    #@7
    .line 58
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    #@9
    const/4 v1, -0x1

    #@a
    .line 59
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    #@c
    .line 60
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    #@e
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@10
    .line 61
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    #@12
    const/4 v2, 0x0

    #@13
    .line 62
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    #@15
    .line 63
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    #@17
    .line 64
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    #@19
    .line 65
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    #@1b
    .line 66
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    #@1d
    .line 67
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    #@1f
    .line 68
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    #@21
    .line 69
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    #@23
    .line 70
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    #@25
    .line 71
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    #@27
    .line 72
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    #@29
    .line 73
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    #@2b
    .line 74
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    #@2d
    .line 75
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    #@2f
    .line 76
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    #@31
    const/4 v0, 0x4

    #@32
    .line 80
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mType:I

    #@34
    .line 81
    new-instance v0, Ljava/util/HashMap;

    #@36
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@39
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

    #@3b
    return-void
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    #@2
    return p0
.end method

.method static synthetic access$1002(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    #@2
    return p1
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/KeyCycle;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    #@2
    return p0
.end method

.method static synthetic access$1102(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    #@2
    return p1
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    #@2
    return p0
.end method

.method static synthetic access$1202(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    #@2
    return p1
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    #@2
    return p0
.end method

.method static synthetic access$1302(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    #@2
    return p1
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    #@2
    return p0
.end method

.method static synthetic access$1402(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    #@2
    return p1
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    #@2
    return p0
.end method

.method static synthetic access$1502(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    #@2
    return p1
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    #@2
    return p0
.end method

.method static synthetic access$1602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    #@2
    return p1
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    #@2
    return p0
.end method

.method static synthetic access$1702(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    #@2
    return p1
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    #@2
    return p0
.end method

.method static synthetic access$1802(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    #@2
    return p1
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    #@2
    return p0
.end method

.method static synthetic access$1902(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    #@2
    return p1
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/KeyCycle;)I
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    #@2
    return p0
.end method

.method static synthetic access$2000(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    #@2
    return p0
.end method

.method static synthetic access$2002(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    #@2
    return p1
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    #@2
    return p1
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/KeyCycle;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/KeyCycle;)I
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    #@2
    return p0
.end method

.method static synthetic access$402(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    #@2
    return p1
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    #@2
    return p0
.end method

.method static synthetic access$502(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    #@2
    return p1
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    #@2
    return p0
.end method

.method static synthetic access$602(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    #@2
    return p1
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/KeyCycle;)I
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    #@2
    return p0
.end method

.method static synthetic access$702(Landroidx/constraintlayout/motion/widget/KeyCycle;I)I
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    #@2
    return p1
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    #@2
    return p0
.end method

.method static synthetic access$802(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    #@2
    return p1
.end method

.method static synthetic access$900(Landroidx/constraintlayout/motion/widget/KeyCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    #@2
    return p0
.end method

.method static synthetic access$902(Landroidx/constraintlayout/motion/widget/KeyCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    #@2
    return p1
.end method


# virtual methods
.method public addCycleValues(Ljava/util/HashMap;)V
    .registers 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oscSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewOscillator;",
            ">;)V"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    .line 132
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
    if-eqz v3, :cond_8f

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Ljava/lang/String;

    #@18
    const-string v4, "CUSTOM"

    #@1a
    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_59

    #@20
    const/4 v4, 0x7

    #@21
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    .line 135
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

    #@27
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    move-object v14, v4

    #@2c
    check-cast v14, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@2e
    if-eqz v14, :cond_c

    #@30
    .line 136
    invoke-virtual {v14}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@33
    move-result-object v4

    #@34
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->FLOAT_TYPE:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    #@36
    if-eq v4, v5, :cond_39

    #@38
    goto :goto_c

    #@39
    .line 140
    :cond_39
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    move-object v5, v3

    #@3e
    check-cast v5, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    #@40
    if-nez v5, :cond_43

    #@42
    goto :goto_c

    #@43
    .line 145
    :cond_43
    iget v6, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@45
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    #@47
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    #@49
    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    #@4b
    iget v10, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    #@4d
    iget v11, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    #@4f
    iget v12, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    #@51
    invoke-virtual {v14}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    #@54
    move-result v13

    #@55
    invoke-virtual/range {v5 .. v14}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setPoint(IILjava/lang/String;IFFFFLjava/lang/Object;)V

    #@58
    goto :goto_c

    #@59
    .line 148
    :cond_59
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/KeyCycle;->getValue(Ljava/lang/String;)F

    #@5c
    move-result v23

    #@5d
    .line 149
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->isNaN(F)Z

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_64

    #@63
    goto :goto_c

    #@64
    .line 153
    :cond_64
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    move-result-object v3

    #@68
    move-object v15, v3

    #@69
    check-cast v15, Landroidx/constraintlayout/motion/utils/ViewOscillator;

    #@6b
    if-nez v15, :cond_6e

    #@6d
    goto :goto_c

    #@6e
    .line 158
    :cond_6e
    iget v3, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@70
    iget v4, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    #@72
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    #@74
    iget v6, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    #@76
    iget v7, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    #@78
    iget v8, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    #@7a
    iget v9, v0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    #@7c
    move/from16 v16, v3

    #@7e
    move/from16 v17, v4

    #@80
    move-object/from16 v18, v5

    #@82
    move/from16 v19, v6

    #@84
    move/from16 v20, v7

    #@86
    move/from16 v21, v8

    #@88
    move/from16 v22, v9

    #@8a
    invoke-virtual/range {v15 .. v23}, Landroidx/constraintlayout/motion/utils/ViewOscillator;->setPoint(IILjava/lang/String;IFFFF)V

    #@8d
    goto/16 :goto_c

    #@8f
    :cond_8f
    return-void
.end method

.method public addValues(Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "splines"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "add "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    #@a
    move-result v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, " values"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    const-string v1, "KeyCycle"

    #@1b
    const/4 v2, 0x2

    #@1c
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->logStack(Ljava/lang/String;Ljava/lang/String;I)V

    #@1f
    .line 203
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@22
    move-result-object v0

    #@23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v0

    #@27
    :cond_27
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_193

    #@2d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Ljava/lang/String;

    #@33
    .line 204
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v3

    #@37
    check-cast v3, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@39
    if-nez v3, :cond_3c

    #@3b
    goto :goto_27

    #@3c
    .line 208
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@3f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@42
    move-result v4

    #@43
    const/4 v5, -0x1

    #@44
    sparse-switch v4, :sswitch_data_194

    #@47
    goto/16 :goto_f4

    #@49
    :sswitch_49
    const-string v4, "wavePhase"

    #@4b
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v4

    #@4f
    if-nez v4, :cond_53

    #@51
    goto/16 :goto_f4

    #@53
    :cond_53
    const/16 v5, 0xd

    #@55
    goto/16 :goto_f4

    #@57
    :sswitch_57
    const-string v4, "waveOffset"

    #@59
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v4

    #@5d
    if-nez v4, :cond_61

    #@5f
    goto/16 :goto_f4

    #@61
    :cond_61
    const/16 v5, 0xc

    #@63
    goto/16 :goto_f4

    #@65
    :sswitch_65
    const-string v4, "alpha"

    #@67
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v4

    #@6b
    if-nez v4, :cond_6f

    #@6d
    goto/16 :goto_f4

    #@6f
    :cond_6f
    const/16 v5, 0xb

    #@71
    goto/16 :goto_f4

    #@73
    :sswitch_73
    const-string v4, "transitionPathRotate"

    #@75
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v4

    #@79
    if-nez v4, :cond_7d

    #@7b
    goto/16 :goto_f4

    #@7d
    :cond_7d
    const/16 v5, 0xa

    #@7f
    goto/16 :goto_f4

    #@81
    :sswitch_81
    const-string v4, "elevation"

    #@83
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v4

    #@87
    if-nez v4, :cond_8b

    #@89
    goto/16 :goto_f4

    #@8b
    :cond_8b
    const/16 v5, 0x9

    #@8d
    goto/16 :goto_f4

    #@8f
    :sswitch_8f
    const-string v4, "rotation"

    #@91
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v4

    #@95
    if-nez v4, :cond_99

    #@97
    goto/16 :goto_f4

    #@99
    :cond_99
    const/16 v5, 0x8

    #@9b
    goto/16 :goto_f4

    #@9d
    :sswitch_9d
    const-string v4, "scaleY"

    #@9f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v4

    #@a3
    if-nez v4, :cond_a6

    #@a5
    goto :goto_f4

    #@a6
    :cond_a6
    const/4 v5, 0x7

    #@a7
    goto :goto_f4

    #@a8
    :sswitch_a8
    const-string v4, "scaleX"

    #@aa
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v4

    #@ae
    if-nez v4, :cond_b1

    #@b0
    goto :goto_f4

    #@b1
    :cond_b1
    const/4 v5, 0x6

    #@b2
    goto :goto_f4

    #@b3
    :sswitch_b3
    const-string v4, "progress"

    #@b5
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v4

    #@b9
    if-nez v4, :cond_bc

    #@bb
    goto :goto_f4

    #@bc
    :cond_bc
    const/4 v5, 0x5

    #@bd
    goto :goto_f4

    #@be
    :sswitch_be
    const-string v4, "translationZ"

    #@c0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c3
    move-result v4

    #@c4
    if-nez v4, :cond_c7

    #@c6
    goto :goto_f4

    #@c7
    :cond_c7
    const/4 v5, 0x4

    #@c8
    goto :goto_f4

    #@c9
    :sswitch_c9
    const-string v4, "translationY"

    #@cb
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v4

    #@cf
    if-nez v4, :cond_d2

    #@d1
    goto :goto_f4

    #@d2
    :cond_d2
    const/4 v5, 0x3

    #@d3
    goto :goto_f4

    #@d4
    :sswitch_d4
    const-string v4, "translationX"

    #@d6
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d9
    move-result v4

    #@da
    if-nez v4, :cond_dd

    #@dc
    goto :goto_f4

    #@dd
    :cond_dd
    move v5, v2

    #@de
    goto :goto_f4

    #@df
    :sswitch_df
    const-string v4, "rotationY"

    #@e1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e4
    move-result v4

    #@e5
    if-nez v4, :cond_e8

    #@e7
    goto :goto_f4

    #@e8
    :cond_e8
    const/4 v5, 0x1

    #@e9
    goto :goto_f4

    #@ea
    :sswitch_ea
    const-string v4, "rotationX"

    #@ec
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ef
    move-result v4

    #@f0
    if-nez v4, :cond_f3

    #@f2
    goto :goto_f4

    #@f3
    :cond_f3
    const/4 v5, 0x0

    #@f4
    :goto_f4
    packed-switch v5, :pswitch_data_1ce

    #@f7
    const-string v3, "CUSTOM"

    #@f9
    .line 252
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@fc
    move-result v3

    #@fd
    if-nez v3, :cond_27

    #@ff
    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    #@101
    const-string v4, "  UNKNOWN  "

    #@103
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@106
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v1

    #@10a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v1

    #@10e
    const-string v3, "WARNING KeyCycle"

    #@110
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@113
    goto/16 :goto_27

    #@115
    .line 246
    :pswitch_115
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@117
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    #@119
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@11c
    goto/16 :goto_27

    #@11e
    .line 243
    :pswitch_11e
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@120
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    #@122
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@125
    goto/16 :goto_27

    #@127
    .line 210
    :pswitch_127
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@129
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    #@12b
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@12e
    goto/16 :goto_27

    #@130
    .line 225
    :pswitch_130
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@132
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    #@134
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@137
    goto/16 :goto_27

    #@139
    .line 213
    :pswitch_139
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@13b
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    #@13d
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@140
    goto/16 :goto_27

    #@142
    .line 216
    :pswitch_142
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@144
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    #@146
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@149
    goto/16 :goto_27

    #@14b
    .line 231
    :pswitch_14b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@14d
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    #@14f
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@152
    goto/16 :goto_27

    #@154
    .line 228
    :pswitch_154
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@156
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    #@158
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@15b
    goto/16 :goto_27

    #@15d
    .line 249
    :pswitch_15d
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@15f
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    #@161
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@164
    goto/16 :goto_27

    #@166
    .line 240
    :pswitch_166
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@168
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    #@16a
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@16d
    goto/16 :goto_27

    #@16f
    .line 237
    :pswitch_16f
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@171
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    #@173
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@176
    goto/16 :goto_27

    #@178
    .line 234
    :pswitch_178
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@17a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    #@17c
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@17f
    goto/16 :goto_27

    #@181
    .line 222
    :pswitch_181
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@183
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    #@185
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@188
    goto/16 :goto_27

    #@18a
    .line 219
    :pswitch_18a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mFramePosition:I

    #@18c
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    #@18e
    invoke-virtual {v3, v1, v4}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@191
    goto/16 :goto_27

    #@193
    :cond_193
    return-void

    #@194
    :sswitch_data_194
    .sparse-switch
        -0x4a771f66 -> :sswitch_ea
        -0x4a771f65 -> :sswitch_df
        -0x490b9c39 -> :sswitch_d4
        -0x490b9c38 -> :sswitch_c9
        -0x490b9c37 -> :sswitch_be
        -0x3bab3dd3 -> :sswitch_b3
        -0x3621dfb2 -> :sswitch_a8
        -0x3621dfb1 -> :sswitch_9d
        -0x266f082 -> :sswitch_8f
        -0x42d1a3 -> :sswitch_81
        0x2382115 -> :sswitch_73
        0x589b15e -> :sswitch_65
        0x94e04ec -> :sswitch_57
        0x5b327a02 -> :sswitch_49
    .end sparse-switch

    #@1ce
    :pswitch_data_1ce
    .packed-switch 0x0
        :pswitch_18a
        :pswitch_181
        :pswitch_178
        :pswitch_16f
        :pswitch_166
        :pswitch_15d
        :pswitch_154
        :pswitch_14b
        :pswitch_142
        :pswitch_139
        :pswitch_130
        :pswitch_127
        :pswitch_11e
        :pswitch_115
    .end packed-switch
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .registers 2

    #@0
    .line 498
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyCycle;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyCycle;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

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
    .line 42
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyCycle;->clone()Landroidx/constraintlayout/motion/widget/Key;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    #@0
    .line 472
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    #@3
    .line 473
    check-cast p1, Landroidx/constraintlayout/motion/widget/KeyCycle;

    #@5
    .line 474
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    #@7
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    #@9
    .line 475
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    #@b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    #@d
    .line 476
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    #@f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    #@11
    .line 477
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    #@13
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    #@15
    .line 478
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    #@17
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    #@19
    .line 479
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    #@1b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    #@1d
    .line 480
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    #@1f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    #@21
    .line 481
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    #@23
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    #@25
    .line 482
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    #@27
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveVariesBy:I

    #@29
    .line 483
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    #@2b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    #@2d
    .line 484
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    #@2f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    #@31
    .line 485
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    #@33
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    #@35
    .line 486
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    #@37
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    #@39
    .line 487
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    #@3b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    #@3d
    .line 488
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    #@3f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    #@41
    .line 489
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    #@43
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    #@45
    .line 490
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    #@47
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    #@49
    .line 491
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    #@4b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    #@4d
    .line 492
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    #@4f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    #@51
    .line 493
    iget p1, p1, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    #@53
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    #@55
    return-object p0
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 91
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_d

    #@8
    const-string v0, "alpha"

    #@a
    .line 92
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@d
    .line 94
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    #@f
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1a

    #@15
    const-string v0, "elevation"

    #@17
    .line 95
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1a
    .line 97
    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    #@1c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_27

    #@22
    const-string v0, "rotation"

    #@24
    .line 98
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@27
    .line 100
    :cond_27
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    #@29
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_34

    #@2f
    const-string v0, "rotationX"

    #@31
    .line 101
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@34
    .line 103
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    #@36
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_41

    #@3c
    const-string v0, "rotationY"

    #@3e
    .line 104
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@41
    .line 106
    :cond_41
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    #@43
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_4e

    #@49
    const-string v0, "scaleX"

    #@4b
    .line 107
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4e
    .line 109
    :cond_4e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    #@50
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@53
    move-result v0

    #@54
    if-nez v0, :cond_5b

    #@56
    const-string v0, "scaleY"

    #@58
    .line 110
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5b
    .line 112
    :cond_5b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    #@5d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@60
    move-result v0

    #@61
    if-nez v0, :cond_68

    #@63
    const-string v0, "transitionPathRotate"

    #@65
    .line 113
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@68
    .line 115
    :cond_68
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    #@6a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@6d
    move-result v0

    #@6e
    if-nez v0, :cond_75

    #@70
    const-string v0, "translationX"

    #@72
    .line 116
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@75
    .line 118
    :cond_75
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    #@77
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@7a
    move-result v0

    #@7b
    if-nez v0, :cond_82

    #@7d
    const-string v0, "translationY"

    #@7f
    .line 119
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@82
    .line 121
    :cond_82
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    #@84
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@87
    move-result v0

    #@88
    if-nez v0, :cond_8f

    #@8a
    const-string v0, "translationZ"

    #@8c
    .line 122
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@8f
    .line 124
    :cond_8f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

    #@91
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@94
    move-result v0

    #@95
    if-lez v0, :cond_c0

    #@97
    .line 125
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomConstraints:Ljava/util/HashMap;

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
    .line 126
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

.method public getValue(Ljava/lang/String;)F
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    #@0
    .line 163
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_104

    #@b
    goto/16 :goto_b8

    #@d
    :sswitch_d
    const-string v0, "wavePhase"

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_17

    #@15
    goto/16 :goto_b8

    #@17
    :cond_17
    const/16 v1, 0xd

    #@19
    goto/16 :goto_b8

    #@1b
    :sswitch_1b
    const-string v0, "waveOffset"

    #@1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_25

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
    move-result v0

    #@2f
    if-nez v0, :cond_33

    #@31
    goto/16 :goto_b8

    #@33
    :cond_33
    const/16 v1, 0xb

    #@35
    goto/16 :goto_b8

    #@37
    :sswitch_37
    const-string v0, "transitionPathRotate"

    #@39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_41

    #@3f
    goto/16 :goto_b8

    #@41
    :cond_41
    const/16 v1, 0xa

    #@43
    goto/16 :goto_b8

    #@45
    :sswitch_45
    const-string v0, "elevation"

    #@47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v0

    #@4b
    if-nez v0, :cond_4f

    #@4d
    goto/16 :goto_b8

    #@4f
    :cond_4f
    const/16 v1, 0x9

    #@51
    goto/16 :goto_b8

    #@53
    :sswitch_53
    const-string v0, "rotation"

    #@55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v0

    #@59
    if-nez v0, :cond_5d

    #@5b
    goto/16 :goto_b8

    #@5d
    :cond_5d
    const/16 v1, 0x8

    #@5f
    goto/16 :goto_b8

    #@61
    :sswitch_61
    const-string v0, "scaleY"

    #@63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v0

    #@67
    if-nez v0, :cond_6a

    #@69
    goto :goto_b8

    #@6a
    :cond_6a
    const/4 v1, 0x7

    #@6b
    goto :goto_b8

    #@6c
    :sswitch_6c
    const-string v0, "scaleX"

    #@6e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v0

    #@72
    if-nez v0, :cond_75

    #@74
    goto :goto_b8

    #@75
    :cond_75
    const/4 v1, 0x6

    #@76
    goto :goto_b8

    #@77
    :sswitch_77
    const-string v0, "progress"

    #@79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v0

    #@7d
    if-nez v0, :cond_80

    #@7f
    goto :goto_b8

    #@80
    :cond_80
    const/4 v1, 0x5

    #@81
    goto :goto_b8

    #@82
    :sswitch_82
    const-string v0, "translationZ"

    #@84
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v0

    #@88
    if-nez v0, :cond_8b

    #@8a
    goto :goto_b8

    #@8b
    :cond_8b
    const/4 v1, 0x4

    #@8c
    goto :goto_b8

    #@8d
    :sswitch_8d
    const-string v0, "translationY"

    #@8f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v0

    #@93
    if-nez v0, :cond_96

    #@95
    goto :goto_b8

    #@96
    :cond_96
    const/4 v1, 0x3

    #@97
    goto :goto_b8

    #@98
    :sswitch_98
    const-string v0, "translationX"

    #@9a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v0

    #@9e
    if-nez v0, :cond_a1

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
    move-result v0

    #@a9
    if-nez v0, :cond_ac

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
    move-result v0

    #@b4
    if-nez v0, :cond_b7

    #@b6
    goto :goto_b8

    #@b7
    :cond_b7
    const/4 v1, 0x0

    #@b8
    :goto_b8
    packed-switch v1, :pswitch_data_13e

    #@bb
    const-string v0, "CUSTOM"

    #@bd
    .line 193
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c0
    move-result v0

    #@c1
    if-nez v0, :cond_d7

    #@c3
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    #@c5
    const-string v1, "  UNKNOWN  "

    #@c7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@ca
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object p1

    #@ce
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object p1

    #@d2
    const-string v0, "WARNING! KeyCycle"

    #@d4
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    :cond_d7
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@d9
    return p1

    #@da
    .line 189
    :pswitch_da
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    #@dc
    return p1

    #@dd
    .line 187
    :pswitch_dd
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    #@df
    return p1

    #@e0
    .line 165
    :pswitch_e0
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    #@e2
    return p1

    #@e3
    .line 175
    :pswitch_e3
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    #@e5
    return p1

    #@e6
    .line 167
    :pswitch_e6
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    #@e8
    return p1

    #@e9
    .line 169
    :pswitch_e9
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    #@eb
    return p1

    #@ec
    .line 179
    :pswitch_ec
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    #@ee
    return p1

    #@ef
    .line 177
    :pswitch_ef
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    #@f1
    return p1

    #@f2
    .line 191
    :pswitch_f2
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    #@f4
    return p1

    #@f5
    .line 185
    :pswitch_f5
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    #@f7
    return p1

    #@f8
    .line 183
    :pswitch_f8
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    #@fa
    return p1

    #@fb
    .line 181
    :pswitch_fb
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    #@fd
    return p1

    #@fe
    .line 173
    :pswitch_fe
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    #@100
    return p1

    #@101
    .line 171
    :pswitch_101
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    #@103
    return p1

    #@104
    :sswitch_data_104
    .sparse-switch
        -0x4a771f66 -> :sswitch_ae
        -0x4a771f65 -> :sswitch_a3
        -0x490b9c39 -> :sswitch_98
        -0x490b9c38 -> :sswitch_8d
        -0x490b9c37 -> :sswitch_82
        -0x3bab3dd3 -> :sswitch_77
        -0x3621dfb2 -> :sswitch_6c
        -0x3621dfb1 -> :sswitch_61
        -0x266f082 -> :sswitch_53
        -0x42d1a3 -> :sswitch_45
        0x2382115 -> :sswitch_37
        0x589b15e -> :sswitch_29
        0x94e04ec -> :sswitch_1b
        0x5b327a02 -> :sswitch_d
    .end sparse-switch

    #@13e
    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
    .end packed-switch
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    .line 85
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyCycle:[I

    #@2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    .line 86
    # invokes: Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyCycle;Landroid/content/res/TypedArray;)V
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyCycle$Loader;->access$000(Landroidx/constraintlayout/motion/widget/KeyCycle;Landroid/content/res/TypedArray;)V

    #@9
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "value"
        }
    .end annotation

    #@0
    .line 408
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x7

    #@8
    const/4 v2, -0x1

    #@9
    sparse-switch v0, :sswitch_data_186

    #@c
    goto/16 :goto_f1

    #@e
    :sswitch_e
    const-string v0, "waveShape"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result p1

    #@14
    if-nez p1, :cond_18

    #@16
    goto/16 :goto_f1

    #@18
    :cond_18
    const/16 v2, 0x11

    #@1a
    goto/16 :goto_f1

    #@1c
    :sswitch_1c
    const-string v0, "wavePhase"

    #@1e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result p1

    #@22
    if-nez p1, :cond_26

    #@24
    goto/16 :goto_f1

    #@26
    :cond_26
    const/16 v2, 0x10

    #@28
    goto/16 :goto_f1

    #@2a
    :sswitch_2a
    const-string v0, "curveFit"

    #@2c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result p1

    #@30
    if-nez p1, :cond_34

    #@32
    goto/16 :goto_f1

    #@34
    :cond_34
    const/16 v2, 0xf

    #@36
    goto/16 :goto_f1

    #@38
    :sswitch_38
    const-string v0, "wavePeriod"

    #@3a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result p1

    #@3e
    if-nez p1, :cond_42

    #@40
    goto/16 :goto_f1

    #@42
    :cond_42
    const/16 v2, 0xe

    #@44
    goto/16 :goto_f1

    #@46
    :sswitch_46
    const-string v0, "waveOffset"

    #@48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result p1

    #@4c
    if-nez p1, :cond_50

    #@4e
    goto/16 :goto_f1

    #@50
    :cond_50
    const/16 v2, 0xd

    #@52
    goto/16 :goto_f1

    #@54
    :sswitch_54
    const-string v0, "alpha"

    #@56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result p1

    #@5a
    if-nez p1, :cond_5e

    #@5c
    goto/16 :goto_f1

    #@5e
    :cond_5e
    const/16 v2, 0xc

    #@60
    goto/16 :goto_f1

    #@62
    :sswitch_62
    const-string v0, "transitionPathRotate"

    #@64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result p1

    #@68
    if-nez p1, :cond_6c

    #@6a
    goto/16 :goto_f1

    #@6c
    :cond_6c
    const/16 v2, 0xb

    #@6e
    goto/16 :goto_f1

    #@70
    :sswitch_70
    const-string v0, "elevation"

    #@72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result p1

    #@76
    if-nez p1, :cond_7a

    #@78
    goto/16 :goto_f1

    #@7a
    :cond_7a
    const/16 v2, 0xa

    #@7c
    goto/16 :goto_f1

    #@7e
    :sswitch_7e
    const-string v0, "rotation"

    #@80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result p1

    #@84
    if-nez p1, :cond_88

    #@86
    goto/16 :goto_f1

    #@88
    :cond_88
    const/16 v2, 0x9

    #@8a
    goto/16 :goto_f1

    #@8c
    :sswitch_8c
    const-string v0, "scaleY"

    #@8e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result p1

    #@92
    if-nez p1, :cond_96

    #@94
    goto/16 :goto_f1

    #@96
    :cond_96
    const/16 v2, 0x8

    #@98
    goto/16 :goto_f1

    #@9a
    :sswitch_9a
    const-string v0, "scaleX"

    #@9c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result p1

    #@a0
    if-nez p1, :cond_a3

    #@a2
    goto :goto_f1

    #@a3
    :cond_a3
    move v2, v1

    #@a4
    goto :goto_f1

    #@a5
    :sswitch_a5
    const-string v0, "translationZ"

    #@a7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result p1

    #@ab
    if-nez p1, :cond_ae

    #@ad
    goto :goto_f1

    #@ae
    :cond_ae
    const/4 v2, 0x6

    #@af
    goto :goto_f1

    #@b0
    :sswitch_b0
    const-string v0, "translationY"

    #@b2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b5
    move-result p1

    #@b6
    if-nez p1, :cond_b9

    #@b8
    goto :goto_f1

    #@b9
    :cond_b9
    const/4 v2, 0x5

    #@ba
    goto :goto_f1

    #@bb
    :sswitch_bb
    const-string v0, "translationX"

    #@bd
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result p1

    #@c1
    if-nez p1, :cond_c4

    #@c3
    goto :goto_f1

    #@c4
    :cond_c4
    const/4 v2, 0x4

    #@c5
    goto :goto_f1

    #@c6
    :sswitch_c6
    const-string v0, "rotationY"

    #@c8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cb
    move-result p1

    #@cc
    if-nez p1, :cond_cf

    #@ce
    goto :goto_f1

    #@cf
    :cond_cf
    const/4 v2, 0x3

    #@d0
    goto :goto_f1

    #@d1
    :sswitch_d1
    const-string v0, "rotationX"

    #@d3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d6
    move-result p1

    #@d7
    if-nez p1, :cond_da

    #@d9
    goto :goto_f1

    #@da
    :cond_da
    const/4 v2, 0x2

    #@db
    goto :goto_f1

    #@dc
    :sswitch_dc
    const-string v0, "transitionEasing"

    #@de
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e1
    move-result p1

    #@e2
    if-nez p1, :cond_e5

    #@e4
    goto :goto_f1

    #@e5
    :cond_e5
    const/4 v2, 0x1

    #@e6
    goto :goto_f1

    #@e7
    :sswitch_e7
    const-string v0, "motionProgress"

    #@e9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ec
    move-result p1

    #@ed
    if-nez p1, :cond_f0

    #@ef
    goto :goto_f1

    #@f0
    :cond_f0
    const/4 v2, 0x0

    #@f1
    :goto_f1
    packed-switch v2, :pswitch_data_1d0

    #@f4
    goto/16 :goto_184

    #@f6
    .line 461
    :pswitch_f6
    instance-of p1, p2, Ljava/lang/Integer;

    #@f8
    if-eqz p1, :cond_102

    #@fa
    .line 462
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toInt(Ljava/lang/Object;)I

    #@fd
    move-result p1

    #@fe
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    #@100
    goto/16 :goto_184

    #@102
    .line 464
    :cond_102
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveShape:I

    #@104
    .line 465
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@107
    move-result-object p1

    #@108
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCustomWaveShape:Ljava/lang/String;

    #@10a
    goto/16 :goto_184

    #@10c
    .line 458
    :pswitch_10c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@10f
    move-result p1

    #@110
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePhase:F

    #@112
    goto/16 :goto_184

    #@114
    .line 413
    :pswitch_114
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toInt(Ljava/lang/Object;)I

    #@117
    move-result p1

    #@118
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mCurveFit:I

    #@11a
    goto/16 :goto_184

    #@11c
    .line 452
    :pswitch_11c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@11f
    move-result p1

    #@120
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWavePeriod:F

    #@122
    goto :goto_184

    #@123
    .line 455
    :pswitch_123
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@126
    move-result p1

    #@127
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mWaveOffset:F

    #@129
    goto :goto_184

    #@12a
    .line 410
    :pswitch_12a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@12d
    move-result p1

    #@12e
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mAlpha:F

    #@130
    goto :goto_184

    #@131
    .line 440
    :pswitch_131
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@134
    move-result p1

    #@135
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionPathRotate:F

    #@137
    goto :goto_184

    #@138
    .line 416
    :pswitch_138
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@13b
    move-result p1

    #@13c
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mElevation:F

    #@13e
    goto :goto_184

    #@13f
    .line 422
    :pswitch_13f
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@142
    move-result p1

    #@143
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotation:F

    #@145
    goto :goto_184

    #@146
    .line 434
    :pswitch_146
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@149
    move-result p1

    #@14a
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleY:F

    #@14c
    goto :goto_184

    #@14d
    .line 431
    :pswitch_14d
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@150
    move-result p1

    #@151
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mScaleX:F

    #@153
    goto :goto_184

    #@154
    .line 449
    :pswitch_154
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@157
    move-result p1

    #@158
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationZ:F

    #@15a
    goto :goto_184

    #@15b
    .line 446
    :pswitch_15b
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@15e
    move-result p1

    #@15f
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationY:F

    #@161
    goto :goto_184

    #@162
    .line 443
    :pswitch_162
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@165
    move-result p1

    #@166
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTranslationX:F

    #@168
    goto :goto_184

    #@169
    .line 428
    :pswitch_169
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@16c
    move-result p1

    #@16d
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationY:F

    #@16f
    goto :goto_184

    #@170
    .line 425
    :pswitch_170
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@173
    move-result p1

    #@174
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mRotationX:F

    #@176
    goto :goto_184

    #@177
    .line 437
    :pswitch_177
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@17a
    move-result-object p1

    #@17b
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mTransitionEasing:Ljava/lang/String;

    #@17d
    goto :goto_184

    #@17e
    .line 419
    :pswitch_17e
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyCycle;->toFloat(Ljava/lang/Object;)F

    #@181
    move-result p1

    #@182
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycle;->mProgress:F

    #@184
    :goto_184
    return-void

    #@185
    nop

    #@186
    :sswitch_data_186
    .sparse-switch
        -0x72062ffd -> :sswitch_e7
        -0x6c0d7d20 -> :sswitch_dc
        -0x4a771f66 -> :sswitch_d1
        -0x4a771f65 -> :sswitch_c6
        -0x490b9c39 -> :sswitch_bb
        -0x490b9c38 -> :sswitch_b0
        -0x490b9c37 -> :sswitch_a5
        -0x3621dfb2 -> :sswitch_9a
        -0x3621dfb1 -> :sswitch_8c
        -0x266f082 -> :sswitch_7e
        -0x42d1a3 -> :sswitch_70
        0x2382115 -> :sswitch_62
        0x589b15e -> :sswitch_54
        0x94e04ec -> :sswitch_46
        0xafa161a -> :sswitch_38
        0x2283b8a2 -> :sswitch_2a
        0x5b327a02 -> :sswitch_1c
        0x5b5cc028 -> :sswitch_e
    .end sparse-switch

    #@1d0
    :pswitch_data_1d0
    .packed-switch 0x0
        :pswitch_17e
        :pswitch_177
        :pswitch_170
        :pswitch_169
        :pswitch_162
        :pswitch_15b
        :pswitch_154
        :pswitch_14d
        :pswitch_146
        :pswitch_13f
        :pswitch_138
        :pswitch_131
        :pswitch_12a
        :pswitch_123
        :pswitch_11c
        :pswitch_114
        :pswitch_10c
        :pswitch_f6
    .end packed-switch
.end method
