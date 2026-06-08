.class Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;
.super Ljava/lang/Object;
.source "MotionConstrainedPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;",
        ">;"
    }
.end annotation


# static fields
.field static final CARTESIAN:I = 0x2

.field public static final DEBUG:Z = false

.field static final PERPENDICULAR:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static names:[Ljava/lang/String;


# instance fields
.field private alpha:F

.field private applyElevation:Z

.field private elevation:F

.field private height:F

.field private mAnimateRelativeTo:I

.field mCustomVariable:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/CustomVariable;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawPath:I

.field private mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field mMode:I

.field private mPathRotate:F

.field private mPivotX:F

.field private mPivotY:F

.field private mProgress:F

.field mTempDelta:[D

.field mTempValue:[D

.field mVisibilityMode:I

.field private position:F

.field private rotation:F

.field private rotationX:F

.field public rotationY:F

.field private scaleX:F

.field private scaleY:F

.field private translationX:F

.field private translationY:F

.field private translationZ:F

.field visibility:I

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    #@0
    const-string v0, "position"

    #@2
    const-string v1, "x"

    #@4
    const-string v2, "y"

    #@6
    const-string v3, "width"

    #@8
    const-string v4, "height"

    #@a
    const-string v5, "pathRotate"

    #@c
    .line 66
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->names:[Ljava/lang/String;

    #@12
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    .line 38
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    #@7
    const/4 v1, 0x0

    #@8
    .line 39
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibilityMode:I

    #@a
    .line 41
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyElevation:Z

    #@c
    const/4 v2, 0x0

    #@d
    .line 42
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    #@f
    .line 43
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    #@11
    .line 44
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    #@13
    .line 45
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    #@15
    .line 46
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    #@17
    .line 47
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    #@19
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@1b
    .line 48
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    #@1d
    .line 49
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    #@1f
    .line 50
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    #@21
    .line 51
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    #@23
    .line 52
    iput v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    #@25
    .line 54
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mDrawPath:I

    #@27
    .line 60
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    #@29
    .line 61
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    #@2b
    const/4 v0, -0x1

    #@2c
    .line 62
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mAnimateRelativeTo:I

    #@2e
    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    #@30
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@33
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    #@35
    .line 69
    iput v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mMode:I

    #@37
    const/16 v0, 0x12

    #@39
    new-array v1, v0, [D

    #@3b
    .line 151
    iput-object v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mTempValue:[D

    #@3d
    new-array v0, v0, [D

    #@3f
    .line 152
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mTempDelta:[D

    #@41
    return-void
.end method

.method private diff(FF)Z
    .registers 6

    #@0
    .line 76
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x0

    #@6
    if-nez v0, :cond_1e

    #@8
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_f

    #@e
    goto :goto_1e

    #@f
    :cond_f
    sub-float/2addr p1, p2

    #@10
    .line 79
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@13
    move-result p1

    #@14
    const p2, 0x358637bd    # 1.0E-6f

    #@17
    cmpl-float p1, p1, p2

    #@19
    if-lez p1, :cond_1c

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    move v1, v2

    #@1d
    :goto_1d
    return v1

    #@1e
    .line 77
    :cond_1e
    :goto_1e
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@21
    move-result p1

    #@22
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    #@25
    move-result p2

    #@26
    if-eq p1, p2, :cond_29

    #@28
    goto :goto_2a

    #@29
    :cond_29
    move v1, v2

    #@2a
    :goto_2a
    return v1
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/motion/utils/SplineSet;",
            ">;I)V"
        }
    .end annotation

    #@0
    .line 229
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
    if-eqz v1, :cond_20a

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/String;

    #@14
    .line 230
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet;

    #@1a
    .line 234
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@1d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@20
    move-result v3

    #@21
    const/4 v4, 0x1

    #@22
    const/4 v5, -0x1

    #@23
    sparse-switch v3, :sswitch_data_20c

    #@26
    goto/16 :goto_c5

    #@28
    :sswitch_28
    const-string v3, "pathRotate"

    #@2a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_32

    #@30
    goto/16 :goto_c5

    #@32
    :cond_32
    const/16 v5, 0xc

    #@34
    goto/16 :goto_c5

    #@36
    :sswitch_36
    const-string v3, "alpha"

    #@38
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v3

    #@3c
    if-nez v3, :cond_40

    #@3e
    goto/16 :goto_c5

    #@40
    :cond_40
    const/16 v5, 0xb

    #@42
    goto/16 :goto_c5

    #@44
    :sswitch_44
    const-string v3, "scaleY"

    #@46
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v3

    #@4a
    if-nez v3, :cond_4e

    #@4c
    goto/16 :goto_c5

    #@4e
    :cond_4e
    const/16 v5, 0xa

    #@50
    goto/16 :goto_c5

    #@52
    :sswitch_52
    const-string v3, "scaleX"

    #@54
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v3

    #@58
    if-nez v3, :cond_5c

    #@5a
    goto/16 :goto_c5

    #@5c
    :cond_5c
    const/16 v5, 0x9

    #@5e
    goto/16 :goto_c5

    #@60
    :sswitch_60
    const-string v3, "pivotY"

    #@62
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v3

    #@66
    if-nez v3, :cond_6a

    #@68
    goto/16 :goto_c5

    #@6a
    :cond_6a
    const/16 v5, 0x8

    #@6c
    goto/16 :goto_c5

    #@6e
    :sswitch_6e
    const-string v3, "pivotX"

    #@70
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v3

    #@74
    if-nez v3, :cond_77

    #@76
    goto :goto_c5

    #@77
    :cond_77
    const/4 v5, 0x7

    #@78
    goto :goto_c5

    #@79
    :sswitch_79
    const-string v3, "progress"

    #@7b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v3

    #@7f
    if-nez v3, :cond_82

    #@81
    goto :goto_c5

    #@82
    :cond_82
    const/4 v5, 0x6

    #@83
    goto :goto_c5

    #@84
    :sswitch_84
    const-string v3, "translationZ"

    #@86
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v3

    #@8a
    if-nez v3, :cond_8d

    #@8c
    goto :goto_c5

    #@8d
    :cond_8d
    const/4 v5, 0x5

    #@8e
    goto :goto_c5

    #@8f
    :sswitch_8f
    const-string v3, "translationY"

    #@91
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v3

    #@95
    if-nez v3, :cond_98

    #@97
    goto :goto_c5

    #@98
    :cond_98
    const/4 v5, 0x4

    #@99
    goto :goto_c5

    #@9a
    :sswitch_9a
    const-string v3, "translationX"

    #@9c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result v3

    #@a0
    if-nez v3, :cond_a3

    #@a2
    goto :goto_c5

    #@a3
    :cond_a3
    const/4 v5, 0x3

    #@a4
    goto :goto_c5

    #@a5
    :sswitch_a5
    const-string v3, "rotationZ"

    #@a7
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@aa
    move-result v3

    #@ab
    if-nez v3, :cond_ae

    #@ad
    goto :goto_c5

    #@ae
    :cond_ae
    const/4 v5, 0x2

    #@af
    goto :goto_c5

    #@b0
    :sswitch_b0
    const-string v3, "rotationY"

    #@b2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b5
    move-result v3

    #@b6
    if-nez v3, :cond_b9

    #@b8
    goto :goto_c5

    #@b9
    :cond_b9
    move v5, v4

    #@ba
    goto :goto_c5

    #@bb
    :sswitch_bb
    const-string v3, "rotationX"

    #@bd
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v3

    #@c1
    if-nez v3, :cond_c4

    #@c3
    goto :goto_c5

    #@c4
    :cond_c4
    const/4 v5, 0x0

    #@c5
    :goto_c5
    const/high16 v3, 0x3f800000    # 1.0f

    #@c7
    const/4 v6, 0x0

    #@c8
    packed-switch v5, :pswitch_data_242

    #@cb
    const-string v3, "CUSTOM"

    #@cd
    .line 275
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d0
    move-result v3

    #@d1
    const-string v5, "MotionPaths"

    #@d3
    if-eqz v3, :cond_126

    #@d5
    const-string v3, ","

    #@d7
    .line 276
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@da
    move-result-object v3

    #@db
    aget-object v3, v3, v4

    #@dd
    .line 277
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    #@df
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    #@e2
    move-result v4

    #@e3
    if-eqz v4, :cond_8

    #@e5
    .line 278
    iget-object v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    #@e7
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ea
    move-result-object v3

    #@eb
    check-cast v3, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@ed
    .line 279
    instance-of v4, v2, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;

    #@ef
    if-eqz v4, :cond_f8

    #@f1
    .line 280
    check-cast v2, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;

    #@f3
    invoke-virtual {v2, p2, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CustomSpline;->setPoint(ILandroidx/constraintlayout/core/motion/CustomVariable;)V

    #@f6
    goto/16 :goto_8

    #@f8
    .line 282
    :cond_f8
    new-instance v4, Ljava/lang/StringBuilder;

    #@fa
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@fd
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v1

    #@101
    const-string v4, " ViewSpline not a CustomSet frame = "

    #@103
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v1

    #@107
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v1

    #@10b
    const-string v4, ", value"

    #@10d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v1

    #@111
    .line 283
    invoke-virtual {v3}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    #@114
    move-result v3

    #@115
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@118
    move-result-object v1

    #@119
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v1

    #@11d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v1

    #@121
    .line 282
    invoke-static {v5, v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    #@124
    goto/16 :goto_8

    #@126
    .line 290
    :cond_126
    new-instance v2, Ljava/lang/StringBuilder;

    #@128
    const-string v3, "UNKNOWN spline "

    #@12a
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v1

    #@131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@134
    move-result-object v1

    #@135
    invoke-static {v5, v1}, Landroidx/constraintlayout/core/motion/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    #@138
    goto/16 :goto_8

    #@13a
    .line 254
    :pswitch_13a
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    #@13c
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@13f
    move-result v1

    #@140
    if-eqz v1, :cond_143

    #@142
    goto :goto_145

    #@143
    :cond_143
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    #@145
    :goto_145
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@148
    goto/16 :goto_8

    #@14a
    .line 236
    :pswitch_14a
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    #@14c
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@14f
    move-result v1

    #@150
    if-eqz v1, :cond_153

    #@152
    goto :goto_155

    #@153
    :cond_153
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    #@155
    :goto_155
    invoke-virtual {v2, p2, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@158
    goto/16 :goto_8

    #@15a
    .line 263
    :pswitch_15a
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    #@15c
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@15f
    move-result v1

    #@160
    if-eqz v1, :cond_163

    #@162
    goto :goto_165

    #@163
    :cond_163
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    #@165
    :goto_165
    invoke-virtual {v2, p2, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@168
    goto/16 :goto_8

    #@16a
    .line 260
    :pswitch_16a
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    #@16c
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@16f
    move-result v1

    #@170
    if-eqz v1, :cond_173

    #@172
    goto :goto_175

    #@173
    :cond_173
    iget v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    #@175
    :goto_175
    invoke-virtual {v2, p2, v3}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@178
    goto/16 :goto_8

    #@17a
    .line 251
    :pswitch_17a
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    #@17c
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@17f
    move-result v1

    #@180
    if-eqz v1, :cond_183

    #@182
    goto :goto_185

    #@183
    :cond_183
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    #@185
    :goto_185
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@188
    goto/16 :goto_8

    #@18a
    .line 248
    :pswitch_18a
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    #@18c
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@18f
    move-result v1

    #@190
    if-eqz v1, :cond_193

    #@192
    goto :goto_195

    #@193
    :cond_193
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    #@195
    :goto_195
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@198
    goto/16 :goto_8

    #@19a
    .line 257
    :pswitch_19a
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    #@19c
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@19f
    move-result v1

    #@1a0
    if-eqz v1, :cond_1a3

    #@1a2
    goto :goto_1a5

    #@1a3
    :cond_1a3
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    #@1a5
    :goto_1a5
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1a8
    goto/16 :goto_8

    #@1aa
    .line 272
    :pswitch_1aa
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    #@1ac
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1af
    move-result v1

    #@1b0
    if-eqz v1, :cond_1b3

    #@1b2
    goto :goto_1b5

    #@1b3
    :cond_1b3
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    #@1b5
    :goto_1b5
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1b8
    goto/16 :goto_8

    #@1ba
    .line 269
    :pswitch_1ba
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    #@1bc
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1bf
    move-result v1

    #@1c0
    if-eqz v1, :cond_1c3

    #@1c2
    goto :goto_1c5

    #@1c3
    :cond_1c3
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    #@1c5
    :goto_1c5
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1c8
    goto/16 :goto_8

    #@1ca
    .line 266
    :pswitch_1ca
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    #@1cc
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1cf
    move-result v1

    #@1d0
    if-eqz v1, :cond_1d3

    #@1d2
    goto :goto_1d5

    #@1d3
    :cond_1d3
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    #@1d5
    :goto_1d5
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1d8
    goto/16 :goto_8

    #@1da
    .line 239
    :pswitch_1da
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    #@1dc
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1df
    move-result v1

    #@1e0
    if-eqz v1, :cond_1e3

    #@1e2
    goto :goto_1e5

    #@1e3
    :cond_1e3
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    #@1e5
    :goto_1e5
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1e8
    goto/16 :goto_8

    #@1ea
    .line 245
    :pswitch_1ea
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    #@1ec
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1ef
    move-result v1

    #@1f0
    if-eqz v1, :cond_1f3

    #@1f2
    goto :goto_1f5

    #@1f3
    :cond_1f3
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    #@1f5
    :goto_1f5
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@1f8
    goto/16 :goto_8

    #@1fa
    .line 242
    :pswitch_1fa
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    #@1fc
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1ff
    move-result v1

    #@200
    if-eqz v1, :cond_203

    #@202
    goto :goto_205

    #@203
    :cond_203
    iget v6, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    #@205
    :goto_205
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/core/motion/utils/SplineSet;->setPoint(IF)V

    #@208
    goto/16 :goto_8

    #@20a
    :cond_20a
    return-void

    #@20b
    nop

    #@20c
    :sswitch_data_20c
    .sparse-switch
        -0x4a771f66 -> :sswitch_bb
        -0x4a771f65 -> :sswitch_b0
        -0x4a771f64 -> :sswitch_a5
        -0x490b9c39 -> :sswitch_9a
        -0x490b9c38 -> :sswitch_8f
        -0x490b9c37 -> :sswitch_84
        -0x3bab3dd3 -> :sswitch_79
        -0x3ae243aa -> :sswitch_6e
        -0x3ae243a9 -> :sswitch_60
        -0x3621dfb2 -> :sswitch_52
        -0x3621dfb1 -> :sswitch_44
        0x589b15e -> :sswitch_36
        0x2fdfbde0 -> :sswitch_28
    .end sparse-switch

    #@242
    :pswitch_data_242
    .packed-switch 0x0
        :pswitch_1fa
        :pswitch_1ea
        :pswitch_1da
        :pswitch_1ca
        :pswitch_1ba
        :pswitch_1aa
        :pswitch_19a
        :pswitch_18a
        :pswitch_17a
        :pswitch_16a
        :pswitch_15a
        :pswitch_14a
        :pswitch_13a
    .end packed-switch
.end method

.method public applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 6

    #@0
    .line 203
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getVisibility()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    #@6
    .line 204
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getVisibility()I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x4

    #@b
    if-eq v0, v1, :cond_f

    #@d
    const/4 v0, 0x0

    #@e
    goto :goto_13

    #@f
    :cond_f
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getAlpha()F

    #@12
    move-result v0

    #@13
    :goto_13
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    #@15
    const/4 v0, 0x0

    #@16
    .line 205
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyElevation:Z

    #@18
    .line 207
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRotationZ()F

    #@1b
    move-result v0

    #@1c
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    #@1e
    .line 208
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRotationX()F

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    #@24
    .line 209
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getRotationY()F

    #@27
    move-result v0

    #@28
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    #@2a
    .line 210
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getScaleX()F

    #@2d
    move-result v0

    #@2e
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    #@30
    .line 211
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getScaleY()F

    #@33
    move-result v0

    #@34
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    #@36
    .line 212
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getPivotX()F

    #@39
    move-result v0

    #@3a
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    #@3c
    .line 213
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getPivotY()F

    #@3f
    move-result v0

    #@40
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    #@42
    .line 214
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTranslationX()F

    #@45
    move-result v0

    #@46
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    #@48
    .line 215
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTranslationY()F

    #@4b
    move-result v0

    #@4c
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    #@4e
    .line 216
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getTranslationZ()F

    #@51
    move-result v0

    #@52
    iput v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    #@54
    .line 217
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getCustomAttributeNames()Ljava/util/Set;

    #@57
    move-result-object v0

    #@58
    .line 218
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5b
    move-result-object v0

    #@5c
    :cond_5c
    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@5f
    move-result v1

    #@60
    if-eqz v1, :cond_7a

    #@62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@65
    move-result-object v1

    #@66
    check-cast v1, Ljava/lang/String;

    #@68
    .line 219
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getCustomAttribute(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/CustomVariable;

    #@6b
    move-result-object v2

    #@6c
    if-eqz v2, :cond_5c

    #@6e
    .line 220
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomVariable;->isContinuous()Z

    #@71
    move-result v3

    #@72
    if-eqz v3, :cond_5c

    #@74
    .line 221
    iget-object v3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    #@76
    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@79
    goto :goto_5c

    #@7a
    :cond_7a
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;)I
    .registers 3

    #@0
    .line 198
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    #@2
    iget p1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    #@4
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    #@0
    .line 34
    check-cast p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;

    #@2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->compareTo(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method different(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;Ljava/util/HashSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 89
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    #@2
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    #@4
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@7
    move-result v0

    #@8
    const-string v1, "alpha"

    #@a
    if-eqz v0, :cond_f

    #@c
    .line 90
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@f
    .line 92
    :cond_f
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    #@11
    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    #@13
    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@16
    move-result v0

    #@17
    const-string v2, "translationZ"

    #@19
    if-eqz v0, :cond_1e

    #@1b
    .line 93
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1e
    .line 95
    :cond_1e
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    #@20
    iget v3, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->visibility:I

    #@22
    if-eq v0, v3, :cond_30

    #@24
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mVisibilityMode:I

    #@26
    if-nez v4, :cond_30

    #@28
    const/4 v4, 0x4

    #@29
    if-eq v0, v4, :cond_2d

    #@2b
    if-ne v3, v4, :cond_30

    #@2d
    .line 99
    :cond_2d
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@30
    .line 101
    :cond_30
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    #@32
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    #@34
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_3f

    #@3a
    const-string v0, "rotationZ"

    #@3c
    .line 102
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3f
    .line 104
    :cond_3f
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    #@41
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_4f

    #@47
    iget v0, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    #@49
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@4c
    move-result v0

    #@4d
    if-nez v0, :cond_54

    #@4f
    :cond_4f
    const-string v0, "pathRotate"

    #@51
    .line 105
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@54
    .line 107
    :cond_54
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    #@56
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_64

    #@5c
    iget v0, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mProgress:F

    #@5e
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@61
    move-result v0

    #@62
    if-nez v0, :cond_69

    #@64
    :cond_64
    const-string v0, "progress"

    #@66
    .line 108
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@69
    .line 110
    :cond_69
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    #@6b
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    #@6d
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@70
    move-result v0

    #@71
    if-eqz v0, :cond_78

    #@73
    const-string v0, "rotationX"

    #@75
    .line 111
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@78
    .line 113
    :cond_78
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    #@7a
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    #@7c
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@7f
    move-result v0

    #@80
    if-eqz v0, :cond_87

    #@82
    const-string v0, "rotationY"

    #@84
    .line 114
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@87
    .line 116
    :cond_87
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    #@89
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    #@8b
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@8e
    move-result v0

    #@8f
    if-eqz v0, :cond_96

    #@91
    const-string v0, "pivotX"

    #@93
    .line 117
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@96
    .line 119
    :cond_96
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    #@98
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    #@9a
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@9d
    move-result v0

    #@9e
    if-eqz v0, :cond_a5

    #@a0
    const-string v0, "pivotY"

    #@a2
    .line 120
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@a5
    .line 122
    :cond_a5
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    #@a7
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    #@a9
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@ac
    move-result v0

    #@ad
    if-eqz v0, :cond_b4

    #@af
    const-string v0, "scaleX"

    #@b1
    .line 123
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@b4
    .line 125
    :cond_b4
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    #@b6
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    #@b8
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@bb
    move-result v0

    #@bc
    if-eqz v0, :cond_c3

    #@be
    const-string v0, "scaleY"

    #@c0
    .line 126
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@c3
    .line 128
    :cond_c3
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    #@c5
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    #@c7
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@ca
    move-result v0

    #@cb
    if-eqz v0, :cond_d2

    #@cd
    const-string v0, "translationX"

    #@cf
    .line 129
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@d2
    .line 131
    :cond_d2
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    #@d4
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    #@d6
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@d9
    move-result v0

    #@da
    if-eqz v0, :cond_e1

    #@dc
    const-string v0, "translationY"

    #@de
    .line 132
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@e1
    .line 134
    :cond_e1
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    #@e3
    iget v1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    #@e5
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@e8
    move-result v0

    #@e9
    if-eqz v0, :cond_ee

    #@eb
    .line 135
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@ee
    .line 137
    :cond_ee
    iget v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    #@f0
    iget p1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    #@f2
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@f5
    move-result p1

    #@f6
    if-eqz p1, :cond_fd

    #@f8
    const-string p1, "elevation"

    #@fa
    .line 138
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@fd
    :cond_fd
    return-void
.end method

.method different(Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;[Z[Ljava/lang/String;)V
    .registers 7

    #@0
    const/4 p3, 0x0

    #@1
    .line 144
    aget-boolean v0, p2, p3

    #@3
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    #@5
    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    #@7
    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@a
    move-result v1

    #@b
    or-int/2addr v0, v1

    #@c
    aput-boolean v0, p2, p3

    #@e
    const/4 p3, 0x1

    #@f
    .line 145
    aget-boolean v0, p2, p3

    #@11
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    #@13
    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    #@15
    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@18
    move-result v1

    #@19
    or-int/2addr v0, v1

    #@1a
    aput-boolean v0, p2, p3

    #@1c
    const/4 p3, 0x2

    #@1d
    .line 146
    aget-boolean v0, p2, p3

    #@1f
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    #@21
    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    #@23
    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@26
    move-result v1

    #@27
    or-int/2addr v0, v1

    #@28
    aput-boolean v0, p2, p3

    #@2a
    const/4 p3, 0x3

    #@2b
    .line 147
    aget-boolean v0, p2, p3

    #@2d
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    #@2f
    iget v2, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    #@31
    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@34
    move-result v1

    #@35
    or-int/2addr v0, v1

    #@36
    aput-boolean v0, p2, p3

    #@38
    const/4 p3, 0x4

    #@39
    .line 148
    aget-boolean v0, p2, p3

    #@3b
    iget v1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    #@3d
    iget p1, p1, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    #@3f
    invoke-direct {p0, v1, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->diff(FF)Z

    #@42
    move-result p1

    #@43
    or-int/2addr p1, v0

    #@44
    aput-boolean p1, p2, p3

    #@46
    return-void
.end method

.method fillStandard([D[I)V
    .registers 11

    #@0
    const/16 v0, 0x12

    #@2
    new-array v1, v0, [F

    #@4
    .line 155
    iget v2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->position:F

    #@6
    const/4 v3, 0x0

    #@7
    aput v2, v1, v3

    #@9
    const/4 v2, 0x1

    #@a
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    #@c
    aput v4, v1, v2

    #@e
    const/4 v2, 0x2

    #@f
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    #@11
    aput v4, v1, v2

    #@13
    const/4 v2, 0x3

    #@14
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    #@16
    aput v4, v1, v2

    #@18
    const/4 v2, 0x4

    #@19
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    #@1b
    aput v4, v1, v2

    #@1d
    const/4 v2, 0x5

    #@1e
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->alpha:F

    #@20
    aput v4, v1, v2

    #@22
    const/4 v2, 0x6

    #@23
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->elevation:F

    #@25
    aput v4, v1, v2

    #@27
    const/4 v2, 0x7

    #@28
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    #@2a
    aput v4, v1, v2

    #@2c
    const/16 v2, 0x8

    #@2e
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationX:F

    #@30
    aput v4, v1, v2

    #@32
    const/16 v2, 0x9

    #@34
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotationY:F

    #@36
    aput v4, v1, v2

    #@38
    const/16 v2, 0xa

    #@3a
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleX:F

    #@3c
    aput v4, v1, v2

    #@3e
    const/16 v2, 0xb

    #@40
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->scaleY:F

    #@42
    aput v4, v1, v2

    #@44
    const/16 v2, 0xc

    #@46
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    #@48
    aput v4, v1, v2

    #@4a
    const/16 v2, 0xd

    #@4c
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    #@4e
    aput v4, v1, v2

    #@50
    const/16 v2, 0xe

    #@52
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationX:F

    #@54
    aput v4, v1, v2

    #@56
    const/16 v2, 0xf

    #@58
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationY:F

    #@5a
    aput v4, v1, v2

    #@5c
    const/16 v2, 0x10

    #@5e
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->translationZ:F

    #@60
    aput v4, v1, v2

    #@62
    const/16 v2, 0x11

    #@64
    iget v4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPathRotate:F

    #@66
    aput v4, v1, v2

    #@68
    move v2, v3

    #@69
    .line 158
    :goto_69
    array-length v4, p2

    #@6a
    if-ge v3, v4, :cond_7b

    #@6c
    .line 159
    aget v4, p2, v3

    #@6e
    if-ge v4, v0, :cond_78

    #@70
    add-int/lit8 v5, v2, 0x1

    #@72
    .line 160
    aget v4, v1, v4

    #@74
    float-to-double v6, v4

    #@75
    aput-wide v6, p1, v2

    #@77
    move v2, v5

    #@78
    :cond_78
    add-int/lit8 v3, v3, 0x1

    #@7a
    goto :goto_69

    #@7b
    :cond_7b
    return-void
.end method

.method getCustomData(Ljava/lang/String;[DI)I
    .registers 9

    #@0
    .line 174
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@8
    .line 175
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x1

    #@d
    if-ne v0, v1, :cond_17

    #@f
    .line 176
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValueToInterpolate()F

    #@12
    move-result p1

    #@13
    float-to-double v2, p1

    #@14
    aput-wide v2, p2, p3

    #@16
    return v1

    #@17
    .line 179
    :cond_17
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    #@1a
    move-result v0

    #@1b
    .line 180
    new-array v1, v0, [F

    #@1d
    .line 181
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/motion/CustomVariable;->getValuesToInterpolate([F)V

    #@20
    const/4 p1, 0x0

    #@21
    :goto_21
    if-ge p1, v0, :cond_2e

    #@23
    add-int/lit8 v2, p3, 0x1

    #@25
    .line 183
    aget v3, v1, p1

    #@27
    float-to-double v3, v3

    #@28
    aput-wide v3, p2, p3

    #@2a
    add-int/lit8 p1, p1, 0x1

    #@2c
    move p3, v2

    #@2d
    goto :goto_21

    #@2e
    :cond_2e
    return v0
.end method

.method getCustomDataCount(Ljava/lang/String;)I
    .registers 3

    #@0
    .line 170
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/core/motion/CustomVariable;

    #@8
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/CustomVariable;->numberOfInterpolatedValues()I

    #@b
    move-result p1

    #@c
    return p1
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 166
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mCustomVariable:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method setBounds(FFFF)V
    .registers 5

    #@0
    .line 190
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->x:F

    #@2
    .line 191
    iput p2, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->y:F

    #@4
    .line 192
    iput p3, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->width:F

    #@6
    .line 193
    iput p4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->height:F

    #@8
    return-void
.end method

.method public setState(Landroidx/constraintlayout/core/motion/MotionWidget;)V
    .registers 6

    #@0
    .line 298
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getX()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getY()I

    #@8
    move-result v1

    #@9
    int-to-float v1, v1

    #@a
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getWidth()I

    #@d
    move-result v2

    #@e
    int-to-float v2, v2

    #@f
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/MotionWidget;->getHeight()I

    #@12
    move-result v3

    #@13
    int-to-float v3, v3

    #@14
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setBounds(FFFF)V

    #@17
    .line 299
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    #@1a
    return-void
.end method

.method public setState(Landroidx/constraintlayout/core/motion/utils/Rect;Landroidx/constraintlayout/core/motion/MotionWidget;IF)V
    .registers 8

    #@0
    .line 308
    iget v0, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->left:I

    #@2
    int-to-float v0, v0

    #@3
    iget v1, p1, Landroidx/constraintlayout/core/motion/utils/Rect;->top:I

    #@5
    int-to-float v1, v1

    #@6
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->width()I

    #@9
    move-result v2

    #@a
    int-to-float v2, v2

    #@b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/motion/utils/Rect;->height()I

    #@e
    move-result p1

    #@f
    int-to-float p1, p1

    #@10
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->setBounds(FFFF)V

    #@13
    .line 309
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->applyParameters(Landroidx/constraintlayout/core/motion/MotionWidget;)V

    #@16
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@18
    .line 310
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotX:F

    #@1a
    .line 311
    iput p1, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->mPivotY:F

    #@1c
    const/4 p1, 0x1

    #@1d
    const/high16 p2, 0x42b40000    # 90.0f

    #@1f
    if-eq p3, p1, :cond_29

    #@21
    const/4 p1, 0x2

    #@22
    if-eq p3, p1, :cond_25

    #@24
    goto :goto_2c

    #@25
    :cond_25
    add-float/2addr p4, p2

    #@26
    .line 315
    iput p4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    #@28
    goto :goto_2c

    #@29
    :cond_29
    sub-float/2addr p4, p2

    #@2a
    .line 318
    iput p4, p0, Landroidx/constraintlayout/core/motion/MotionConstrainedPoint;->rotation:F

    #@2c
    :goto_2c
    return-void
.end method
