.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MotionType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "Motion"

.field public static final S_ANIMATE_CIRCLEANGLE_TO:Ljava/lang/String; = "AnimateCircleAngleTo"

.field public static final S_ANIMATE_RELATIVE_TO:Ljava/lang/String; = "AnimateRelativeTo"

.field public static final S_DRAW_PATH:Ljava/lang/String; = "DrawPath"

.field public static final S_EASING:Ljava/lang/String; = "TransitionEasing"

.field public static final S_PATHMOTION_ARC:Ljava/lang/String; = "PathMotionArc"

.field public static final S_PATH_ROTATE:Ljava/lang/String; = "PathRotate"

.field public static final S_POLAR_RELATIVETO:Ljava/lang/String; = "PolarRelativeTo"

.field public static final S_QUANTIZE_INTERPOLATOR:Ljava/lang/String; = "QuantizeInterpolator"

.field public static final S_QUANTIZE_INTERPOLATOR_ID:Ljava/lang/String; = "QuantizeInterpolatorID"

.field public static final S_QUANTIZE_INTERPOLATOR_TYPE:Ljava/lang/String; = "QuantizeInterpolatorType"

.field public static final S_QUANTIZE_MOTIONSTEPS:Ljava/lang/String; = "QuantizeMotionSteps"

.field public static final S_QUANTIZE_MOTION_PHASE:Ljava/lang/String; = "QuantizeMotionPhase"

.field public static final S_STAGGER:Ljava/lang/String; = "Stagger"

.field public static final TYPE_ANIMATE_CIRCLEANGLE_TO:I = 0x25e

.field public static final TYPE_ANIMATE_RELATIVE_TO:I = 0x25d

.field public static final TYPE_DRAW_PATH:I = 0x260

.field public static final TYPE_EASING:I = 0x25b

.field public static final TYPE_PATHMOTION_ARC:I = 0x25f

.field public static final TYPE_PATH_ROTATE:I = 0x259

.field public static final TYPE_POLAR_RELATIVETO:I = 0x261

.field public static final TYPE_QUANTIZE_INTERPOLATOR:I = 0x25c

.field public static final TYPE_QUANTIZE_INTERPOLATOR_ID:I = 0x264

.field public static final TYPE_QUANTIZE_INTERPOLATOR_TYPE:I = 0x263

.field public static final TYPE_QUANTIZE_MOTIONSTEPS:I = 0x262

.field public static final TYPE_QUANTIZE_MOTION_PHASE:I = 0x25a

.field public static final TYPE_STAGGER:I = 0x258


