.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CycleType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyCycle"

.field public static final S_ALPHA:Ljava/lang/String; = "alpha"

.field public static final S_CURVE_FIT:Ljava/lang/String; = "curveFit"

.field public static final S_CUSTOM_WAVE_SHAPE:Ljava/lang/String; = "customWave"

.field public static final S_EASING:Ljava/lang/String; = "easing"

.field public static final S_ELEVATION:Ljava/lang/String; = "elevation"

.field public static final S_PATH_ROTATE:Ljava/lang/String; = "pathRotate"

.field public static final S_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final S_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final S_PROGRESS:Ljava/lang/String; = "progress"

.field public static final S_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final S_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final S_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final S_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final S_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final S_TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final S_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static final S_TRANSLATION_Z:Ljava/lang/String; = "translationZ"

.field public static final S_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final S_WAVE_OFFSET:Ljava/lang/String; = "offset"

.field public static final S_WAVE_PERIOD:Ljava/lang/String; = "period"

.field public static final S_WAVE_PHASE:Ljava/lang/String; = "phase"

.field public static final S_WAVE_SHAPE:Ljava/lang/String; = "waveShape"

.field public static final TYPE_ALPHA:I = 0x193

.field public static final TYPE_CURVE_FIT:I = 0x191

.field public static final TYPE_CUSTOM_WAVE_SHAPE:I = 0x1a6

.field public static final TYPE_EASING:I = 0x1a4

.field public static final TYPE_ELEVATION:I = 0x133

.field public static final TYPE_PATH_ROTATE:I = 0x1a0

.field public static final TYPE_PIVOT_X:I = 0x139

.field public static final TYPE_PIVOT_Y:I = 0x13a

.field public static final TYPE_PROGRESS:I = 0x13b

.field public static final TYPE_ROTATION_X:I = 0x134

.field public static final TYPE_ROTATION_Y:I = 0x135

.field public static final TYPE_ROTATION_Z:I = 0x136

.field public static final TYPE_SCALE_X:I = 0x137

.field public static final TYPE_SCALE_Y:I = 0x138

.field public static final TYPE_TRANSLATION_X:I = 0x130

.field public static final TYPE_TRANSLATION_Y:I = 0x131

.field public static final TYPE_TRANSLATION_Z:I = 0x132

.field public static final TYPE_VISIBILITY:I = 0x192

.field public static final TYPE_WAVE_OFFSET:I = 0x1a8

.field public static final TYPE_WAVE_PERIOD:I = 0x1a7

.field public static final TYPE_WAVE_PHASE:I = 0x1a9

.field public static final TYPE_WAVE_SHAPE:I = 0x1a5


