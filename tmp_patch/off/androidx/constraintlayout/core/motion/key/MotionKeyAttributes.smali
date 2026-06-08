.class public Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;
.super Landroidx/constraintlayout/core/motion/key/MotionKey;
.source "MotionKeyAttributes.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final KEY_TYPE:I = 0x1

.field static final NAME:Ljava/lang/String; = "KeyAttribute"

.field private static final TAG:Ljava/lang/String; = "KeyAttributes"


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mElevation:F

.field private mPivotX:F

.field private mPivotY:F

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

.field private mVisibility:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 25
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/key/MotionKey;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 30
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@6
    const/4 v0, 0x0

    #@7
    .line 31
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mVisibility:I

    #@9
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@b
    .line 32
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mAlpha:F

    #@d
    .line 33
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mElevation:F

    #@f
    .line 34
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotation:F

    #@11
    .line 35
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    #@13
    .line 36
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    #@15
    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotX:F

    #@17
    .line 38
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotY:F

    #@19
    .line 39
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    #@1b
    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleX:F

    #@1d
    .line 41
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleY:F

    #@1f
    .line 42
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationX:F

    #@21
    .line 43
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationY:F

    #@23
    .line 44
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationZ:F

    #@25
    .line 45
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mProgress:F

    #@27
    const/4 v0, 0x1

    #@28
    .line 50
    iput v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mType:I

    #@2a
    .line 51
    new-instance v0, Ljava/util/HashMap;

    #@2c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2f
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCustom:Ljava/util/HashMap;

    #@31
    return-void
.end method