# direct methods
.method static constructor <clinit>()V
    .registers 13

    #@0
    const-string v0, "Stagger"

    #@2
    const-string v1, "PathRotate"

    #@4
    const-string v2, "QuantizeMotionPhase"

    #@6
    const-string v3, "TransitionEasing"

    #@8
    const-string v4, "QuantizeInterpolator"

    #@a
    const-string v5, "AnimateRelativeTo"

    #@c
    const-string v6, "AnimateCircleAngleTo"

    #@e
    const-string v7, "PathMotionArc"

    #@10
    const-string v8, "DrawPath"

    #@12
    const-string v9, "PolarRelativeTo"

    #@14
    const-string v10, "QuantizeMotionSteps"

    #@16
    const-string v11, "QuantizeInterpolatorType"

    #@18
    const-string v12, "QuantizeInterpolatorID"

    #@1a
    .line 549
    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionType;->KEY_WORDS:[Ljava/lang/String;

    #@20
    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    #@0
    .line 586
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_d4

    #@b
    :goto_b
    move p0, v1

    #@c
    goto/16 :goto_a9

    #@e
    :sswitch_e
    const-string v0, "PathMotionArc"

    #@10
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result p0

    #@14
    if-nez p0, :cond_17

    #@16
    goto :goto_b

    #@17
    :cond_17
    const/16 p0, 0xc

    #@19
    goto/16 :goto_a9

    #@1b
    :sswitch_1b
    const-string v0, "AnimateRelativeTo"

    #@1d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result p0

    #@21
    if-nez p0, :cond_24

    #@23
    goto :goto_b

    #@24
    :cond_24
    const/16 p0, 0xb

    #@26
    goto/16 :goto_a9

    #@28
    :sswitch_28
    const-string v0, "TransitionEasing"

    #@2a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result p0

    #@2e
    if-nez p0, :cond_31

    #@30
    goto :goto_b

    #@31
    :cond_31
    const/16 p0, 0xa

    #@33
    goto/16 :goto_a9

    #@35
    :sswitch_35
    const-string v0, "QuantizeInterpolatorID"

    #@37
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result p0

    #@3b
    if-nez p0, :cond_3e

    #@3d
    goto :goto_b

    #@3e
    :cond_3e
    const/16 p0, 0x9

    #@40
    goto/16 :goto_a9

    #@42
    :sswitch_42
    const-string v0, "QuantizeInterpolatorType"

    #@44
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result p0

    #@48
    if-nez p0, :cond_4b

    #@4a
    goto :goto_b

    #@4b
    :cond_4b
    const/16 p0, 0x8

    #@4d
    goto/16 :goto_a9

    #@4f
    :sswitch_4f
    const-string v0, "PolarRelativeTo"

    #@51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result p0

    #@55
    if-nez p0, :cond_58

    #@57
    goto :goto_b

    #@58
    :cond_58
    const/4 p0, 0x7

    #@59
    goto :goto_a9

    #@5a
    :sswitch_5a
    const-string v0, "Stagger"

    #@5c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result p0

    #@60
    if-nez p0, :cond_63

    #@62
    goto :goto_b

    #@63
    :cond_63
    const/4 p0, 0x6

    #@64
    goto :goto_a9

    #@65
    :sswitch_65
    const-string v0, "DrawPath"

    #@67
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result p0

    #@6b
    if-nez p0, :cond_6e

    #@6d
    goto :goto_b

    #@6e
    :cond_6e
    const/4 p0, 0x5

    #@6f
    goto :goto_a9

    #@70
    :sswitch_70
    const-string v0, "QuantizeInterpolator"

    #@72
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@75
    move-result p0

    #@76
    if-nez p0, :cond_79

    #@78
    goto :goto_b

    #@79
    :cond_79
    const/4 p0, 0x4

    #@7a
    goto :goto_a9

    #@7b
    :sswitch_7b
    const-string v0, "PathRotate"

    #@7d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result p0

    #@81
    if-nez p0, :cond_84

    #@83
    goto :goto_b

    #@84
    :cond_84
    const/4 p0, 0x3

    #@85
    goto :goto_a9

    #@86
    :sswitch_86
    const-string v0, "QuantizeMotionSteps"

    #@88
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result p0

    #@8c
    if-nez p0, :cond_90

    #@8e
    goto/16 :goto_b

    #@90
    :cond_90
    const/4 p0, 0x2

    #@91
    goto :goto_a9

    #@92
    :sswitch_92
    const-string v0, "QuantizeMotionPhase"

    #@94
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result p0

    #@98
    if-nez p0, :cond_9c

    #@9a
    goto/16 :goto_b

    #@9c
    :cond_9c
    const/4 p0, 0x1

    #@9d
    goto :goto_a9

    #@9e
    :sswitch_9e
    const-string v0, "AnimateCircleAngleTo"

    #@a0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result p0

    #@a4
    if-nez p0, :cond_a8

    #@a6
    goto/16 :goto_b

    #@a8
    :cond_a8
    const/4 p0, 0x0

    #@a9
    :goto_a9
    packed-switch p0, :pswitch_data_10a

    #@ac
    return v1

    #@ad
    :pswitch_ad
    const/16 p0, 0x25f

    #@af
    return p0

    #@b0
    :pswitch_b0
    const/16 p0, 0x25d

    #@b2
    return p0

    #@b3
    :pswitch_b3
    const/16 p0, 0x25b

    #@b5
    return p0

    #@b6
    :pswitch_b6
    const/16 p0, 0x264

    #@b8
    return p0

    #@b9
    :pswitch_b9
    const/16 p0, 0x263

    #@bb
    return p0

    #@bc
    :pswitch_bc
    const/16 p0, 0x261

    #@be
    return p0

    #@bf
    :pswitch_bf
    const/16 p0, 0x258

    #@c1
    return p0

    #@c2
    :pswitch_c2
    const/16 p0, 0x260

    #@c4
    return p0

    #@c5
    :pswitch_c5
    const/16 p0, 0x25c

    #@c7
    return p0

    #@c8
    :pswitch_c8
    const/16 p0, 0x259

    #@ca
    return p0

    #@cb
    :pswitch_cb
    const/16 p0, 0x262

    #@cd
    return p0

    #@ce
    :pswitch_ce
    const/16 p0, 0x25a

    #@d0
    return p0

    #@d1
    :pswitch_d1
    const/16 p0, 0x25e

    #@d3
    return p0

    #@d4
    :sswitch_data_d4
    .sparse-switch
        -0x7933ed83 -> :sswitch_9e
        -0x5b54b2ac -> :sswitch_92
        -0x5b24e900 -> :sswitch_86
        -0x594e6600 -> :sswitch_7b
        -0x3d700b48 -> :sswitch_70
        -0x2d70d857 -> :sswitch_65
        -0xde15873 -> :sswitch_5a
        0x43dc0025 -> :sswitch_4f
        0x5bbedc12 -> :sswitch_42
        0x5e65afd3 -> :sswitch_35
        0x61b6c700 -> :sswitch_28
        0x714d6c08 -> :sswitch_1b
        0x7dbf63f7 -> :sswitch_e
    .end sparse-switch

    #@10a
    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
    .end packed-switch
.end method
