.class public Landroidx/constraintlayout/motion/widget/KeyAttributes;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "KeyAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;
    }
.end annotation


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

.field private mVisibility:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 43
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 48
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@6
    const/4 v0, 0x0

    #@7
    .line 49
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mVisibility:Z

    #@9
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@b
    .line 50
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    #@d
    .line 51
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    #@f
    .line 52
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    #@11
    .line 53
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    #@13
    .line 54
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    #@15
    .line 55
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    #@17
    .line 56
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    #@19
    .line 57
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    #@1b
    .line 58
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    #@1d
    .line 59
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    #@1f
    .line 60
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    #@21
    .line 61
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    #@23
    .line 62
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    #@25
    .line 63
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    #@27
    const/4 v0, 0x1

    #@28
    .line 67
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mType:I

    #@2a
    .line 68
    new-instance v0, Ljava/util/HashMap;

    #@2c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@2f
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    #@31
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    #@2
    return p0
.end method

.method static synthetic access$002(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    #@2
    return p1
.end method

.method static synthetic access$100(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    #@2
    return p0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    #@2
    return p0
.end method

.method static synthetic access$1002(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    #@2
    return p1
.end method

.method static synthetic access$102(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    #@2
    return p1
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    #@2
    return p0
.end method

.method static synthetic access$1102(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    #@2
    return p1
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    #@2
    return p0
.end method

.method static synthetic access$1202(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    #@2
    return p1
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    #@2
    return p0
.end method

.method static synthetic access$1302(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    #@2
    return p1
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    #@2
    return p0
.end method

.method static synthetic access$1402(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    #@2
    return p1
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    #@2
    return p0
.end method

.method static synthetic access$1502(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    #@2
    return p1
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    #@2
    return p0
.end method

.method static synthetic access$202(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    #@2
    return p1
.end method

.method static synthetic access$300(Landroidx/constraintlayout/motion/widget/KeyAttributes;)I
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@2
    return p0
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/KeyAttributes;I)I
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@2
    return p1
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    #@2
    return p0
.end method

.method static synthetic access$402(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    #@2
    return p1
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    #@2
    return p0
.end method

.method static synthetic access$502(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    #@2
    return p1
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    #@2
    return p0
.end method

.method static synthetic access$602(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    #@2
    return p1
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    #@2
    return p0
.end method

.method static synthetic access$702(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    #@2
    return p1
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/KeyAttributes;)F
    .registers 1

    #@0
    .line 43
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    #@2
    return p0
.end method

.method static synthetic access$802(Landroidx/constraintlayout/motion/widget/KeyAttributes;F)F
    .registers 2

    #@0
    .line 43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    #@2
    return p1
.end method

.method static synthetic access$902(Landroidx/constraintlayout/motion/widget/KeyAttributes;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    .line 43
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionEasing:Ljava/lang/String;

    #@2
    return-object p1
.end method


# virtual methods
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
    .line 194
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
    if-eqz v1, :cond_1e3

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/String;

    #@14
    .line 195
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
    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@22
    move-result v3

    #@23
    const/4 v4, 0x7

    #@24
    if-eqz v3, :cond_3c

    #@26
    .line 200
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 201
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    #@2c
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@32
    if-eqz v1, :cond_8

    #@34
    .line 203
    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    #@36
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@38
    invoke-virtual {v2, v3, v1}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;)V

    #@3b
    goto :goto_8

    #@3c
    .line 207
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@3f
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@42
    move-result v3

    #@43
    const/4 v5, -0x1

    #@44
    sparse-switch v3, :sswitch_data_1e4

    #@47
    :goto_47
    move v4, v5

    #@48
    goto/16 :goto_f0

    #@4a
    :sswitch_4a
    const-string v3, "alpha"

    #@4c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v1

    #@50
    if-nez v1, :cond_53

    #@52
    goto :goto_47

    #@53
    :cond_53
    const/16 v4, 0xd

    #@55
    goto/16 :goto_f0

    #@57
    :sswitch_57
    const-string v3, "transitionPathRotate"

    #@59
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v1

    #@5d
    if-nez v1, :cond_60

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
    move-result v1

    #@6a
    if-nez v1, :cond_6d

    #@6c
    goto :goto_47

    #@6d
    :cond_6d
    const/16 v4, 0xb

    #@6f
    goto/16 :goto_f0

    #@71
    :sswitch_71
    const-string v3, "rotation"

    #@73
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v1

    #@77
    if-nez v1, :cond_7a

    #@79
    goto :goto_47

    #@7a
    :cond_7a
    const/16 v4, 0xa

    #@7c
    goto/16 :goto_f0

    #@7e
    :sswitch_7e
    const-string v3, "transformPivotY"

    #@80
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v1

    #@84
    if-nez v1, :cond_87

    #@86
    goto :goto_47

    #@87
    :cond_87
    const/16 v4, 0x9

    #@89
    goto/16 :goto_f0

    #@8b
    :sswitch_8b
    const-string v3, "transformPivotX"

    #@8d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v1

    #@91
    if-nez v1, :cond_94

    #@93
    goto :goto_47

    #@94
    :cond_94
    const/16 v4, 0x8

    #@96
    goto :goto_f0

    #@97
    :sswitch_97
    const-string v3, "scaleY"

    #@99
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v1

    #@9d
    if-nez v1, :cond_f0

    #@9f
    goto :goto_47

    #@a0
    :sswitch_a0
    const-string v3, "scaleX"

    #@a2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a5
    move-result v1

    #@a6
    if-nez v1, :cond_a9

    #@a8
    goto :goto_47

    #@a9
    :cond_a9
    const/4 v4, 0x6

    #@aa
    goto :goto_f0

    #@ab
    :sswitch_ab
    const-string v3, "progress"

    #@ad
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v1

    #@b1
    if-nez v1, :cond_b4

    #@b3
    goto :goto_47

    #@b4
    :cond_b4
    const/4 v4, 0x5

    #@b5
    goto :goto_f0

    #@b6
    :sswitch_b6
    const-string v3, "translationZ"

    #@b8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bb
    move-result v1

    #@bc
    if-nez v1, :cond_bf

    #@be
    goto :goto_47

    #@bf
    :cond_bf
    const/4 v4, 0x4

    #@c0
    goto :goto_f0

    #@c1
    :sswitch_c1
    const-string v3, "translationY"

    #@c3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c6
    move-result v1

    #@c7
    if-nez v1, :cond_cb

    #@c9
    goto/16 :goto_47

    #@cb
    :cond_cb
    const/4 v4, 0x3

    #@cc
    goto :goto_f0

    #@cd
    :sswitch_cd
    const-string v3, "translationX"

    #@cf
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d2
    move-result v1

    #@d3
    if-nez v1, :cond_d7

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
    move-result v1

    #@df
    if-nez v1, :cond_e3

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
    move-result v1

    #@eb
    if-nez v1, :cond_ef

    #@ed
    goto/16 :goto_47

    #@ef
    :cond_ef
    const/4 v4, 0x0

    #@f0
    :cond_f0
    :goto_f0
    packed-switch v4, :pswitch_data_21e

    #@f3
    goto/16 :goto_8

    #@f5
    .line 209
    :pswitch_f5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    #@f7
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@fa
    move-result v1

    #@fb
    if-nez v1, :cond_8

    #@fd
    .line 210
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@ff
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    #@101
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@104
    goto/16 :goto_8

    #@106
    .line 244
    :pswitch_106
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    #@108
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@10b
    move-result v1

    #@10c
    if-nez v1, :cond_8

    #@10e
    .line 245
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@110
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    #@112
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@115
    goto/16 :goto_8

    #@117
    .line 214
    :pswitch_117
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    #@119
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@11c
    move-result v1

    #@11d
    if-nez v1, :cond_8

    #@11f
    .line 215
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@121
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    #@123
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@126
    goto/16 :goto_8

    #@128
    .line 219
    :pswitch_128
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    #@12a
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@12d
    move-result v1

    #@12e
    if-nez v1, :cond_8

    #@130
    .line 220
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@132
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    #@134
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@137
    goto/16 :goto_8

    #@139
    .line 239
    :pswitch_139
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    #@13b
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@13e
    move-result v1

    #@13f
    if-nez v1, :cond_8

    #@141
    .line 240
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@143
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    #@145
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@148
    goto/16 :goto_8

    #@14a
    .line 234
    :pswitch_14a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    #@14c
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@14f
    move-result v1

    #@150
    if-nez v1, :cond_8

    #@152
    .line 235
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@154
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    #@156
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@159
    goto/16 :goto_8

    #@15b
    .line 254
    :pswitch_15b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    #@15d
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@160
    move-result v1

    #@161
    if-nez v1, :cond_8

    #@163
    .line 255
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@165
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    #@167
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@16a
    goto/16 :goto_8

    #@16c
    .line 249
    :pswitch_16c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    #@16e
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@171
    move-result v1

    #@172
    if-nez v1, :cond_8

    #@174
    .line 250
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@176
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    #@178
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@17b
    goto/16 :goto_8

    #@17d
    .line 274
    :pswitch_17d
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    #@17f
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@182
    move-result v1

    #@183
    if-nez v1, :cond_8

    #@185
    .line 275
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@187
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    #@189
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@18c
    goto/16 :goto_8

    #@18e
    .line 269
    :pswitch_18e
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    #@190
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@193
    move-result v1

    #@194
    if-nez v1, :cond_8

    #@196
    .line 270
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@198
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    #@19a
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@19d
    goto/16 :goto_8

    #@19f
    .line 264
    :pswitch_19f
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    #@1a1
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1a4
    move-result v1

    #@1a5
    if-nez v1, :cond_8

    #@1a7
    .line 265
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@1a9
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    #@1ab
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1ae
    goto/16 :goto_8

    #@1b0
    .line 259
    :pswitch_1b0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    #@1b2
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1b5
    move-result v1

    #@1b6
    if-nez v1, :cond_8

    #@1b8
    .line 260
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@1ba
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    #@1bc
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1bf
    goto/16 :goto_8

    #@1c1
    .line 229
    :pswitch_1c1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    #@1c3
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1c6
    move-result v1

    #@1c7
    if-nez v1, :cond_8

    #@1c9
    .line 230
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@1cb
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    #@1cd
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1d0
    goto/16 :goto_8

    #@1d2
    .line 224
    :pswitch_1d2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    #@1d4
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1d7
    move-result v1

    #@1d8
    if-nez v1, :cond_8

    #@1da
    .line 225
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mFramePosition:I

    #@1dc
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    #@1de
    invoke-virtual {v2, v1, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1e1
    goto/16 :goto_8

    #@1e3
    :cond_1e3
    return-void

    #@1e4
    :sswitch_data_1e4
    .sparse-switch
        -0x4a771f66 -> :sswitch_e5
        -0x4a771f65 -> :sswitch_d9
        -0x490b9c39 -> :sswitch_cd
        -0x490b9c38 -> :sswitch_c1
        -0x490b9c37 -> :sswitch_b6
        -0x3bab3dd3 -> :sswitch_ab
        -0x3621dfb2 -> :sswitch_a0
        -0x3621dfb1 -> :sswitch_97
        -0x2d5a2d1e -> :sswitch_8b
        -0x2d5a2d1d -> :sswitch_7e
        -0x266f082 -> :sswitch_71
        -0x42d1a3 -> :sswitch_64
        0x2382115 -> :sswitch_57
        0x589b15e -> :sswitch_4a
    .end sparse-switch

    #@21e
    :pswitch_data_21e
    .packed-switch 0x0
        :pswitch_1d2
        :pswitch_1c1
        :pswitch_1b0
        :pswitch_19f
        :pswitch_18e
        :pswitch_17d
        :pswitch_16c
        :pswitch_15b
        :pswitch_14a
        :pswitch_139
        :pswitch_128
        :pswitch_117
        :pswitch_106
        :pswitch_f5
    .end packed-switch
.end method

.method public clone()Landroidx/constraintlayout/motion/widget/Key;
    .registers 2

    #@0
    .line 489
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

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
    .line 43
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->clone()Landroidx/constraintlayout/motion/widget/Key;

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
    .line 467
    invoke-super {p0, p1}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    #@3
    .line 468
    check-cast p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    #@5
    .line 469
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@7
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@9
    .line 470
    iget-boolean v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mVisibility:Z

    #@b
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mVisibility:Z

    #@d
    .line 471
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    #@f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    #@11
    .line 472
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    #@13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    #@15
    .line 473
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    #@17
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    #@19
    .line 474
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    #@1b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    #@1d
    .line 475
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    #@1f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    #@21
    .line 476
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    #@23
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    #@25
    .line 477
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    #@27
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    #@29
    .line 478
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    #@2b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    #@2d
    .line 479
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    #@2f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    #@31
    .line 480
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    #@33
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    #@35
    .line 481
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    #@37
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    #@39
    .line 482
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    #@3b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    #@3d
    .line 483
    iget v0, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    #@3f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    #@41
    .line 484
    iget p1, p1, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    #@43
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    #@45
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
    .line 89
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_d

    #@8
    const-string v0, "alpha"

    #@a
    .line 90
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@d
    .line 92
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    #@f
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1a

    #@15
    const-string v0, "elevation"

    #@17
    .line 93
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1a
    .line 95
    :cond_1a
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    #@1c
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_27

    #@22
    const-string v0, "rotation"

    #@24
    .line 96
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@27
    .line 98
    :cond_27
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    #@29
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_34

    #@2f
    const-string v0, "rotationX"

    #@31
    .line 99
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@34
    .line 101
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    #@36
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_41

    #@3c
    const-string v0, "rotationY"

    #@3e
    .line 102
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@41
    .line 104
    :cond_41
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    #@43
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_4e

    #@49
    const-string v0, "transformPivotX"

    #@4b
    .line 105
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4e
    .line 107
    :cond_4e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    #@50
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@53
    move-result v0

    #@54
    if-nez v0, :cond_5b

    #@56
    const-string v0, "transformPivotY"

    #@58
    .line 108
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@5b
    .line 110
    :cond_5b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    #@5d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@60
    move-result v0

    #@61
    if-nez v0, :cond_68

    #@63
    const-string v0, "translationX"

    #@65
    .line 111
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@68
    .line 113
    :cond_68
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    #@6a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@6d
    move-result v0

    #@6e
    if-nez v0, :cond_75

    #@70
    const-string v0, "translationY"

    #@72
    .line 114
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@75
    .line 116
    :cond_75
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    #@77
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@7a
    move-result v0

    #@7b
    if-nez v0, :cond_82

    #@7d
    const-string v0, "translationZ"

    #@7f
    .line 117
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@82
    .line 119
    :cond_82
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    #@84
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@87
    move-result v0

    #@88
    if-nez v0, :cond_8f

    #@8a
    const-string v0, "transitionPathRotate"

    #@8c
    .line 120
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@8f
    .line 122
    :cond_8f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    #@91
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@94
    move-result v0

    #@95
    if-nez v0, :cond_9c

    #@97
    const-string v0, "scaleX"

    #@99
    .line 123
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@9c
    .line 125
    :cond_9c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    #@9e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@a1
    move-result v0

    #@a2
    if-nez v0, :cond_a9

    #@a4
    const-string v0, "scaleY"

    #@a6
    .line 126
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@a9
    .line 128
    :cond_a9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    #@ab
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@ae
    move-result v0

    #@af
    if-nez v0, :cond_b6

    #@b1
    const-string v0, "progress"

    #@b3
    .line 129
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@b6
    .line 131
    :cond_b6
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    #@b8
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@bb
    move-result v0

    #@bc
    if-lez v0, :cond_e7

    #@be
    .line 132
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

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
    .line 133
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

.method getCurveFit()I
    .registers 2

    #@0
    .line 83
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@2
    return v0
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
    .line 73
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyAttribute:[I

    #@2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    .line 74
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$Loader;->read(Landroidx/constraintlayout/motion/widget/KeyAttributes;Landroid/content/res/TypedArray;)V

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
    .line 139
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_6

    #@5
    return-void

    #@6
    .line 142
    :cond_6
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    #@8
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_19

    #@e
    .line 143
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v0

    #@14
    const-string v1, "alpha"

    #@16
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    .line 145
    :cond_19
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    #@1b
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@1e
    move-result v0

    #@1f
    if-nez v0, :cond_2c

    #@21
    .line 146
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v0

    #@27
    const-string v1, "elevation"

    #@29
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 148
    :cond_2c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    #@2e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@31
    move-result v0

    #@32
    if-nez v0, :cond_3f

    #@34
    .line 149
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v0

    #@3a
    const-string v1, "rotation"

    #@3c
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    .line 151
    :cond_3f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    #@41
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@44
    move-result v0

    #@45
    if-nez v0, :cond_52

    #@47
    .line 152
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v0

    #@4d
    const-string v1, "rotationX"

    #@4f
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 154
    :cond_52
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    #@54
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@57
    move-result v0

    #@58
    if-nez v0, :cond_65

    #@5a
    .line 155
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@5c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5f
    move-result-object v0

    #@60
    const-string v1, "rotationY"

    #@62
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    .line 157
    :cond_65
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    #@67
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@6a
    move-result v0

    #@6b
    if-nez v0, :cond_78

    #@6d
    .line 158
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@6f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v0

    #@73
    const-string v1, "transformPivotX"

    #@75
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    .line 160
    :cond_78
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    #@7a
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@7d
    move-result v0

    #@7e
    if-nez v0, :cond_8b

    #@80
    .line 161
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@85
    move-result-object v0

    #@86
    const-string v1, "transformPivotY"

    #@88
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    .line 163
    :cond_8b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    #@8d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@90
    move-result v0

    #@91
    if-nez v0, :cond_9e

    #@93
    .line 164
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@98
    move-result-object v0

    #@99
    const-string v1, "translationX"

    #@9b
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    .line 166
    :cond_9e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    #@a0
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@a3
    move-result v0

    #@a4
    if-nez v0, :cond_b1

    #@a6
    .line 167
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@a8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ab
    move-result-object v0

    #@ac
    const-string v1, "translationY"

    #@ae
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b1
    .line 169
    :cond_b1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    #@b3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@b6
    move-result v0

    #@b7
    if-nez v0, :cond_c4

    #@b9
    .line 170
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@bb
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@be
    move-result-object v0

    #@bf
    const-string v1, "translationZ"

    #@c1
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c4
    .line 172
    :cond_c4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    #@c6
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@c9
    move-result v0

    #@ca
    if-nez v0, :cond_d7

    #@cc
    .line 173
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@ce
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d1
    move-result-object v0

    #@d2
    const-string v1, "transitionPathRotate"

    #@d4
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d7
    .line 175
    :cond_d7
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    #@d9
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@dc
    move-result v0

    #@dd
    if-nez v0, :cond_ea

    #@df
    .line 176
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@e1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e4
    move-result-object v0

    #@e5
    const-string v1, "scaleX"

    #@e7
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    .line 178
    :cond_ea
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    #@ec
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@ef
    move-result v0

    #@f0
    if-nez v0, :cond_fd

    #@f2
    .line 179
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@f4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f7
    move-result-object v0

    #@f8
    const-string v1, "scaleY"

    #@fa
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fd
    .line 181
    :cond_fd
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    #@ff
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@102
    move-result v0

    #@103
    if-nez v0, :cond_110

    #@105
    .line 182
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10a
    move-result-object v0

    #@10b
    const-string v1, "progress"

    #@10d
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@110
    .line 184
    :cond_110
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    #@112
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@115
    move-result v0

    #@116
    if-lez v0, :cond_147

    #@118
    .line 185
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    #@11a
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@11d
    move-result-object v0

    #@11e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@121
    move-result-object v0

    #@122
    :goto_122
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@125
    move-result v1

    #@126
    if-eqz v1, :cond_147

    #@128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12b
    move-result-object v1

    #@12c
    check-cast v1, Ljava/lang/String;

    #@12e
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    #@130
    const-string v3, "CUSTOM,"

    #@132
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@135
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v1

    #@139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13c
    move-result-object v1

    #@13d
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@13f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@142
    move-result-object v2

    #@143
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@146
    goto :goto_122

    #@147
    :cond_147
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
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
    .line 288
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_160

    #@b
    goto/16 :goto_e2

    #@d
    :sswitch_d
    const-string v0, "visibility"

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result p1

    #@13
    if-nez p1, :cond_17

    #@15
    goto/16 :goto_e2

    #@17
    :cond_17
    const/16 v1, 0x10

    #@19
    goto/16 :goto_e2

    #@1b
    :sswitch_1b
    const-string v0, "curveFit"

    #@1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result p1

    #@21
    if-nez p1, :cond_25

    #@23
    goto/16 :goto_e2

    #@25
    :cond_25
    const/16 v1, 0xf

    #@27
    goto/16 :goto_e2

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
    goto/16 :goto_e2

    #@33
    :cond_33
    const/16 v1, 0xe

    #@35
    goto/16 :goto_e2

    #@37
    :sswitch_37
    const-string v0, "transitionPathRotate"

    #@39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result p1

    #@3d
    if-nez p1, :cond_41

    #@3f
    goto/16 :goto_e2

    #@41
    :cond_41
    const/16 v1, 0xd

    #@43
    goto/16 :goto_e2

    #@45
    :sswitch_45
    const-string v0, "elevation"

    #@47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result p1

    #@4b
    if-nez p1, :cond_4f

    #@4d
    goto/16 :goto_e2

    #@4f
    :cond_4f
    const/16 v1, 0xc

    #@51
    goto/16 :goto_e2

    #@53
    :sswitch_53
    const-string v0, "rotation"

    #@55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result p1

    #@59
    if-nez p1, :cond_5d

    #@5b
    goto/16 :goto_e2

    #@5d
    :cond_5d
    const/16 v1, 0xb

    #@5f
    goto/16 :goto_e2

    #@61
    :sswitch_61
    const-string v0, "transformPivotY"

    #@63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@66
    move-result p1

    #@67
    if-nez p1, :cond_6b

    #@69
    goto/16 :goto_e2

    #@6b
    :cond_6b
    const/16 v1, 0xa

    #@6d
    goto/16 :goto_e2

    #@6f
    :sswitch_6f
    const-string v0, "transformPivotX"

    #@71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@74
    move-result p1

    #@75
    if-nez p1, :cond_79

    #@77
    goto/16 :goto_e2

    #@79
    :cond_79
    const/16 v1, 0x9

    #@7b
    goto/16 :goto_e2

    #@7d
    :sswitch_7d
    const-string v0, "scaleY"

    #@7f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result p1

    #@83
    if-nez p1, :cond_87

    #@85
    goto/16 :goto_e2

    #@87
    :cond_87
    const/16 v1, 0x8

    #@89
    goto/16 :goto_e2

    #@8b
    :sswitch_8b
    const-string v0, "scaleX"

    #@8d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result p1

    #@91
    if-nez p1, :cond_94

    #@93
    goto :goto_e2

    #@94
    :cond_94
    const/4 v1, 0x7

    #@95
    goto :goto_e2

    #@96
    :sswitch_96
    const-string v0, "translationZ"

    #@98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result p1

    #@9c
    if-nez p1, :cond_9f

    #@9e
    goto :goto_e2

    #@9f
    :cond_9f
    const/4 v1, 0x6

    #@a0
    goto :goto_e2

    #@a1
    :sswitch_a1
    const-string v0, "translationY"

    #@a3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result p1

    #@a7
    if-nez p1, :cond_aa

    #@a9
    goto :goto_e2

    #@aa
    :cond_aa
    const/4 v1, 0x5

    #@ab
    goto :goto_e2

    #@ac
    :sswitch_ac
    const-string v0, "translationX"

    #@ae
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result p1

    #@b2
    if-nez p1, :cond_b5

    #@b4
    goto :goto_e2

    #@b5
    :cond_b5
    const/4 v1, 0x4

    #@b6
    goto :goto_e2

    #@b7
    :sswitch_b7
    const-string v0, "rotationY"

    #@b9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result p1

    #@bd
    if-nez p1, :cond_c0

    #@bf
    goto :goto_e2

    #@c0
    :cond_c0
    const/4 v1, 0x3

    #@c1
    goto :goto_e2

    #@c2
    :sswitch_c2
    const-string v0, "rotationX"

    #@c4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c7
    move-result p1

    #@c8
    if-nez p1, :cond_cb

    #@ca
    goto :goto_e2

    #@cb
    :cond_cb
    const/4 v1, 0x2

    #@cc
    goto :goto_e2

    #@cd
    :sswitch_cd
    const-string v0, "transitionEasing"

    #@cf
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d2
    move-result p1

    #@d3
    if-nez p1, :cond_d6

    #@d5
    goto :goto_e2

    #@d6
    :cond_d6
    const/4 v1, 0x1

    #@d7
    goto :goto_e2

    #@d8
    :sswitch_d8
    const-string v0, "motionProgress"

    #@da
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dd
    move-result p1

    #@de
    if-nez p1, :cond_e1

    #@e0
    goto :goto_e2

    #@e1
    :cond_e1
    const/4 v1, 0x0

    #@e2
    :goto_e2
    packed-switch v1, :pswitch_data_1a6

    #@e5
    goto/16 :goto_15f

    #@e7
    .line 326
    :pswitch_e7
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toBoolean(Ljava/lang/Object;)Z

    #@ea
    move-result p1

    #@eb
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mVisibility:Z

    #@ed
    goto/16 :goto_15f

    #@ef
    .line 293
    :pswitch_ef
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toInt(Ljava/lang/Object;)I

    #@f2
    move-result p1

    #@f3
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mCurveFit:I

    #@f5
    goto/16 :goto_15f

    #@f7
    .line 290
    :pswitch_f7
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    #@fa
    move-result p1

    #@fb
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mAlpha:F

    #@fd
    goto :goto_15f

    #@fe
    .line 329
    :pswitch_fe
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    #@101
    move-result p1

    #@102
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionPathRotate:F

    #@104
    goto :goto_15f

    #@105
    .line 296
    :pswitch_105
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    #@108
    move-result p1

    #@109
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mElevation:F

    #@10b
    goto :goto_15f

    #@10c
    .line 302
    :pswitch_10c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    #@10f
    move-result p1

    #@110
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotation:F

    #@112
    goto :goto_15f

    #@113
    .line 314
    :pswitch_113
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    #@116
    move-result p1

    #@117
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotY:F

    #@119
    goto :goto_15f

    #@11a
    .line 311
    :pswitch_11a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    #@11d
    move-result p1

    #@11e
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mPivotX:F

    #@120
    goto :goto_15f

    #@121
    .line 320
    :pswitch_121
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    #@124
    move-result p1

    #@125
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleY:F

    #@127
    goto :goto_15f

    #@128
    .line 317
    :pswitch_128
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    #@12b
    move-result p1

    #@12c
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mScaleX:F

    #@12e
    goto :goto_15f

    #@12f
    .line 338
    :pswitch_12f
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    #@132
    move-result p1

    #@133
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationZ:F

    #@135
    goto :goto_15f

    #@136
    .line 335
    :pswitch_136
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    #@139
    move-result p1

    #@13a
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationY:F

    #@13c
    goto :goto_15f

    #@13d
    .line 332
    :pswitch_13d
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    #@140
    move-result p1

    #@141
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTranslationX:F

    #@143
    goto :goto_15f

    #@144
    .line 308
    :pswitch_144
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    #@147
    move-result p1

    #@148
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationY:F

    #@14a
    goto :goto_15f

    #@14b
    .line 305
    :pswitch_14b
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    #@14e
    move-result p1

    #@14f
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mRotationX:F

    #@151
    goto :goto_15f

    #@152
    .line 323
    :pswitch_152
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@155
    move-result-object p1

    #@156
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mTransitionEasing:Ljava/lang/String;

    #@158
    goto :goto_15f

    #@159
    .line 299
    :pswitch_159
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    #@15c
    move-result p1

    #@15d
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyAttributes;->mProgress:F

    #@15f
    :goto_15f
    return-void

    #@160
    :sswitch_data_160
    .sparse-switch
        -0x72062ffd -> :sswitch_d8
        -0x6c0d7d20 -> :sswitch_cd
        -0x4a771f66 -> :sswitch_c2
        -0x4a771f65 -> :sswitch_b7
        -0x490b9c39 -> :sswitch_ac
        -0x490b9c38 -> :sswitch_a1
        -0x490b9c37 -> :sswitch_96
        -0x3621dfb2 -> :sswitch_8b
        -0x3621dfb1 -> :sswitch_7d
        -0x2d5a2d1e -> :sswitch_6f
        -0x2d5a2d1d -> :sswitch_61
        -0x266f082 -> :sswitch_53
        -0x42d1a3 -> :sswitch_45
        0x2382115 -> :sswitch_37
        0x589b15e -> :sswitch_29
        0x2283b8a2 -> :sswitch_1b
        0x73b66312 -> :sswitch_d
    .end sparse-switch

    #@1a6
    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_159
        :pswitch_152
        :pswitch_14b
        :pswitch_144
        :pswitch_13d
        :pswitch_136
        :pswitch_12f
        :pswitch_128
        :pswitch_121
        :pswitch_11a
        :pswitch_113
        :pswitch_10c
        :pswitch_105
        :pswitch_fe
        :pswitch_f7
        :pswitch_ef
        :pswitch_e7
    .end packed-switch
.end method