.method private getFloatValue(I)F
    .registers 3

    #@0
    const/16 v0, 0x64

    #@2
    if-eq p1, v0, :cond_34

    #@4
    packed-switch p1, :pswitch_data_38

    #@7
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@9
    return p1

    #@a
    .line 392
    :pswitch_a
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    #@c
    return p1

    #@d
    .line 390
    :pswitch_d
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mProgress:F

    #@f
    return p1

    #@10
    .line 388
    :pswitch_10
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotY:F

    #@12
    return p1

    #@13
    .line 386
    :pswitch_13
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotX:F

    #@15
    return p1

    #@16
    .line 384
    :pswitch_16
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleY:F

    #@18
    return p1

    #@19
    .line 382
    :pswitch_19
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleX:F

    #@1b
    return p1

    #@1c
    .line 380
    :pswitch_1c
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotation:F

    #@1e
    return p1

    #@1f
    .line 378
    :pswitch_1f
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    #@21
    return p1

    #@22
    .line 376
    :pswitch_22
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    #@24
    return p1

    #@25
    .line 374
    :pswitch_25
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mElevation:F

    #@27
    return p1

    #@28
    .line 372
    :pswitch_28
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationZ:F

    #@2a
    return p1

    #@2b
    .line 370
    :pswitch_2b
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationY:F

    #@2d
    return p1

    #@2e
    .line 368
    :pswitch_2e
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationX:F

    #@30
    return p1

    #@31
    .line 366
    :pswitch_31
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mAlpha:F

    #@33
    return p1

    #@34
    .line 394
    :cond_34
    iget p1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@36
    int-to-float p1, p1

    #@37
    return p1

    #@38
    :pswitch_data_38
    .packed-switch 0x12f
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .registers 8
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
    .line 108
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
    if-eqz v1, :cond_1f7

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/String;

    #@14
    .line 109
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@1a
    if-nez v2, :cond_1d

    #@1c
    goto :goto_8

    #@1d
    :cond_1d
    const-string v3, "CUSTOM"

    #@1f
    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@22
    move-result v3

    #@23
    const/4 v4, 0x7

    #@24
    if-eqz v3, :cond_3c

    #@26
    .line 115
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 116
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCustom:Ljava/util/HashMap;

    #@2c
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@32
    if-eqz v1, :cond_8

    #@34
    .line 118
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;

    #@36
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@38
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->setPoint(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    #@3b
    goto :goto_8

    #@3c
    .line 122
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@3f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@42
    move-result v3

    #@43
    const/4 v5, -0x1

    #@44
    sparse-switch v3, :sswitch_data_1f8

    #@47
    :goto_47
    move v4, v5

    #@48
    goto/16 :goto_f0

    #@4a
    :sswitch_4a
    const-string v3, "pathRotate"

    #@4c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v3

    #@50
    if-nez v3, :cond_53

    #@52
    goto :goto_47

    #@53
    :cond_53
    const/16 v4, 0xd

    #@55
    goto/16 :goto_f0

    #@57
    :sswitch_57
    const-string v3, "alpha"

    #@59
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v3

    #@5d
    if-nez v3, :cond_60

    #@5f
    goto :goto_47

    #@60
    :cond_60
    const/16 v4, 0xc

    #@62
    goto/16 :goto_f0

    #@64
    :sswitch_64
    const-string v3, "elevation"

    #@66
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v3

    #@6a
    if-nez v3, :cond_6d

    #@6c
    goto :goto_47

    #@6d
    :cond_6d
    const/16 v4, 0xb

    #@6f
    goto/16 :goto_f0

    #@71
    :sswitch_71
    const-string v3, "scaleY"

    #@73
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v3

    #@77
    if-nez v3, :cond_7a

    #@79
    goto :goto_47

    #@7a
    :cond_7a
    const/16 v4, 0xa

    #@7c
    goto/16 :goto_f0

    #@7e
    :sswitch_7e
    const-string v3, "scaleX"

    #@80
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v3

    #@84
    if-nez v3, :cond_87

    #@86
    goto :goto_47

    #@87
    :cond_87
    const/16 v4, 0x9

    #@89
    goto/16 :goto_f0

    #@8b
    :sswitch_8b
    const-string v3, "pivotY"

    #@8d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v3

    #@91
    if-nez v3, :cond_94

    #@93
    goto :goto_47

    #@94
    :cond_94
    const/16 v4, 0x8

    #@96
    goto :goto_f0

    #@97
    :sswitch_97
    const-string v3, "pivotX"

    #@99
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v3

    #@9d
    if-nez v3, :cond_f0

    #@9f
    goto :goto_47

    #@a0
    :sswitch_a0
    const-string v3, "progress"

    #@a2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a5
    move-result v3

    #@a6
    if-nez v3, :cond_a9

    #@a8
    goto :goto_47

    #@a9
    :cond_a9
    const/4 v4, 0x6

    #@aa
    goto :goto_f0

    #@ab
    :sswitch_ab
    const-string v3, "translationZ"

    #@ad
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v3

    #@b1
    if-nez v3, :cond_b4

    #@b3
    goto :goto_47

    #@b4
    :cond_b4
    const/4 v4, 0x5

    #@b5
    goto :goto_f0

    #@b6
    :sswitch_b6
    const-string v3, "translationY"

    #@b8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bb
    move-result v3

    #@bc
    if-nez v3, :cond_bf

    #@be
    goto :goto_47

    #@bf
    :cond_bf
    const/4 v4, 0x4

    #@c0
    goto :goto_f0

    #@c1
    :sswitch_c1
    const-string v3, "translationX"

    #@c3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c6
    move-result v3

    #@c7
    if-nez v3, :cond_cb

    #@c9
    goto/16 :goto_47

    #@cb
    :cond_cb
    const/4 v4, 0x3

    #@cc
    goto :goto_f0

    #@cd
    :sswitch_cd
    const-string v3, "rotationZ"

    #@cf
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d2
    move-result v3

    #@d3
    if-nez v3, :cond_d7

    #@d5
    goto/16 :goto_47

    #@d7
    :cond_d7
    const/4 v4, 0x2

    #@d8
    goto :goto_f0

    #@d9
    :sswitch_d9
    const-string v3, "rotationY"

    #@db
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@de
    move-result v3

    #@df
    if-nez v3, :cond_e3

    #@e1
    goto/16 :goto_47

    #@e3
    :cond_e3
    const/4 v4, 0x1

    #@e4
    goto :goto_f0

    #@e5
    :sswitch_e5
    const-string v3, "rotationX"

    #@e7
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ea
    move-result v3

    #@eb
    if-nez v3, :cond_ef

    #@ed
    goto/16 :goto_47

    #@ef
    :cond_ef
    const/4 v4, 0x0

    #@f0
    :cond_f0
    :goto_f0
    packed-switch v4, :pswitch_data_232

    #@f3
    .line 194
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f5
    new-instance v3, Ljava/lang/StringBuilder;

    #@f7
    const-string v4, "not supported by KeyAttributes "

    #@f9
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@fc
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v1

    #@100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@103
    move-result-object v1

    #@104
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@107
    goto/16 :goto_8

    #@109
    .line 159
    :pswitch_109
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    #@10b
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@10e
    move-result v1

    #@10f
    if-nez v1, :cond_8

    #@111
    .line 160
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@113
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    #@115
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@118
    goto/16 :goto_8

    #@11a
    .line 124
    :pswitch_11a
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mAlpha:F

    #@11c
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@11f
    move-result v1

    #@120
    if-nez v1, :cond_8

    #@122
    .line 125
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@124
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mAlpha:F

    #@126
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@129
    goto/16 :goto_8

    #@12b
    .line 129
    :pswitch_12b
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mElevation:F

    #@12d
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@130
    move-result v1

    #@131
    if-nez v1, :cond_8

    #@133
    .line 130
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@135
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mElevation:F

    #@137
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@13a
    goto/16 :goto_8

    #@13c
    .line 169
    :pswitch_13c
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleY:F

    #@13e
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@141
    move-result v1

    #@142
    if-nez v1, :cond_8

    #@144
    .line 170
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@146
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleY:F

    #@148
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@14b
    goto/16 :goto_8

    #@14d
    .line 164
    :pswitch_14d
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleX:F

    #@14f
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@152
    move-result v1

    #@153
    if-nez v1, :cond_8

    #@155
    .line 165
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@157
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleX:F

    #@159
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@15c
    goto/16 :goto_8

    #@15e
    .line 154
    :pswitch_15e
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    #@160
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@163
    move-result v1

    #@164
    if-nez v1, :cond_8

    #@166
    .line 155
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@168
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotY:F

    #@16a
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@16d
    goto/16 :goto_8

    #@16f
    .line 149
    :pswitch_16f
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    #@171
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@174
    move-result v1

    #@175
    if-nez v1, :cond_8

    #@177
    .line 150
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@179
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotX:F

    #@17b
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@17e
    goto/16 :goto_8

    #@180
    .line 189
    :pswitch_180
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mProgress:F

    #@182
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@185
    move-result v1

    #@186
    if-nez v1, :cond_8

    #@188
    .line 190
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@18a
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mProgress:F

    #@18c
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@18f
    goto/16 :goto_8

    #@191
    .line 184
    :pswitch_191
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationZ:F

    #@193
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@196
    move-result v1

    #@197
    if-nez v1, :cond_8

    #@199
    .line 185
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@19b
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationZ:F

    #@19d
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1a0
    goto/16 :goto_8

    #@1a2
    .line 179
    :pswitch_1a2
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationY:F

    #@1a4
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1a7
    move-result v1

    #@1a8
    if-nez v1, :cond_8

    #@1aa
    .line 180
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@1ac
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationY:F

    #@1ae
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1b1
    goto/16 :goto_8

    #@1b3
    .line 174
    :pswitch_1b3
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationX:F

    #@1b5
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1b8
    move-result v1

    #@1b9
    if-nez v1, :cond_8

    #@1bb
    .line 175
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@1bd
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationX:F

    #@1bf
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1c2
    goto/16 :goto_8

    #@1c4
    .line 134
    :pswitch_1c4
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotation:F

    #@1c6
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1c9
    move-result v1

    #@1ca
    if-nez v1, :cond_8

    #@1cc
    .line 135
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@1ce
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotation:F

    #@1d0
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1d3
    goto/16 :goto_8

    #@1d5
    .line 144
    :pswitch_1d5
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    #@1d7
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1da
    move-result v1

    #@1db
    if-nez v1, :cond_8

    #@1dd
    .line 145
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@1df
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    #@1e1
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1e4
    goto/16 :goto_8

    #@1e6
    .line 139
    :pswitch_1e6
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    #@1e8
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1eb
    move-result v1

    #@1ec
    if-nez v1, :cond_8

    #@1ee
    .line 140
    iget v1, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@1f0
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    #@1f2
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1f5
    goto/16 :goto_8

    #@1f7
    :cond_1f7
    return-void

    #@1f8
    :sswitch_data_1f8
    .sparse-switch
        -0x4a771f66 -> :sswitch_e5
        -0x4a771f65 -> :sswitch_d9
        -0x4a771f64 -> :sswitch_cd
        -0x490b9c39 -> :sswitch_c1
        -0x490b9c38 -> :sswitch_b6
        -0x490b9c37 -> :sswitch_ab
        -0x3bab3dd3 -> :sswitch_a0
        -0x3ae243aa -> :sswitch_97
        -0x3ae243a9 -> :sswitch_8b
        -0x3621dfb2 -> :sswitch_7e
        -0x3621dfb1 -> :sswitch_71
        -0x42d1a3 -> :sswitch_64
        0x589b15e -> :sswitch_57
        0x2fdfbde0 -> :sswitch_4a
    .end sparse-switch

    #@232
    :pswitch_data_232
    .packed-switch 0x0
        :pswitch_1e6
        :pswitch_1d5
        :pswitch_1c4
        :pswitch_1b3
        :pswitch_1a2
        :pswitch_191
        :pswitch_180
        :pswitch_16f
        :pswitch_15e
        :pswitch_14d
        :pswitch_13c
        :pswitch_12b
        :pswitch_11a
        :pswitch_109
    .end packed-switch
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
    .line 25
    invoke-virtual {p0}, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->clone()Landroidx/constraintlayout/core/motion/key/MotionKey;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    .line 57
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mAlpha:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_d

    #@8
    const-string v0, "alpha"

    #@a
    .line 58
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@d
    .line 60
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mElevation:F

    #@f
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1a

    #@15
    const-string v0, "elevation"

    #@17
    .line 61
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1a
    .line 63
    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotation:F

    #@1c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_27

    #@22
    const-string v0, "rotationZ"

    #@24
    .line 64
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@27
    .line 66
    :cond_27
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    #@29
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_34

    #@2f
    const-string v0, "rotationX"

    #@31
    .line 67
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@34
    .line 69
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    #@36
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_41

    #@3c
    const-string v0, "rotationY"

    #@3e
    .line 70
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@41
    .line 72
    :cond_41
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotX:F

    #@43
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_4e

    #@49
    const-string v0, "pivotX"

    #@4b
    .line 73
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4e
    .line 75
    :cond_4e
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotY:F

    #@50
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@53
    move-result v0

    #@54
    if-nez v0, :cond_5b

    #@56
    const-string v0, "pivotY"

    #@58
    .line 76
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5b
    .line 78
    :cond_5b
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationX:F

    #@5d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@60
    move-result v0

    #@61
    if-nez v0, :cond_68

    #@63
    const-string v0, "translationX"

    #@65
    .line 79
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@68
    .line 81
    :cond_68
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationY:F

    #@6a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@6d
    move-result v0

    #@6e
    if-nez v0, :cond_75

    #@70
    const-string v0, "translationY"

    #@72
    .line 82
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@75
    .line 84
    :cond_75
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationZ:F

    #@77
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@7a
    move-result v0

    #@7b
    if-nez v0, :cond_82

    #@7d
    const-string v0, "translationZ"

    #@7f
    .line 85
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@82
    .line 87
    :cond_82
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    #@84
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@87
    move-result v0

    #@88
    if-nez v0, :cond_8f

    #@8a
    const-string v0, "pathRotate"

    #@8c
    .line 88
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@8f
    .line 90
    :cond_8f
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleX:F

    #@91
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@94
    move-result v0

    #@95
    if-nez v0, :cond_9c

    #@97
    const-string v0, "scaleX"

    #@99
    .line 91
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@9c
    .line 93
    :cond_9c
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleY:F

    #@9e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@a1
    move-result v0

    #@a2
    if-nez v0, :cond_a9

    #@a4
    const-string v0, "scaleY"

    #@a6
    .line 94
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@a9
    .line 96
    :cond_a9
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mProgress:F

    #@ab
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@ae
    move-result v0

    #@af
    if-nez v0, :cond_b6

    #@b1
    const-string v0, "progress"

    #@b3
    .line 97
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@b6
    .line 99
    :cond_b6
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCustom:Ljava/util/HashMap;

    #@b8
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@bb
    move-result v0

    #@bc
    if-lez v0, :cond_e7

    #@be
    .line 100
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCustom:Ljava/util/HashMap;

    #@c0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@c3
    move-result-object v0

    #@c4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c7
    move-result-object v0

    #@c8
    :goto_c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@cb
    move-result v1

    #@cc
    if-eqz v1, :cond_e7

    #@ce
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d1
    move-result-object v1

    #@d2
    check-cast v1, Ljava/lang/String;

    #@d4
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    #@d6
    const-string v3, "CUSTOM,"

    #@d8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@db
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v1

    #@df
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v1

    #@e3
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@e6
    goto :goto_c8

    #@e7
    :cond_e7
    return-void
.end method

.method public getCurveFit()I
    .registers 2

    #@0
    .line 348
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@2
    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .registers 2

    #@0
    .line 344
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->getId(Ljava/lang/String;)I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public printAttributes()V
    .registers 7

    #@0
    .line 352
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 353
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->getAttributeNames(Ljava/util/HashSet;)V

    #@8
    .line 355
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    const-string v3, " ------------- "

    #@e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    iget v3, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string v3, " -------------"

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24
    const/4 v1, 0x0

    #@25
    new-array v2, v1, [Ljava/lang/String;

    #@27
    .line 356
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, [Ljava/lang/String;

    #@2d
    .line 357
    :goto_2d
    array-length v2, v0

    #@2e
    if-ge v1, v2, :cond_5b

    #@30
    .line 358
    aget-object v2, v0, v1

    #@32
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->getId(Ljava/lang/String;)I

    #@35
    move-result v2

    #@36
    .line 359
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@38
    new-instance v4, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    aget-object v5, v0, v1

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    const-string v5, ":"

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-direct {p0, v2}, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->getFloatValue(I)F

    #@4c
    move-result v2

    #@4d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_2d

    #@5b
    :cond_5b
    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .registers 6
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
    .line 278
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mAlpha:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_13

    #@8
    .line 279
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v0

    #@e
    const-string v1, "alpha"

    #@10
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 281
    :cond_13
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mElevation:F

    #@15
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_26

    #@1b
    .line 282
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@1d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v0

    #@21
    const-string v1, "elevation"

    #@23
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 284
    :cond_26
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotation:F

    #@28
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@2b
    move-result v0

    #@2c
    if-nez v0, :cond_39

    #@2e
    .line 285
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v0

    #@34
    const-string v1, "rotationZ"

    #@36
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    .line 287
    :cond_39
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    #@3b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@3e
    move-result v0

    #@3f
    if-nez v0, :cond_4c

    #@41
    .line 288
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v0

    #@47
    const-string v1, "rotationX"

    #@49
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    .line 290
    :cond_4c
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    #@4e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@51
    move-result v0

    #@52
    if-nez v0, :cond_5f

    #@54
    .line 291
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59
    move-result-object v0

    #@5a
    const-string v1, "rotationY"

    #@5c
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    .line 293
    :cond_5f
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotX:F

    #@61
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@64
    move-result v0

    #@65
    if-nez v0, :cond_72

    #@67
    .line 294
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6c
    move-result-object v0

    #@6d
    const-string v1, "pivotX"

    #@6f
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    .line 296
    :cond_72
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotY:F

    #@74
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@77
    move-result v0

    #@78
    if-nez v0, :cond_85

    #@7a
    .line 297
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@7c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7f
    move-result-object v0

    #@80
    const-string v1, "pivotY"

    #@82
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    .line 299
    :cond_85
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationX:F

    #@87
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@8a
    move-result v0

    #@8b
    if-nez v0, :cond_98

    #@8d
    .line 300
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@8f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@92
    move-result-object v0

    #@93
    const-string v1, "translationX"

    #@95
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    .line 302
    :cond_98
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationY:F

    #@9a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@9d
    move-result v0

    #@9e
    if-nez v0, :cond_ab

    #@a0
    .line 303
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@a2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a5
    move-result-object v0

    #@a6
    const-string v1, "translationY"

    #@a8
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ab
    .line 305
    :cond_ab
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationZ:F

    #@ad
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@b0
    move-result v0

    #@b1
    if-nez v0, :cond_be

    #@b3
    .line 306
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@b5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b8
    move-result-object v0

    #@b9
    const-string v1, "translationZ"

    #@bb
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@be
    .line 308
    :cond_be
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    #@c0
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@c3
    move-result v0

    #@c4
    if-nez v0, :cond_d1

    #@c6
    .line 309
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@c8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cb
    move-result-object v0

    #@cc
    const-string v1, "pathRotate"

    #@ce
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d1
    .line 311
    :cond_d1
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleX:F

    #@d3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@d6
    move-result v0

    #@d7
    if-nez v0, :cond_e4

    #@d9
    .line 312
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@db
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@de
    move-result-object v0

    #@df
    const-string v1, "scaleX"

    #@e1
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e4
    .line 314
    :cond_e4
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleY:F

    #@e6
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@e9
    move-result v0

    #@ea
    if-nez v0, :cond_f7

    #@ec
    .line 315
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@ee
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f1
    move-result-object v0

    #@f2
    const-string v1, "scaleY"

    #@f4
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f7
    .line 317
    :cond_f7
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mProgress:F

    #@f9
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@fc
    move-result v0

    #@fd
    if-nez v0, :cond_10a

    #@ff
    .line 318
    iget v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@104
    move-result-object v0

    #@105
    const-string v1, "progress"

    #@107
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10a
    .line 320
    :cond_10a
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCustom:Ljava/util/HashMap;

    #@10c
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@10f
    move-result v0

    #@110
    if-lez v0, :cond_141

    #@112
    .line 321
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCustom:Ljava/util/HashMap;

    #@114
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@117
    move-result-object v0

    #@118
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@11b
    move-result-object v0

    #@11c
    :goto_11c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11f
    move-result v1

    #@120
    if-eqz v1, :cond_141

    #@122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@125
    move-result-object v1

    #@126
    check-cast v1, Ljava/lang/String;

    #@128
    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    #@12a
    const-string v3, "CUSTOM,"

    #@12c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v1

    #@133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@136
    move-result-object v1

    #@137
    iget v2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13c
    move-result-object v2

    #@13d
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@140
    goto :goto_11c

    #@141
    :cond_141
    return-void
.end method

.method public setValue(IF)Z
    .registers 4

    #@0
    const/16 v0, 0x64

    #@2
    if-eq p1, v0, :cond_36

    #@4
    packed-switch p1, :pswitch_data_3a

    #@7
    .line 272
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(IF)Z

    #@a
    move-result p1

    #@b
    return p1

    #@c
    .line 266
    :pswitch_c
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    #@e
    goto :goto_38

    #@f
    .line 263
    :pswitch_f
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mProgress:F

    #@11
    goto :goto_38

    #@12
    .line 260
    :pswitch_12
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotY:F

    #@14
    goto :goto_38

    #@15
    .line 257
    :pswitch_15
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mPivotX:F

    #@17
    goto :goto_38

    #@18
    .line 254
    :pswitch_18
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleY:F

    #@1a
    goto :goto_38

    #@1b
    .line 251
    :pswitch_1b
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mScaleX:F

    #@1d
    goto :goto_38

    #@1e
    .line 248
    :pswitch_1e
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotation:F

    #@20
    goto :goto_38

    #@21
    .line 245
    :pswitch_21
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationY:F

    #@23
    goto :goto_38

    #@24
    .line 242
    :pswitch_24
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mRotationX:F

    #@26
    goto :goto_38

    #@27
    .line 239
    :pswitch_27
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mElevation:F

    #@29
    goto :goto_38

    #@2a
    .line 236
    :pswitch_2a
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationZ:F

    #@2c
    goto :goto_38

    #@2d
    .line 233
    :pswitch_2d
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationY:F

    #@2f
    goto :goto_38

    #@30
    .line 230
    :pswitch_30
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTranslationX:F

    #@32
    goto :goto_38

    #@33
    .line 227
    :pswitch_33
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mAlpha:F

    #@35
    goto :goto_38

    #@36
    .line 269
    :cond_36
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionPathRotate:F

    #@38
    :goto_38
    const/4 p1, 0x1

    #@39
    return p1

    #@3a
    :pswitch_data_3a
    .packed-switch 0x12f
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method public setValue(II)Z
    .registers 4

    #@0
    const/16 v0, 0x64

    #@2
    if-eq p1, v0, :cond_1d

    #@4
    const/16 v0, 0x12d

    #@6
    if-eq p1, v0, :cond_1a

    #@8
    const/16 v0, 0x12e

    #@a
    if-eq p1, v0, :cond_17

    #@c
    .line 217
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->setValue(II)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_1f

    #@12
    .line 218
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(II)Z

    #@15
    move-result p1

    #@16
    return p1

    #@17
    .line 208
    :cond_17
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mVisibility:I

    #@19
    goto :goto_1f

    #@1a
    .line 211
    :cond_1a
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mCurveFit:I

    #@1c
    goto :goto_1f

    #@1d
    .line 214
    :cond_1d
    iput p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mFramePosition:I

    #@1f
    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    #@20
    return p1
.end method

.method public setValue(ILjava/lang/String;)Z
    .registers 4

    #@0
    const/16 v0, 0x65

    #@2
    if-eq p1, v0, :cond_10

    #@4
    const/16 v0, 0x13d

    #@6
    if-eq p1, v0, :cond_d

    #@8
    .line 337
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/motion/key/MotionKey;->setValue(ILjava/lang/String;)Z

    #@b
    move-result p1

    #@c
    return p1

    #@d
    .line 330
    :cond_d
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTransitionEasing:Ljava/lang/String;

    #@f
    goto :goto_12

    #@10
    .line 334
    :cond_10
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/key/MotionKeyAttributes;->mTargetString:Ljava/lang/String;

    #@12
    :goto_12
    const/4 p1, 0x1

    #@13
    return p1
.end method
