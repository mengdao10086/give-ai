.class Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;
.super Ljava/lang/Object;
.source "MotionConstrainedPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;",
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

.field attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private elevation:F

.field private height:F

.field private mAnimateRelativeTo:I

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
    .line 71
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->names:[Ljava/lang/String;

    #@12
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/high16 v0, 0x3f800000    # 1.0f

    #@5
    .line 43
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    #@7
    const/4 v1, 0x0

    #@8
    .line 44
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    #@a
    .line 46
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyElevation:Z

    #@c
    const/4 v2, 0x0

    #@d
    .line 47
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    #@f
    .line 48
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@11
    .line 49
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    #@13
    .line 50
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    #@15
    .line 51
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    #@17
    .line 52
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    #@19
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@1b
    .line 53
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    #@1d
    .line 54
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    #@1f
    .line 55
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    #@21
    .line 56
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    #@23
    .line 57
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    #@25
    .line 59
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mDrawPath:I

    #@27
    .line 65
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    #@29
    .line 66
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    #@2b
    const/4 v0, -0x1

    #@2c
    .line 67
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAnimateRelativeTo:I

    #@2e
    .line 73
    new-instance v0, Ljava/util/LinkedHashMap;

    #@30
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@33
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    #@35
    .line 74
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mMode:I

    #@37
    const/16 v0, 0x12

    #@39
    new-array v1, v0, [D

    #@3b
    .line 154
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTempValue:[D

    #@3d
    new-array v0, v0, [D

    #@3f
    .line 155
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTempDelta:[D

    #@41
    return-void
.end method

.method private diff(FF)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    #@0
    .line 81
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
    .line 84
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
    .line 82
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "splines",
            "mFramePosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;",
            ">;I)V"
        }
    .end annotation

    #@0
    .line 259
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
    if-eqz v1, :cond_228

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/lang/String;

    #@14
    .line 260
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewSpline;

    #@1a
    .line 264
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
    sparse-switch v3, :sswitch_data_22a

    #@26
    goto/16 :goto_d3

    #@28
    :sswitch_28
    const-string v3, "alpha"

    #@2a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_32

    #@30
    goto/16 :goto_d3

    #@32
    :cond_32
    const/16 v5, 0xd

    #@34
    goto/16 :goto_d3

    #@36
    :sswitch_36
    const-string v3, "transitionPathRotate"

    #@38
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v3

    #@3c
    if-nez v3, :cond_40

    #@3e
    goto/16 :goto_d3

    #@40
    :cond_40
    const/16 v5, 0xc

    #@42
    goto/16 :goto_d3

    #@44
    :sswitch_44
    const-string v3, "elevation"

    #@46
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v3

    #@4a
    if-nez v3, :cond_4e

    #@4c
    goto/16 :goto_d3

    #@4e
    :cond_4e
    const/16 v5, 0xb

    #@50
    goto/16 :goto_d3

    #@52
    :sswitch_52
    const-string v3, "rotation"

    #@54
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v3

    #@58
    if-nez v3, :cond_5c

    #@5a
    goto/16 :goto_d3

    #@5c
    :cond_5c
    const/16 v5, 0xa

    #@5e
    goto/16 :goto_d3

    #@60
    :sswitch_60
    const-string v3, "transformPivotY"

    #@62
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v3

    #@66
    if-nez v3, :cond_6a

    #@68
    goto/16 :goto_d3

    #@6a
    :cond_6a
    const/16 v5, 0x9

    #@6c
    goto/16 :goto_d3

    #@6e
    :sswitch_6e
    const-string v3, "transformPivotX"

    #@70
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v3

    #@74
    if-nez v3, :cond_78

    #@76
    goto/16 :goto_d3

    #@78
    :cond_78
    const/16 v5, 0x8

    #@7a
    goto/16 :goto_d3

    #@7c
    :sswitch_7c
    const-string v3, "scaleY"

    #@7e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v3

    #@82
    if-nez v3, :cond_85

    #@84
    goto :goto_d3

    #@85
    :cond_85
    const/4 v5, 0x7

    #@86
    goto :goto_d3

    #@87
    :sswitch_87
    const-string v3, "scaleX"

    #@89
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v3

    #@8d
    if-nez v3, :cond_90

    #@8f
    goto :goto_d3

    #@90
    :cond_90
    const/4 v5, 0x6

    #@91
    goto :goto_d3

    #@92
    :sswitch_92
    const-string v3, "progress"

    #@94
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v3

    #@98
    if-nez v3, :cond_9b

    #@9a
    goto :goto_d3

    #@9b
    :cond_9b
    const/4 v5, 0x5

    #@9c
    goto :goto_d3

    #@9d
    :sswitch_9d
    const-string v3, "translationZ"

    #@9f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a2
    move-result v3

    #@a3
    if-nez v3, :cond_a6

    #@a5
    goto :goto_d3

    #@a6
    :cond_a6
    const/4 v5, 0x4

    #@a7
    goto :goto_d3

    #@a8
    :sswitch_a8
    const-string v3, "translationY"

    #@aa
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v3

    #@ae
    if-nez v3, :cond_b1

    #@b0
    goto :goto_d3

    #@b1
    :cond_b1
    const/4 v5, 0x3

    #@b2
    goto :goto_d3

    #@b3
    :sswitch_b3
    const-string v3, "translationX"

    #@b5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v3

    #@b9
    if-nez v3, :cond_bc

    #@bb
    goto :goto_d3

    #@bc
    :cond_bc
    const/4 v5, 0x2

    #@bd
    goto :goto_d3

    #@be
    :sswitch_be
    const-string v3, "rotationY"

    #@c0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c3
    move-result v3

    #@c4
    if-nez v3, :cond_c7

    #@c6
    goto :goto_d3

    #@c7
    :cond_c7
    move v5, v4

    #@c8
    goto :goto_d3

    #@c9
    :sswitch_c9
    const-string v3, "rotationX"

    #@cb
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ce
    move-result v3

    #@cf
    if-nez v3, :cond_d2

    #@d1
    goto :goto_d3

    #@d2
    :cond_d2
    const/4 v5, 0x0

    #@d3
    :goto_d3
    const/high16 v3, 0x3f800000    # 1.0f

    #@d5
    const/4 v6, 0x0

    #@d6
    packed-switch v5, :pswitch_data_264

    #@d9
    const-string v3, "CUSTOM"

    #@db
    .line 308
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@de
    move-result v3

    #@df
    const-string v5, "MotionPaths"

    #@e1
    if-eqz v3, :cond_134

    #@e3
    const-string v3, ","

    #@e5
    .line 309
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@e8
    move-result-object v3

    #@e9
    aget-object v3, v3, v4

    #@eb
    .line 310
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    #@ed
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    #@f0
    move-result v4

    #@f1
    if-eqz v4, :cond_8

    #@f3
    .line 311
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    #@f5
    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f8
    move-result-object v3

    #@f9
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@fb
    .line 312
    instance-of v4, v2, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    #@fd
    if-eqz v4, :cond_106

    #@ff
    .line 313
    check-cast v2, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    #@101
    invoke-virtual {v2, p2, v3}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;->setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;)V

    #@104
    goto/16 :goto_8

    #@106
    .line 315
    :cond_106
    new-instance v4, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v1

    #@10f
    const-string v4, " ViewSpline not a CustomSet frame = "

    #@111
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v1

    #@115
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@118
    move-result-object v1

    #@119
    const-string v4, ", value"

    #@11b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v1

    #@11f
    .line 316
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    #@122
    move-result v3

    #@123
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@126
    move-result-object v1

    #@127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v1

    #@12b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12e
    move-result-object v1

    #@12f
    .line 315
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@132
    goto/16 :goto_8

    #@134
    .line 323
    :cond_134
    new-instance v2, Ljava/lang/StringBuilder;

    #@136
    const-string v3, "UNKNOWN spline "

    #@138
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v1

    #@13f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@142
    move-result-object v1

    #@143
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@146
    goto/16 :goto_8

    #@148
    .line 266
    :pswitch_148
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    #@14a
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@14d
    move-result v1

    #@14e
    if-eqz v1, :cond_151

    #@150
    goto :goto_153

    #@151
    :cond_151
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    #@153
    :goto_153
    invoke-virtual {v2, p2, v3}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    #@156
    goto/16 :goto_8

    #@158
    .line 287
    :pswitch_158
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    #@15a
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@15d
    move-result v1

    #@15e
    if-eqz v1, :cond_161

    #@160
    goto :goto_163

    #@161
    :cond_161
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    #@163
    :goto_163
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    #@166
    goto/16 :goto_8

    #@168
    .line 269
    :pswitch_168
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    #@16a
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@16d
    move-result v1

    #@16e
    if-eqz v1, :cond_171

    #@170
    goto :goto_173

    #@171
    :cond_171
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    #@173
    :goto_173
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    #@176
    goto/16 :goto_8

    #@178
    .line 272
    :pswitch_178
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@17a
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@17d
    move-result v1

    #@17e
    if-eqz v1, :cond_181

    #@180
    goto :goto_183

    #@181
    :cond_181
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@183
    :goto_183
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    #@186
    goto/16 :goto_8

    #@188
    .line 284
    :pswitch_188
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    #@18a
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@18d
    move-result v1

    #@18e
    if-eqz v1, :cond_191

    #@190
    goto :goto_193

    #@191
    :cond_191
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    #@193
    :goto_193
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    #@196
    goto/16 :goto_8

    #@198
    .line 281
    :pswitch_198
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    #@19a
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@19d
    move-result v1

    #@19e
    if-eqz v1, :cond_1a1

    #@1a0
    goto :goto_1a3

    #@1a1
    :cond_1a1
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    #@1a3
    :goto_1a3
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    #@1a6
    goto/16 :goto_8

    #@1a8
    .line 296
    :pswitch_1a8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    #@1aa
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1ad
    move-result v1

    #@1ae
    if-eqz v1, :cond_1b1

    #@1b0
    goto :goto_1b3

    #@1b1
    :cond_1b1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    #@1b3
    :goto_1b3
    invoke-virtual {v2, p2, v3}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    #@1b6
    goto/16 :goto_8

    #@1b8
    .line 293
    :pswitch_1b8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    #@1ba
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1bd
    move-result v1

    #@1be
    if-eqz v1, :cond_1c1

    #@1c0
    goto :goto_1c3

    #@1c1
    :cond_1c1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    #@1c3
    :goto_1c3
    invoke-virtual {v2, p2, v3}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    #@1c6
    goto/16 :goto_8

    #@1c8
    .line 290
    :pswitch_1c8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    #@1ca
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1cd
    move-result v1

    #@1ce
    if-eqz v1, :cond_1d1

    #@1d0
    goto :goto_1d3

    #@1d1
    :cond_1d1
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    #@1d3
    :goto_1d3
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    #@1d6
    goto/16 :goto_8

    #@1d8
    .line 305
    :pswitch_1d8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    #@1da
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1dd
    move-result v1

    #@1de
    if-eqz v1, :cond_1e1

    #@1e0
    goto :goto_1e3

    #@1e1
    :cond_1e1
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    #@1e3
    :goto_1e3
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    #@1e6
    goto/16 :goto_8

    #@1e8
    .line 302
    :pswitch_1e8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    #@1ea
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1ed
    move-result v1

    #@1ee
    if-eqz v1, :cond_1f1

    #@1f0
    goto :goto_1f3

    #@1f1
    :cond_1f1
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    #@1f3
    :goto_1f3
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    #@1f6
    goto/16 :goto_8

    #@1f8
    .line 299
    :pswitch_1f8
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    #@1fa
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@1fd
    move-result v1

    #@1fe
    if-eqz v1, :cond_201

    #@200
    goto :goto_203

    #@201
    :cond_201
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    #@203
    :goto_203
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    #@206
    goto/16 :goto_8

    #@208
    .line 278
    :pswitch_208
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    #@20a
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@20d
    move-result v1

    #@20e
    if-eqz v1, :cond_211

    #@210
    goto :goto_213

    #@211
    :cond_211
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    #@213
    :goto_213
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    #@216
    goto/16 :goto_8

    #@218
    .line 275
    :pswitch_218
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    #@21a
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@21d
    move-result v1

    #@21e
    if-eqz v1, :cond_221

    #@220
    goto :goto_223

    #@221
    :cond_221
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    #@223
    :goto_223
    invoke-virtual {v2, p2, v6}, Landroidx/constraintlayout/motion/utils/ViewSpline;->setPoint(IF)V

    #@226
    goto/16 :goto_8

    #@228
    :cond_228
    return-void

    #@229
    nop

    #@22a
    :sswitch_data_22a
    .sparse-switch
        -0x4a771f66 -> :sswitch_c9
        -0x4a771f65 -> :sswitch_be
        -0x490b9c39 -> :sswitch_b3
        -0x490b9c38 -> :sswitch_a8
        -0x490b9c37 -> :sswitch_9d
        -0x3bab3dd3 -> :sswitch_92
        -0x3621dfb2 -> :sswitch_87
        -0x3621dfb1 -> :sswitch_7c
        -0x2d5a2d1e -> :sswitch_6e
        -0x2d5a2d1d -> :sswitch_60
        -0x266f082 -> :sswitch_52
        -0x42d1a3 -> :sswitch_44
        0x2382115 -> :sswitch_36
        0x589b15e -> :sswitch_28
    .end sparse-switch

    #@264
    :pswitch_data_264
    .packed-switch 0x0
        :pswitch_218
        :pswitch_208
        :pswitch_1f8
        :pswitch_1e8
        :pswitch_1d8
        :pswitch_1c8
        :pswitch_1b8
        :pswitch_1a8
        :pswitch_198
        :pswitch_188
        :pswitch_178
        :pswitch_168
        :pswitch_158
        :pswitch_148
    .end packed-switch
.end method

.method public applyParameters(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    #@6
    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x0

    #@d
    goto :goto_12

    #@e
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    #@11
    move-result v0

    #@12
    :goto_12
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    #@14
    const/4 v0, 0x0

    #@15
    .line 208
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyElevation:Z

    #@17
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    #@1d
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    #@20
    move-result v0

    #@21
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@23
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    #@26
    move-result v0

    #@27
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    #@29
    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    #@2c
    move-result v0

    #@2d
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    #@2f
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    #@32
    move-result v0

    #@33
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    #@35
    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    #@38
    move-result v0

    #@39
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    #@3b
    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    #@3e
    move-result v0

    #@3f
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    #@41
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    #@44
    move-result v0

    #@45
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    #@47
    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    #@4a
    move-result v0

    #@4b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    #@4d
    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    #@50
    move-result v0

    #@51
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    #@53
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    #@56
    move-result p1

    #@57
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    #@59
    return-void
.end method

.method public applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    #@0
    .line 227
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@2
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    #@4
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    #@6
    .line 228
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@8
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    #@a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    #@c
    .line 229
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@e
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    #@10
    if-eqz v0, :cond_18

    #@12
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    #@14
    if-nez v0, :cond_18

    #@16
    const/4 v0, 0x0

    #@17
    goto :goto_1c

    #@18
    .line 230
    :cond_18
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@1a
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    #@1c
    :goto_1c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    #@1e
    .line 231
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@20
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    #@22
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyElevation:Z

    #@24
    .line 232
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@26
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    #@28
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    #@2a
    .line 233
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@2c
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    #@2e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@30
    .line 234
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@32
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    #@34
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    #@36
    .line 235
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@38
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    #@3a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    #@3c
    .line 236
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@3e
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    #@40
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    #@42
    .line 237
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@44
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    #@46
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    #@48
    .line 238
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@4a
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@4c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    #@4e
    .line 239
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@50
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@52
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    #@54
    .line 240
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@56
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@58
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    #@5a
    .line 241
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@5c
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@5e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    #@60
    .line 242
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    #@62
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    #@64
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    #@66
    .line 244
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@68
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    #@6a
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@6d
    move-result-object v0

    #@6e
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    #@70
    .line 245
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@72
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    #@74
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    #@76
    .line 246
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@78
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    #@7a
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mDrawPath:I

    #@7c
    .line 247
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    #@7e
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    #@80
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAnimateRelativeTo:I

    #@82
    .line 248
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@84
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    #@86
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    #@88
    .line 249
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@8a
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@8d
    move-result-object v0

    #@8e
    .line 250
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@91
    move-result-object v0

    #@92
    :cond_92
    :goto_92
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@95
    move-result v1

    #@96
    if-eqz v1, :cond_b2

    #@98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9b
    move-result-object v1

    #@9c
    check-cast v1, Ljava/lang/String;

    #@9e
    .line 251
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    #@a0
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a3
    move-result-object v2

    #@a4
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@a6
    .line 252
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->isContinuous()Z

    #@a9
    move-result v3

    #@aa
    if-eqz v3, :cond_92

    #@ac
    .line 253
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    #@ae
    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b1
    goto :goto_92

    #@b2
    :cond_b2
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    #@0
    .line 201
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    #@2
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    #@4
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    #@0
    .line 39
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    #@2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->compareTo(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;Ljava/util/HashSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "points",
            "keySet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 94
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    #@2
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    #@4
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@7
    move-result v0

    #@8
    const-string v1, "alpha"

    #@a
    if-eqz v0, :cond_f

    #@c
    .line 95
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@f
    .line 97
    :cond_f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    #@11
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    #@13
    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_1e

    #@19
    const-string v0, "elevation"

    #@1b
    .line 98
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1e
    .line 100
    :cond_1e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    #@20
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    #@22
    if-eq v0, v2, :cond_2f

    #@24
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    #@26
    if-nez v3, :cond_2f

    #@28
    if-eqz v0, :cond_2c

    #@2a
    if-nez v2, :cond_2f

    #@2c
    .line 104
    :cond_2c
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2f
    .line 106
    :cond_2f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@31
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@33
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_3e

    #@39
    const-string v0, "rotation"

    #@3b
    .line 107
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@3e
    .line 109
    :cond_3e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    #@40
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_4e

    #@46
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    #@48
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@4b
    move-result v0

    #@4c
    if-nez v0, :cond_53

    #@4e
    :cond_4e
    const-string v0, "transitionPathRotate"

    #@50
    .line 110
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@53
    .line 112
    :cond_53
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    #@55
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_63

    #@5b
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mProgress:F

    #@5d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@60
    move-result v0

    #@61
    if-nez v0, :cond_68

    #@63
    :cond_63
    const-string v0, "progress"

    #@65
    .line 113
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@68
    .line 115
    :cond_68
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    #@6a
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    #@6c
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_77

    #@72
    const-string v0, "rotationX"

    #@74
    .line 116
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@77
    .line 118
    :cond_77
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    #@79
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    #@7b
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@7e
    move-result v0

    #@7f
    if-eqz v0, :cond_86

    #@81
    const-string v0, "rotationY"

    #@83
    .line 119
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@86
    .line 121
    :cond_86
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    #@88
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    #@8a
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@8d
    move-result v0

    #@8e
    if-eqz v0, :cond_95

    #@90
    const-string v0, "transformPivotX"

    #@92
    .line 122
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@95
    .line 124
    :cond_95
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    #@97
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    #@99
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@9c
    move-result v0

    #@9d
    if-eqz v0, :cond_a4

    #@9f
    const-string v0, "transformPivotY"

    #@a1
    .line 125
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@a4
    .line 127
    :cond_a4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    #@a6
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    #@a8
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@ab
    move-result v0

    #@ac
    if-eqz v0, :cond_b3

    #@ae
    const-string v0, "scaleX"

    #@b0
    .line 128
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@b3
    .line 130
    :cond_b3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    #@b5
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    #@b7
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@ba
    move-result v0

    #@bb
    if-eqz v0, :cond_c2

    #@bd
    const-string v0, "scaleY"

    #@bf
    .line 131
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@c2
    .line 133
    :cond_c2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    #@c4
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    #@c6
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@c9
    move-result v0

    #@ca
    if-eqz v0, :cond_d1

    #@cc
    const-string v0, "translationX"

    #@ce
    .line 134
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@d1
    .line 136
    :cond_d1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    #@d3
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    #@d5
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@d8
    move-result v0

    #@d9
    if-eqz v0, :cond_e0

    #@db
    const-string v0, "translationY"

    #@dd
    .line 137
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@e0
    .line 139
    :cond_e0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    #@e2
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    #@e4
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@e7
    move-result p1

    #@e8
    if-eqz p1, :cond_ef

    #@ea
    const-string p1, "translationZ"

    #@ec
    .line 140
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@ef
    :cond_ef
    return-void
.end method

.method different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;[Z[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "points",
            "mask",
            "custom"
        }
    .end annotation

    #@0
    const/4 p3, 0x0

    #@1
    .line 146
    aget-boolean v0, p2, p3

    #@3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    #@5
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    #@7
    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@a
    move-result v1

    #@b
    or-int/2addr v0, v1

    #@c
    aput-boolean v0, p2, p3

    #@e
    const/4 p3, 0x1

    #@f
    .line 147
    aget-boolean v0, p2, p3

    #@11
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->x:F

    #@13
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->x:F

    #@15
    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@18
    move-result v1

    #@19
    or-int/2addr v0, v1

    #@1a
    aput-boolean v0, p2, p3

    #@1c
    const/4 p3, 0x2

    #@1d
    .line 148
    aget-boolean v0, p2, p3

    #@1f
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->y:F

    #@21
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->y:F

    #@23
    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@26
    move-result v1

    #@27
    or-int/2addr v0, v1

    #@28
    aput-boolean v0, p2, p3

    #@2a
    const/4 p3, 0x3

    #@2b
    .line 149
    aget-boolean v0, p2, p3

    #@2d
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->width:F

    #@2f
    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->width:F

    #@31
    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

    #@34
    move-result v1

    #@35
    or-int/2addr v0, v1

    #@36
    aput-boolean v0, p2, p3

    #@38
    const/4 p3, 0x4

    #@39
    .line 150
    aget-boolean v0, p2, p3

    #@3b
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->height:F

    #@3d
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->height:F

    #@3f
    invoke-direct {p0, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->diff(FF)Z

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "toUse"
        }
    .end annotation

    #@0
    const/16 v0, 0x12

    #@2
    new-array v1, v0, [F

    #@4
    .line 158
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->position:F

    #@6
    const/4 v3, 0x0

    #@7
    aput v2, v1, v3

    #@9
    const/4 v2, 0x1

    #@a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->x:F

    #@c
    aput v4, v1, v2

    #@e
    const/4 v2, 0x2

    #@f
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->y:F

    #@11
    aput v4, v1, v2

    #@13
    const/4 v2, 0x3

    #@14
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->width:F

    #@16
    aput v4, v1, v2

    #@18
    const/4 v2, 0x4

    #@19
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->height:F

    #@1b
    aput v4, v1, v2

    #@1d
    const/4 v2, 0x5

    #@1e
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->alpha:F

    #@20
    aput v4, v1, v2

    #@22
    const/4 v2, 0x6

    #@23
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->elevation:F

    #@25
    aput v4, v1, v2

    #@27
    const/4 v2, 0x7

    #@28
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@2a
    aput v4, v1, v2

    #@2c
    const/16 v2, 0x8

    #@2e
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationX:F

    #@30
    aput v4, v1, v2

    #@32
    const/16 v2, 0x9

    #@34
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    #@36
    aput v4, v1, v2

    #@38
    const/16 v2, 0xa

    #@3a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleX:F

    #@3c
    aput v4, v1, v2

    #@3e
    const/16 v2, 0xb

    #@40
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->scaleY:F

    #@42
    aput v4, v1, v2

    #@44
    const/16 v2, 0xc

    #@46
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    #@48
    aput v4, v1, v2

    #@4a
    const/16 v2, 0xd

    #@4c
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    #@4e
    aput v4, v1, v2

    #@50
    const/16 v2, 0xe

    #@52
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationX:F

    #@54
    aput v4, v1, v2

    #@56
    const/16 v2, 0xf

    #@58
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationY:F

    #@5a
    aput v4, v1, v2

    #@5c
    const/16 v2, 0x10

    #@5e
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->translationZ:F

    #@60
    aput v4, v1, v2

    #@62
    const/16 v2, 0x11

    #@64
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPathRotate:F

    #@66
    aput v4, v1, v2

    #@68
    move v2, v3

    #@69
    .line 161
    :goto_69
    array-length v4, p2

    #@6a
    if-ge v3, v4, :cond_7b

    #@6c
    .line 162
    aget v4, p2, v3

    #@6e
    if-ge v4, v0, :cond_78

    #@70
    add-int/lit8 v5, v2, 0x1

    #@72
    .line 163
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "value",
            "offset"
        }
    .end annotation

    #@0
    .line 177
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@8
    .line 178
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x1

    #@d
    if-ne v0, v1, :cond_17

    #@f
    .line 179
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    #@12
    move-result p1

    #@13
    float-to-double v2, p1

    #@14
    aput-wide v2, p2, p3

    #@16
    return v1

    #@17
    .line 182
    :cond_17
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    #@1a
    move-result v0

    #@1b
    .line 183
    new-array v1, v0, [F

    #@1d
    .line 184
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    #@20
    const/4 p1, 0x0

    #@21
    :goto_21
    if-ge p1, v0, :cond_2e

    #@23
    add-int/lit8 v2, p3, 0x1

    #@25
    .line 186
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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    #@0
    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    #@8
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    #@b
    move-result p1

    #@c
    return p1
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    #@0
    .line 169
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method setBounds(FFFF)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "w",
            "h"
        }
    .end annotation

    #@0
    .line 193
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->x:F

    #@2
    .line 194
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->y:F

    #@4
    .line 195
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->width:F

    #@6
    .line 196
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->height:F

    #@8
    return-void
.end method

.method public setState(Landroid/graphics/Rect;Landroid/view/View;IF)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rect",
            "view",
            "rotation",
            "prevous"
        }
    .end annotation

    #@0
    .line 342
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    int-to-float v0, v0

    #@3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@5
    int-to-float v1, v1

    #@6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@9
    move-result v2

    #@a
    int-to-float v2, v2

    #@b
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@e
    move-result p1

    #@f
    int-to-float p1, p1

    #@10
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setBounds(FFFF)V

    #@13
    .line 343
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyParameters(Landroid/view/View;)V

    #@16
    const/high16 p1, 0x7fc00000    # Float.NaN

    #@18
    .line 344
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    #@1a
    .line 345
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

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
    .line 349
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@28
    goto :goto_2c

    #@29
    :cond_29
    sub-float/2addr p4, p2

    #@2a
    .line 352
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@2c
    :goto_2c
    return-void
.end method

.method public setState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cw",
            "constraintSet",
            "rotation",
            "viewId"
        }
    .end annotation

    #@0
    .line 365
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    int-to-float v0, v0

    #@3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@5
    int-to-float v1, v1

    #@6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    #@9
    move-result v2

    #@a
    int-to-float v2, v2

    #@b
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@e
    move-result p1

    #@f
    int-to-float p1, p1

    #@10
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setBounds(FFFF)V

    #@13
    .line 366
    invoke-virtual {p2, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    #@1a
    const/4 p1, 0x1

    #@1b
    const/high16 p2, 0x42b40000    # 90.0f

    #@1d
    if-eq p3, p1, :cond_3a

    #@1f
    const/4 p1, 0x2

    #@20
    if-eq p3, p1, :cond_29

    #@22
    const/4 p1, 0x3

    #@23
    if-eq p3, p1, :cond_3a

    #@25
    const/4 p1, 0x4

    #@26
    if-eq p3, p1, :cond_29

    #@28
    goto :goto_3f

    #@29
    .line 374
    :cond_29
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@2b
    add-float/2addr p1, p2

    #@2c
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@2e
    const/high16 p2, 0x43340000    # 180.0f

    #@30
    cmpl-float p2, p1, p2

    #@32
    if-lez p2, :cond_3f

    #@34
    const/high16 p2, 0x43b40000    # 360.0f

    #@36
    sub-float/2addr p1, p2

    #@37
    .line 375
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@39
    goto :goto_3f

    #@3a
    .line 370
    :cond_3a
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@3c
    sub-float/2addr p1, p2

    #@3d
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotation:F

    #@3f
    :cond_3f
    :goto_3f
    return-void
.end method

.method public setState(Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    #@7
    move-result v1

    #@8
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@b
    move-result v2

    #@c
    int-to-float v2, v2

    #@d
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@10
    move-result v3

    #@11
    int-to-float v3, v3

    #@12
    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setBounds(FFFF)V

    #@15
    .line 333
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->applyParameters(Landroid/view/View;)V

    #@18
    return-void
.end method