# direct methods
.method static constructor <clinit>()V
    .registers 22

    #@0
    const-string v0, "curveFit"

    #@2
    const-string v1, "visibility"

    #@4
    const-string v2, "alpha"

    #@6
    const-string v3, "translationX"

    #@8
    const-string v4, "translationY"

    #@a
    const-string v5, "translationZ"

    #@c
    const-string v6, "elevation"

    #@e
    const-string v7, "rotationX"

    #@10
    const-string v8, "rotationY"

    #@12
    const-string v9, "rotationZ"

    #@14
    const-string v10, "scaleX"

    #@16
    const-string v11, "scaleY"

    #@18
    const-string v12, "pivotX"

    #@1a
    const-string v13, "pivotY"

    #@1c
    const-string v14, "progress"

    #@1e
    const-string v15, "pathRotate"

    #@20
    const-string v16, "easing"

    #@22
    const-string v17, "waveShape"

    #@24
    const-string v18, "customWave"

    #@26
    const-string v19, "period"

    #@28
    const-string v20, "offset"

    #@2a
    const-string v21, "phase"

    #@2c
    .line 271
    filled-new-array/range {v0 .. v21}, [Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$CycleType;->KEY_WORDS:[Ljava/lang/String;

    #@32
    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    #@0
    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_108

    #@b
    :goto_b
    move p0, v1

    #@c
    goto/16 :goto_d3

    #@e
    :sswitch_e
    const-string v0, "visibility"

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
    const/16 p0, 0xf

    #@19
    goto/16 :goto_d3

    #@1b
    :sswitch_1b
    const-string v0, "pathRotate"

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
    const/16 p0, 0xe

    #@26
    goto/16 :goto_d3

    #@28
    :sswitch_28
    const-string v0, "curveFit"

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
    const/16 p0, 0xd

    #@33
    goto/16 :goto_d3

    #@35
    :sswitch_35
    const-string v0, "alpha"

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
    const/16 p0, 0xc

    #@40
    goto/16 :goto_d3

    #@42
    :sswitch_42
    const-string v0, "scaleY"

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
    const/16 p0, 0xb

    #@4d
    goto/16 :goto_d3

    #@4f
    :sswitch_4f
    const-string v0, "scaleX"

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
    const/16 p0, 0xa

    #@5a
    goto/16 :goto_d3

    #@5c
    :sswitch_5c
    const-string v0, "pivotY"

    #@5e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result p0

    #@62
    if-nez p0, :cond_65

    #@64
    goto :goto_b

    #@65
    :cond_65
    const/16 p0, 0x9

    #@67
    goto/16 :goto_d3

    #@69
    :sswitch_69
    const-string v0, "pivotX"

    #@6b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result p0

    #@6f
    if-nez p0, :cond_72

    #@71
    goto :goto_b

    #@72
    :cond_72
    const/16 p0, 0x8

    #@74
    goto/16 :goto_d3

    #@76
    :sswitch_76
    const-string v0, "progress"

    #@78
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result p0

    #@7c
    if-nez p0, :cond_7f

    #@7e
    goto :goto_b

    #@7f
    :cond_7f
    const/4 p0, 0x7

    #@80
    goto :goto_d3

    #@81
    :sswitch_81
    const-string v0, "translationZ"

    #@83
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result p0

    #@87
    if-nez p0, :cond_8a

    #@89
    goto :goto_b

    #@8a
    :cond_8a
    const/4 p0, 0x6

    #@8b
    goto :goto_d3

    #@8c
    :sswitch_8c
    const-string v0, "translationY"

    #@8e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result p0

    #@92
    if-nez p0, :cond_96

    #@94
    goto/16 :goto_b

    #@96
    :cond_96
    const/4 p0, 0x5

    #@97
    goto :goto_d3

    #@98
    :sswitch_98
    const-string v0, "translationX"

    #@9a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result p0

    #@9e
    if-nez p0, :cond_a2

    #@a0
    goto/16 :goto_b

    #@a2
    :cond_a2
    const/4 p0, 0x4

    #@a3
    goto :goto_d3

    #@a4
    :sswitch_a4
    const-string v0, "rotationZ"

    #@a6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a9
    move-result p0

    #@aa
    if-nez p0, :cond_ae

    #@ac
    goto/16 :goto_b

    #@ae
    :cond_ae
    const/4 p0, 0x3

    #@af
    goto :goto_d3

    #@b0
    :sswitch_b0
    const-string v0, "rotationY"

    #@b2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b5
    move-result p0

    #@b6
    if-nez p0, :cond_ba

    #@b8
    goto/16 :goto_b

    #@ba
    :cond_ba
    const/4 p0, 0x2

    #@bb
    goto :goto_d3

    #@bc
    :sswitch_bc
    const-string v0, "rotationX"

    #@be
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c1
    move-result p0

    #@c2
    if-nez p0, :cond_c6

    #@c4
    goto/16 :goto_b

    #@c6
    :cond_c6
    const/4 p0, 0x1

    #@c7
    goto :goto_d3

    #@c8
    :sswitch_c8
    const-string v0, "easing"

    #@ca
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cd
    move-result p0

    #@ce
    if-nez p0, :cond_d2

    #@d0
    goto/16 :goto_b

    #@d2
    :cond_d2
    const/4 p0, 0x0

    #@d3
    :goto_d3
    packed-switch p0, :pswitch_data_14a

    #@d6
    return v1

    #@d7
    :pswitch_d7
    const/16 p0, 0x192

    #@d9
    return p0

    #@da
    :pswitch_da
    const/16 p0, 0x1a0

    #@dc
    return p0

    #@dd
    :pswitch_dd
    const/16 p0, 0x191

    #@df
    return p0

    #@e0
    :pswitch_e0
    const/16 p0, 0x193

    #@e2
    return p0

    #@e3
    :pswitch_e3
    const/16 p0, 0x138

    #@e5
    return p0

    #@e6
    :pswitch_e6
    const/16 p0, 0x137

    #@e8
    return p0

    #@e9
    :pswitch_e9
    const/16 p0, 0x13a

    #@eb
    return p0

    #@ec
    :pswitch_ec
    const/16 p0, 0x139

    #@ee
    return p0

    #@ef
    :pswitch_ef
    const/16 p0, 0x13b

    #@f1
    return p0

    #@f2
    :pswitch_f2
    const/16 p0, 0x132

    #@f4
    return p0

    #@f5
    :pswitch_f5
    const/16 p0, 0x131

    #@f7
    return p0

    #@f8
    :pswitch_f8
    const/16 p0, 0x130

    #@fa
    return p0

    #@fb
    :pswitch_fb
    const/16 p0, 0x136

    #@fd
    return p0

    #@fe
    :pswitch_fe
    const/16 p0, 0x135

    #@100
    return p0

    #@101
    :pswitch_101
    const/16 p0, 0x134

    #@103
    return p0

    #@104
    :pswitch_104
    const/16 p0, 0x1a4

    #@106
    return p0

    #@107
    nop

    #@108
    :sswitch_data_108
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_c8
        -0x4a771f66 -> :sswitch_bc
        -0x4a771f65 -> :sswitch_b0
        -0x4a771f64 -> :sswitch_a4
        -0x490b9c39 -> :sswitch_98
        -0x490b9c38 -> :sswitch_8c
        -0x490b9c37 -> :sswitch_81
        -0x3bab3dd3 -> :sswitch_76
        -0x3ae243aa -> :sswitch_69
        -0x3ae243a9 -> :sswitch_5c
        -0x3621dfb2 -> :sswitch_4f
        -0x3621dfb1 -> :sswitch_42
        0x589b15e -> :sswitch_35
        0x2283b8a2 -> :sswitch_28
        0x2fdfbde0 -> :sswitch_1b
        0x73b66312 -> :sswitch_e
    .end sparse-switch

    #@14a
    :pswitch_data_14a
    .packed-switch 0x0
        :pswitch_104
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
        :pswitch_d7
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2

    #@0
    const/16 v0, 0x64

    #@2
    if-eq p0, v0, :cond_24

    #@4
    const/16 v0, 0x65

    #@6
    if-eq p0, v0, :cond_21

    #@8
    const/16 v0, 0x1a0

    #@a
    if-eq p0, v0, :cond_1f

    #@c
    const/16 v0, 0x1a4

    #@e
    if-eq p0, v0, :cond_21

    #@10
    const/16 v0, 0x1a5

    #@12
    if-eq p0, v0, :cond_21

    #@14
    packed-switch p0, :pswitch_data_26

    #@17
    packed-switch p0, :pswitch_data_42

    #@1a
    packed-switch p0, :pswitch_data_4c

    #@1d
    const/4 p0, -0x1

    #@1e
    return p0

    #@1f
    :cond_1f
    :pswitch_1f
    const/4 p0, 0x4

    #@20
    return p0

    #@21
    :cond_21
    const/16 p0, 0x8

    #@23
    return p0

    #@24
    :cond_24
    :pswitch_24
    const/4 p0, 0x2

    #@25
    return p0

    #@26
    :pswitch_data_26
    .packed-switch 0x130
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    #@42
    :pswitch_data_42
    .packed-switch 0x191
        :pswitch_24
        :pswitch_24
        :pswitch_1f
    .end packed-switch

    #@4c
    :pswitch_data_4c
    .packed-switch 0x1a7
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method
