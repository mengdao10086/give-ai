.class public Landroidx/constraintlayout/motion/widget/KeyTimeCycle;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "KeyTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:I = 0x3

.field static final NAME:Ljava/lang/String; = "KeyTimeCycle"

.field public static final SHAPE_BOUNCE:I = 0x6

.field public static final SHAPE_COS_WAVE:I = 0x5

.field public static final SHAPE_REVERSE_SAW_WAVE:I = 0x4

.field public static final SHAPE_SAW_WAVE:I = 0x3

.field public static final SHAPE_SIN_WAVE:I = 0x0

.field public static final SHAPE_SQUARE_WAVE:I = 0x1

.field public static final SHAPE_TRIANGLE_WAVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyTimeCycle"

.field public static final WAVE_OFFSET:Ljava/lang/String; = "waveOffset"

.field public static final WAVE_PERIOD:Ljava/lang/String; = "wavePeriod"

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

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    .line 42
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 57
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@6
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@8
    .line 58
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    #@a
    .line 59
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    #@c
    .line 60
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    #@e
    .line 61
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    #@10
    .line 62
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    #@12
    .line 63
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    #@14
    .line 64
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    #@16
    .line 65
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    #@18
    .line 66
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    #@1a
    .line 67
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    #@1c
    .line 68
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    #@1e
    .line 69
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    #@20
    const/4 v1, 0x0

    #@21
    .line 70
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@23
    const/4 v1, 0x0

    #@24
    .line 71
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    #@26
    .line 72
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@28
    const/4 v0, 0x0

    #@29
    .line 73
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@2b
    const/4 v0, 0x3

    #@2c
    .line 77
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mType:I

    #@2e
    .line 78
    new-instance v0, Ljava/util/HashMap;

    #@30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@33
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    #@35
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    #@2
    return p0
.end method

.method static synthetic access$002(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    #@2
    return p1
.end method

.method static synthetic access$100(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    #@2
    return p0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    #@2
    return p0
.end method

.method static synthetic access$1002(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    #@2
    return p1
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    #@2
    return p1
.end method

.method static synthetic access$1102(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    #@2
    return p0
.end method

.method static synthetic access$1202(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    #@2
    return p1
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    #@2
    return p0
.end method

.method static synthetic access$1302(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    #@2
    return p1
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    #@2
    return p0
.end method

.method static synthetic access$1402(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    #@2
    return p1
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    #@2
    return p0
.end method

.method static synthetic access$1502(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    #@2
    return p1
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    #@2
    return p0
.end method

.method static synthetic access$1602(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    #@2
    return p1
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    #@2
    return p0
.end method

.method static synthetic access$1702(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    #@2
    return p1
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    #@2
    return p0
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    #@2
    return p1
.end method

.method static synthetic access$300(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)I
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@2
    return p0
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;I)I
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@2
    return p1
.end method

.method static synthetic access$402(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)I
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@2
    return p0
.end method

.method static synthetic access$502(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;I)I
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@2
    return p1
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@2
    return p0
.end method

.method static synthetic access$602(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@2
    return p1
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@2
    return p0
.end method

.method static synthetic access$702(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@2
    return p1
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    #@2
    return p0
.end method

.method static synthetic access$802(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    #@2
    return p1
.end method

.method static synthetic access$900(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;)F
    .registers 1

    #@0
    .line 42
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    #@2
    return p0
.end method

.method static synthetic access$902(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;F)F
    .registers 2

    #@0
    .line 42
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    #@2
    return p1
.end method


# virtual methods
.method public addTimeValues(Ljava/util/HashMap;)V
    .registers 12
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
            "Landroidx/constraintlayout/motion/utils/ViewTimeCycle;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 190
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
    .line 191
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    move-object v3, v2

    #@19
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;

    #@1b
    if-nez v3, :cond_1e

    #@1d
    goto :goto_8

    #@1e
    :cond_1e
    const-string v2, "CUSTOM"

    #@20
    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@23
    move-result v2

    #@24
    const/4 v4, 0x7

    #@25
    if-eqz v2, :cond_45

    #@27
    .line 196
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 197
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    #@2d
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    move-object v6, v1

    #@32
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@34
    if-eqz v6, :cond_8

    #@36
    .line 199
    move-object v4, v3

    #@37
    check-cast v4, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    #@39
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@3b
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@3d
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@3f
    iget v9, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@41
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;FIF)V

    #@44
    goto :goto_8

    #@45
    .line 203
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
    const-string v2, "alpha"

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
    const-string v2, "transitionPathRotate"

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
    const-string v2, "rotation"

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
    const-string v2, "scaleY"

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
    const-string v2, "scaleX"

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
    const-string v2, "progress"

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
    const-string v2, "translationZ"

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
    const-string v2, "translationY"

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
    const-string v2, "translationX"

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
    .line 265
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
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f9
    goto/16 :goto_8

    #@fb
    .line 205
    :pswitch_fb
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    #@fd
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@100
    move-result v1

    #@101
    if-nez v1, :cond_8

    #@103
    .line 206
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@105
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    #@107
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@109
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@10b
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@10d
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    #@110
    goto/16 :goto_8

    #@112
    .line 230
    :pswitch_112
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    #@114
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@117
    move-result v1

    #@118
    if-nez v1, :cond_8

    #@11a
    .line 231
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@11c
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    #@11e
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@120
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@122
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@124
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    #@127
    goto/16 :goto_8

    #@129
    .line 210
    :pswitch_129
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    #@12b
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@12e
    move-result v1

    #@12f
    if-nez v1, :cond_8

    #@131
    .line 211
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@133
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    #@135
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@137
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@139
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@13b
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    #@13e
    goto/16 :goto_8

    #@140
    .line 215
    :pswitch_140
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    #@142
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@145
    move-result v1

    #@146
    if-nez v1, :cond_8

    #@148
    .line 216
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@14a
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    #@14c
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@14e
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@150
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@152
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    #@155
    goto/16 :goto_8

    #@157
    .line 240
    :pswitch_157
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    #@159
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@15c
    move-result v1

    #@15d
    if-nez v1, :cond_8

    #@15f
    .line 241
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@161
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    #@163
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@165
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@167
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@169
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    #@16c
    goto/16 :goto_8

    #@16e
    .line 235
    :pswitch_16e
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    #@170
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@173
    move-result v1

    #@174
    if-nez v1, :cond_8

    #@176
    .line 236
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@178
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    #@17a
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@17c
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@17e
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@180
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    #@183
    goto/16 :goto_8

    #@185
    .line 260
    :pswitch_185
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    #@187
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@18a
    move-result v1

    #@18b
    if-nez v1, :cond_8

    #@18d
    .line 261
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@18f
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    #@191
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@193
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@195
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@197
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    #@19a
    goto/16 :goto_8

    #@19c
    .line 255
    :pswitch_19c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    #@19e
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1a1
    move-result v1

    #@1a2
    if-nez v1, :cond_8

    #@1a4
    .line 256
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@1a6
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    #@1a8
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@1aa
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@1ac
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@1ae
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    #@1b1
    goto/16 :goto_8

    #@1b3
    .line 250
    :pswitch_1b3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    #@1b5
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1b8
    move-result v1

    #@1b9
    if-nez v1, :cond_8

    #@1bb
    .line 251
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@1bd
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    #@1bf
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@1c1
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@1c3
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@1c5
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    #@1c8
    goto/16 :goto_8

    #@1ca
    .line 245
    :pswitch_1ca
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    #@1cc
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1cf
    move-result v1

    #@1d0
    if-nez v1, :cond_8

    #@1d2
    .line 246
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@1d4
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    #@1d6
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@1d8
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@1da
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@1dc
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    #@1df
    goto/16 :goto_8

    #@1e1
    .line 225
    :pswitch_1e1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    #@1e3
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1e6
    move-result v1

    #@1e7
    if-nez v1, :cond_8

    #@1e9
    .line 226
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@1eb
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    #@1ed
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@1ef
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@1f1
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@1f3
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

    #@1f6
    goto/16 :goto_8

    #@1f8
    .line 220
    :pswitch_1f8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    #@1fa
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1fd
    move-result v1

    #@1fe
    if-nez v1, :cond_8

    #@200
    .line 221
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mFramePosition:I

    #@202
    iget v5, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    #@204
    iget v6, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@206
    iget v7, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@208
    iget v8, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@20a
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setPoint(IFFIF)V

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
        -0x490b9c39 -> :sswitch_bb
        -0x490b9c38 -> :sswitch_b0
        -0x490b9c37 -> :sswitch_a5
        -0x3bab3dd3 -> :sswitch_9a
        -0x3621dfb2 -> :sswitch_8f
        -0x3621dfb1 -> :sswitch_86
        -0x266f082 -> :sswitch_7a
        -0x42d1a3 -> :sswitch_6d
        0x2382115 -> :sswitch_60
        0x589b15e -> :sswitch_53
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
    .registers 3
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
    .line 186
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@2
    const-string v0, " KeyTimeCycles do not support SplineSet"

    #@4
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7
    throw p1
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .registers 2

    #@0
    .line 494
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

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
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->clone()Landroidx/constraintlayout/motion/widget/Key;

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
    .line 471
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    #@3
    .line 472
    check-cast p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    #@5
    .line 473
    iget-object v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    #@7
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    #@9
    .line 474
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@d
    .line 475
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@11
    .line 476
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@15
    .line 477
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@17
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@19
    .line 478
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    #@1b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    #@1d
    .line 479
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    #@1f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    #@21
    .line 480
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    #@23
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    #@25
    .line 481
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    #@27
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    #@29
    .line 482
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    #@2b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    #@2d
    .line 483
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    #@2f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    #@31
    .line 484
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    #@33
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    #@35
    .line 485
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    #@37
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    #@39
    .line 486
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    #@3b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    #@3d
    .line 487
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    #@3f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    #@41
    .line 488
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    #@43
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    #@45
    .line 489
    iget p1, p1, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    #@47
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    #@49
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
    .line 93
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_d

    #@8
    const-string v0, "alpha"

    #@a
    .line 94
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@d
    .line 96
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    #@f
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1a

    #@15
    const-string v0, "elevation"

    #@17
    .line 97
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1a
    .line 99
    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    #@1c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_27

    #@22
    const-string v0, "rotation"

    #@24
    .line 100
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@27
    .line 102
    :cond_27
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    #@29
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_34

    #@2f
    const-string v0, "rotationX"

    #@31
    .line 103
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@34
    .line 105
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    #@36
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_41

    #@3c
    const-string v0, "rotationY"

    #@3e
    .line 106
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@41
    .line 108
    :cond_41
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    #@43
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_4e

    #@49
    const-string v0, "translationX"

    #@4b
    .line 109
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4e
    .line 111
    :cond_4e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    #@50
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@53
    move-result v0

    #@54
    if-nez v0, :cond_5b

    #@56
    const-string v0, "translationY"

    #@58
    .line 112
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5b
    .line 114
    :cond_5b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    #@5d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@60
    move-result v0

    #@61
    if-nez v0, :cond_68

    #@63
    const-string v0, "translationZ"

    #@65
    .line 115
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@68
    .line 117
    :cond_68
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    #@6a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@6d
    move-result v0

    #@6e
    if-nez v0, :cond_75

    #@70
    const-string v0, "transitionPathRotate"

    #@72
    .line 118
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@75
    .line 120
    :cond_75
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    #@77
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@7a
    move-result v0

    #@7b
    if-nez v0, :cond_82

    #@7d
    const-string v0, "scaleX"

    #@7f
    .line 121
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@82
    .line 123
    :cond_82
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    #@84
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@87
    move-result v0

    #@88
    if-nez v0, :cond_8f

    #@8a
    const-string v0, "scaleY"

    #@8c
    .line 124
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@8f
    .line 126
    :cond_8f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    #@91
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@94
    move-result v0

    #@95
    if-nez v0, :cond_9c

    #@97
    const-string v0, "progress"

    #@99
    .line 127
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@9c
    .line 129
    :cond_9c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    #@9e
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@a1
    move-result v0

    #@a2
    if-lez v0, :cond_cd

    #@a4
    .line 130
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    #@a6
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@a9
    move-result-object v0

    #@aa
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@ad
    move-result-object v0

    #@ae
    :goto_ae
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b1
    move-result v1

    #@b2
    if-eqz v1, :cond_cd

    #@b4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b7
    move-result-object v1

    #@b8
    check-cast v1, Ljava/lang/String;

    #@ba
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    #@bc
    const-string v3, "CUSTOM,"

    #@be
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v1

    #@c5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v1

    #@c9
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@cc
    goto :goto_ae

    #@cd
    :cond_cd
    return-void
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
    .line 83
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyTimeCycle:[I

    #@2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    .line 84
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyTimeCycle;Landroid/content/res/TypedArray;)V

    #@9
    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpolation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 137
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_6

    #@5
    return-void

    #@6
    .line 140
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    #@8
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_19

    #@e
    .line 141
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v0

    #@14
    const-string v1, "alpha"

    #@16
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 143
    :cond_19
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    #@1b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_2c

    #@21
    .line 144
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v0

    #@27
    const-string v1, "elevation"

    #@29
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 146
    :cond_2c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    #@2e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_3f

    #@34
    .line 147
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v0

    #@3a
    const-string v1, "rotation"

    #@3c
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 149
    :cond_3f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    #@41
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@44
    move-result v0

    #@45
    if-nez v0, :cond_52

    #@47
    .line 150
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v0

    #@4d
    const-string v1, "rotationX"

    #@4f
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 152
    :cond_52
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    #@54
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@57
    move-result v0

    #@58
    if-nez v0, :cond_65

    #@5a
    .line 153
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@5c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f
    move-result-object v0

    #@60
    const-string v1, "rotationY"

    #@62
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    .line 155
    :cond_65
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    #@67
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@6a
    move-result v0

    #@6b
    if-nez v0, :cond_78

    #@6d
    .line 156
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@6f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v0

    #@73
    const-string v1, "translationX"

    #@75
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    .line 158
    :cond_78
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    #@7a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@7d
    move-result v0

    #@7e
    if-nez v0, :cond_8b

    #@80
    .line 159
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@85
    move-result-object v0

    #@86
    const-string v1, "translationY"

    #@88
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    .line 161
    :cond_8b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    #@8d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@90
    move-result v0

    #@91
    if-nez v0, :cond_9e

    #@93
    .line 162
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@98
    move-result-object v0

    #@99
    const-string v1, "translationZ"

    #@9b
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    .line 164
    :cond_9e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    #@a0
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@a3
    move-result v0

    #@a4
    if-nez v0, :cond_b1

    #@a6
    .line 165
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@a8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ab
    move-result-object v0

    #@ac
    const-string v1, "transitionPathRotate"

    #@ae
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b1
    .line 167
    :cond_b1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    #@b3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@b6
    move-result v0

    #@b7
    if-nez v0, :cond_c4

    #@b9
    .line 168
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@bb
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@be
    move-result-object v0

    #@bf
    const-string v1, "scaleX"

    #@c1
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c4
    .line 170
    :cond_c4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    #@c6
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@c9
    move-result v0

    #@ca
    if-nez v0, :cond_d7

    #@cc
    .line 171
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@ce
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d1
    move-result-object v0

    #@d2
    const-string v1, "scaleY"

    #@d4
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d7
    .line 173
    :cond_d7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    #@d9
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@dc
    move-result v0

    #@dd
    if-nez v0, :cond_ea

    #@df
    .line 174
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@e1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e4
    move-result-object v0

    #@e5
    const-string v1, "progress"

    #@e7
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    .line 176
    :cond_ea
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    #@ec
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@ef
    move-result v0

    #@f0
    if-lez v0, :cond_121

    #@f2
    .line 177
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    #@f4
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@f7
    move-result-object v0

    #@f8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@fb
    move-result-object v0

    #@fc
    :goto_fc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@ff
    move-result v1

    #@100
    if-eqz v1, :cond_121

    #@102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@105
    move-result-object v1

    #@106
    check-cast v1, Ljava/lang/String;

    #@108
    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    #@10a
    const-string v3, "CUSTOM,"

    #@10c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v1

    #@113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v1

    #@117
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11c
    move-result-object v2

    #@11d
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@120
    goto :goto_fc

    #@121
    :cond_121
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
    .line 272
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
    sparse-switch v0, :sswitch_data_170

    #@c
    goto/16 :goto_e3

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
    goto/16 :goto_e3

    #@18
    :cond_18
    const/16 v2, 0x10

    #@1a
    goto/16 :goto_e3

    #@1c
    :sswitch_1c
    const-string v0, "curveFit"

    #@1e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result p1

    #@22
    if-nez p1, :cond_26

    #@24
    goto/16 :goto_e3

    #@26
    :cond_26
    const/16 v2, 0xf

    #@28
    goto/16 :goto_e3

    #@2a
    :sswitch_2a
    const-string v0, "wavePeriod"

    #@2c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result p1

    #@30
    if-nez p1, :cond_34

    #@32
    goto/16 :goto_e3

    #@34
    :cond_34
    const/16 v2, 0xe

    #@36
    goto/16 :goto_e3

    #@38
    :sswitch_38
    const-string v0, "waveOffset"

    #@3a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result p1

    #@3e
    if-nez p1, :cond_42

    #@40
    goto/16 :goto_e3

    #@42
    :cond_42
    const/16 v2, 0xd

    #@44
    goto/16 :goto_e3

    #@46
    :sswitch_46
    const-string v0, "alpha"

    #@48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result p1

    #@4c
    if-nez p1, :cond_50

    #@4e
    goto/16 :goto_e3

    #@50
    :cond_50
    const/16 v2, 0xc

    #@52
    goto/16 :goto_e3

    #@54
    :sswitch_54
    const-string v0, "transitionPathRotate"

    #@56
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result p1

    #@5a
    if-nez p1, :cond_5e

    #@5c
    goto/16 :goto_e3

    #@5e
    :cond_5e
    const/16 v2, 0xb

    #@60
    goto/16 :goto_e3

    #@62
    :sswitch_62
    const-string v0, "elevation"

    #@64
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result p1

    #@68
    if-nez p1, :cond_6c

    #@6a
    goto/16 :goto_e3

    #@6c
    :cond_6c
    const/16 v2, 0xa

    #@6e
    goto/16 :goto_e3

    #@70
    :sswitch_70
    const-string v0, "rotation"

    #@72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result p1

    #@76
    if-nez p1, :cond_7a

    #@78
    goto/16 :goto_e3

    #@7a
    :cond_7a
    const/16 v2, 0x9

    #@7c
    goto/16 :goto_e3

    #@7e
    :sswitch_7e
    const-string v0, "scaleY"

    #@80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result p1

    #@84
    if-nez p1, :cond_88

    #@86
    goto/16 :goto_e3

    #@88
    :cond_88
    const/16 v2, 0x8

    #@8a
    goto/16 :goto_e3

    #@8c
    :sswitch_8c
    const-string v0, "scaleX"

    #@8e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result p1

    #@92
    if-nez p1, :cond_95

    #@94
    goto :goto_e3

    #@95
    :cond_95
    move v2, v1

    #@96
    goto :goto_e3

    #@97
    :sswitch_97
    const-string v0, "translationZ"

    #@99
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result p1

    #@9d
    if-nez p1, :cond_a0

    #@9f
    goto :goto_e3

    #@a0
    :cond_a0
    const/4 v2, 0x6

    #@a1
    goto :goto_e3

    #@a2
    :sswitch_a2
    const-string v0, "translationY"

    #@a4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a7
    move-result p1

    #@a8
    if-nez p1, :cond_ab

    #@aa
    goto :goto_e3

    #@ab
    :cond_ab
    const/4 v2, 0x5

    #@ac
    goto :goto_e3

    #@ad
    :sswitch_ad
    const-string v0, "translationX"

    #@af
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result p1

    #@b3
    if-nez p1, :cond_b6

    #@b5
    goto :goto_e3

    #@b6
    :cond_b6
    const/4 v2, 0x4

    #@b7
    goto :goto_e3

    #@b8
    :sswitch_b8
    const-string v0, "rotationY"

    #@ba
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bd
    move-result p1

    #@be
    if-nez p1, :cond_c1

    #@c0
    goto :goto_e3

    #@c1
    :cond_c1
    const/4 v2, 0x3

    #@c2
    goto :goto_e3

    #@c3
    :sswitch_c3
    const-string v0, "rotationX"

    #@c5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result p1

    #@c9
    if-nez p1, :cond_cc

    #@cb
    goto :goto_e3

    #@cc
    :cond_cc
    const/4 v2, 0x2

    #@cd
    goto :goto_e3

    #@ce
    :sswitch_ce
    const-string v0, "transitionEasing"

    #@d0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d3
    move-result p1

    #@d4
    if-nez p1, :cond_d7

    #@d6
    goto :goto_e3

    #@d7
    :cond_d7
    const/4 v2, 0x1

    #@d8
    goto :goto_e3

    #@d9
    :sswitch_d9
    const-string v0, "motionProgress"

    #@db
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@de
    move-result p1

    #@df
    if-nez p1, :cond_e2

    #@e1
    goto :goto_e3

    #@e2
    :cond_e2
    const/4 v2, 0x0

    #@e3
    :goto_e3
    packed-switch v2, :pswitch_data_1b6

    #@e6
    goto/16 :goto_16e

    #@e8
    .line 322
    :pswitch_e8
    instance-of p1, p2, Ljava/lang/Integer;

    #@ea
    if-eqz p1, :cond_f4

    #@ec
    .line 323
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toInt(Ljava/lang/Object;)I

    #@ef
    move-result p1

    #@f0
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@f2
    goto/16 :goto_16e

    #@f4
    .line 325
    :cond_f4
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveShape:I

    #@f6
    .line 326
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@f9
    move-result-object p1

    #@fa
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCustomWaveShape:Ljava/lang/String;

    #@fc
    goto/16 :goto_16e

    #@fe
    .line 277
    :pswitch_fe
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toInt(Ljava/lang/Object;)I

    #@101
    move-result p1

    #@102
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mCurveFit:I

    #@104
    goto/16 :goto_16e

    #@106
    .line 316
    :pswitch_106
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@109
    move-result p1

    #@10a
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWavePeriod:F

    #@10c
    goto :goto_16e

    #@10d
    .line 319
    :pswitch_10d
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@110
    move-result p1

    #@111
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mWaveOffset:F

    #@113
    goto :goto_16e

    #@114
    .line 274
    :pswitch_114
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@117
    move-result p1

    #@118
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mAlpha:F

    #@11a
    goto :goto_16e

    #@11b
    .line 304
    :pswitch_11b
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@11e
    move-result p1

    #@11f
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionPathRotate:F

    #@121
    goto :goto_16e

    #@122
    .line 280
    :pswitch_122
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@125
    move-result p1

    #@126
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mElevation:F

    #@128
    goto :goto_16e

    #@129
    .line 286
    :pswitch_129
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@12c
    move-result p1

    #@12d
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotation:F

    #@12f
    goto :goto_16e

    #@130
    .line 298
    :pswitch_130
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@133
    move-result p1

    #@134
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleY:F

    #@136
    goto :goto_16e

    #@137
    .line 295
    :pswitch_137
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@13a
    move-result p1

    #@13b
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mScaleX:F

    #@13d
    goto :goto_16e

    #@13e
    .line 313
    :pswitch_13e
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@141
    move-result p1

    #@142
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationZ:F

    #@144
    goto :goto_16e

    #@145
    .line 310
    :pswitch_145
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@148
    move-result p1

    #@149
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationY:F

    #@14b
    goto :goto_16e

    #@14c
    .line 307
    :pswitch_14c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@14f
    move-result p1

    #@150
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTranslationX:F

    #@152
    goto :goto_16e

    #@153
    .line 292
    :pswitch_153
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@156
    move-result p1

    #@157
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationY:F

    #@159
    goto :goto_16e

    #@15a
    .line 289
    :pswitch_15a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@15d
    move-result p1

    #@15e
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mRotationX:F

    #@160
    goto :goto_16e

    #@161
    .line 301
    :pswitch_161
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@164
    move-result-object p1

    #@165
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    #@167
    goto :goto_16e

    #@168
    .line 283
    :pswitch_168
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    #@16b
    move-result p1

    #@16c
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->mProgress:F

    #@16e
    :goto_16e
    return-void

    #@16f
    nop

    #@170
    :sswitch_data_170
    .sparse-switch
        -0x72062ffd -> :sswitch_d9
        -0x6c0d7d20 -> :sswitch_ce
        -0x4a771f66 -> :sswitch_c3
        -0x4a771f65 -> :sswitch_b8
        -0x490b9c39 -> :sswitch_ad
        -0x490b9c38 -> :sswitch_a2
        -0x490b9c37 -> :sswitch_97
        -0x3621dfb2 -> :sswitch_8c
        -0x3621dfb1 -> :sswitch_7e
        -0x266f082 -> :sswitch_70
        -0x42d1a3 -> :sswitch_62
        0x2382115 -> :sswitch_54
        0x589b15e -> :sswitch_46
        0x94e04ec -> :sswitch_38
        0xafa161a -> :sswitch_2a
        0x2283b8a2 -> :sswitch_1c
        0x5b5cc028 -> :sswitch_e
    .end sparse-switch

    #@1b6
    :pswitch_data_1b6
    .packed-switch 0x0
        :pswitch_168
        :pswitch_161
        :pswitch_15a
        :pswitch_153
        :pswitch_14c
        :pswitch_145
        :pswitch_13e
        :pswitch_137
        :pswitch_130
        :pswitch_129
        :pswitch_122
        :pswitch_11b
        :pswitch_114
        :pswitch_10d
        :pswitch_106
        :pswitch_fe
        :pswitch_e8
    .end packed-switch
.end method
