.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AttributesType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyAttributes"

.field public static final S_ALPHA:Ljava/lang/String; = "alpha"

.field public static final S_CURVE_FIT:Ljava/lang/String; = "curveFit"

.field public static final S_CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final S_EASING:Ljava/lang/String; = "easing"

.field public static final S_ELEVATION:Ljava/lang/String; = "elevation"

.field public static final S_FRAME:Ljava/lang/String; = "frame"

.field public static final S_PATH_ROTATE:Ljava/lang/String; = "pathRotate"

.field public static final S_PIVOT_TARGET:Ljava/lang/String; = "pivotTarget"

.field public static final S_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final S_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final S_PROGRESS:Ljava/lang/String; = "progress"

.field public static final S_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final S_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final S_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final S_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final S_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final S_TARGET:Ljava/lang/String; = "target"

.field public static final S_TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final S_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static final S_TRANSLATION_Z:Ljava/lang/String; = "translationZ"

.field public static final S_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final TYPE_ALPHA:I = 0x12f

.field public static final TYPE_CURVE_FIT:I = 0x12d

.field public static final TYPE_EASING:I = 0x13d

.field public static final TYPE_ELEVATION:I = 0x133

.field public static final TYPE_PATH_ROTATE:I = 0x13c

.field public static final TYPE_PIVOT_TARGET:I = 0x13e

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

.field public static final TYPE_VISIBILITY:I = 0x12e


# direct methods
.method static constructor <clinit>()V
    .registers 21

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
    const-string v17, "CUSTOM"

    #@24
    const-string v18, "frame"

    #@26
    const-string v19, "target"

    #@28
    const-string v20, "pivotTarget"

    #@2a
    .line 115
    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->KEY_WORDS:[Ljava/lang/String;

    #@30
    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    #@0
    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_14c

    #@b
    :goto_b
    move p0, v1

    #@c
    goto/16 :goto_10c

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
    const/16 p0, 0x13

    #@19
    goto/16 :goto_10c

    #@1b
    :sswitch_1b
    const-string v0, "pivotTarget"

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
    const/16 p0, 0x12

    #@26
    goto/16 :goto_10c

    #@28
    :sswitch_28
    const-string v0, "pathRotate"

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
    const/16 p0, 0x11

    #@33
    goto/16 :goto_10c

    #@35
    :sswitch_35
    const-string v0, "curveFit"

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
    const/16 p0, 0x10

    #@40
    goto/16 :goto_10c

    #@42
    :sswitch_42
    const-string v0, "frame"

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
    const/16 p0, 0xf

    #@4d
    goto/16 :goto_10c

    #@4f
    :sswitch_4f
    const-string v0, "alpha"

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
    const/16 p0, 0xe

    #@5a
    goto/16 :goto_10c

    #@5c
    :sswitch_5c
    const-string v0, "elevation"

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
    const/16 p0, 0xd

    #@67
    goto/16 :goto_10c

    #@69
    :sswitch_69
    const-string v0, "target"

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
    const/16 p0, 0xc

    #@74
    goto/16 :goto_10c

    #@76
    :sswitch_76
    const-string v0, "scaleY"

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
    const/16 p0, 0xb

    #@81
    goto/16 :goto_10c

    #@83
    :sswitch_83
    const-string v0, "scaleX"

    #@85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result p0

    #@89
    if-nez p0, :cond_8d

    #@8b
    goto/16 :goto_b

    #@8d
    :cond_8d
    const/16 p0, 0xa

    #@8f
    goto/16 :goto_10c

    #@91
    :sswitch_91
    const-string v0, "pivotY"

    #@93
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@96
    move-result p0

    #@97
    if-nez p0, :cond_9b

    #@99
    goto/16 :goto_b

    #@9b
    :cond_9b
    const/16 p0, 0x9

    #@9d
    goto/16 :goto_10c

    #@9f
    :sswitch_9f
    const-string v0, "pivotX"

    #@a1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result p0

    #@a5
    if-nez p0, :cond_a9

    #@a7
    goto/16 :goto_b

    #@a9
    :cond_a9
    const/16 p0, 0x8

    #@ab
    goto/16 :goto_10c

    #@ad
    :sswitch_ad
    const-string v0, "progress"

    #@af
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result p0

    #@b3
    if-nez p0, :cond_b7

    #@b5
    goto/16 :goto_b

    #@b7
    :cond_b7
    const/4 p0, 0x7

    #@b8
    goto :goto_10c

    #@b9
    :sswitch_b9
    const-string v0, "translationZ"

    #@bb
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@be
    move-result p0

    #@bf
    if-nez p0, :cond_c3

    #@c1
    goto/16 :goto_b

    #@c3
    :cond_c3
    const/4 p0, 0x6

    #@c4
    goto :goto_10c

    #@c5
    :sswitch_c5
    const-string v0, "translationY"

    #@c7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ca
    move-result p0

    #@cb
    if-nez p0, :cond_cf

    #@cd
    goto/16 :goto_b

    #@cf
    :cond_cf
    const/4 p0, 0x5

    #@d0
    goto :goto_10c

    #@d1
    :sswitch_d1
    const-string v0, "translationX"

    #@d3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d6
    move-result p0

    #@d7
    if-nez p0, :cond_db

    #@d9
    goto/16 :goto_b

    #@db
    :cond_db
    const/4 p0, 0x4

    #@dc
    goto :goto_10c

    #@dd
    :sswitch_dd
    const-string v0, "rotationZ"

    #@df
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e2
    move-result p0

    #@e3
    if-nez p0, :cond_e7

    #@e5
    goto/16 :goto_b

    #@e7
    :cond_e7
    const/4 p0, 0x3

    #@e8
    goto :goto_10c

    #@e9
    :sswitch_e9
    const-string v0, "rotationY"

    #@eb
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ee
    move-result p0

    #@ef
    if-nez p0, :cond_f3

    #@f1
    goto/16 :goto_b

    #@f3
    :cond_f3
    const/4 p0, 0x2

    #@f4
    goto :goto_10c

    #@f5
    :sswitch_f5
    const-string v0, "rotationX"

    #@f7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fa
    move-result p0

    #@fb
    if-nez p0, :cond_ff

    #@fd
    goto/16 :goto_b

    #@ff
    :cond_ff
    const/4 p0, 0x1

    #@100
    goto :goto_10c

    #@101
    :sswitch_101
    const-string v0, "easing"

    #@103
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@106
    move-result p0

    #@107
    if-nez p0, :cond_10b

    #@109
    goto/16 :goto_b

    #@10b
    :cond_10b
    const/4 p0, 0x0

    #@10c
    :goto_10c
    packed-switch p0, :pswitch_data_19e

    #@10f
    return v1

    #@110
    :pswitch_110
    const/16 p0, 0x12e

    #@112
    return p0

    #@113
    :pswitch_113
    const/16 p0, 0x13e

    #@115
    return p0

    #@116
    :pswitch_116
    const/16 p0, 0x13c

    #@118
    return p0

    #@119
    :pswitch_119
    const/16 p0, 0x12d

    #@11b
    return p0

    #@11c
    :pswitch_11c
    const/16 p0, 0x64

    #@11e
    return p0

    #@11f
    :pswitch_11f
    const/16 p0, 0x12f

    #@121
    return p0

    #@122
    :pswitch_122
    const/16 p0, 0x133

    #@124
    return p0

    #@125
    :pswitch_125
    const/16 p0, 0x65

    #@127
    return p0

    #@128
    :pswitch_128
    const/16 p0, 0x138

    #@12a
    return p0

    #@12b
    :pswitch_12b
    const/16 p0, 0x137

    #@12d
    return p0

    #@12e
    :pswitch_12e
    const/16 p0, 0x13a

    #@130
    return p0

    #@131
    :pswitch_131
    const/16 p0, 0x139

    #@133
    return p0

    #@134
    :pswitch_134
    const/16 p0, 0x13b

    #@136
    return p0

    #@137
    :pswitch_137
    const/16 p0, 0x132

    #@139
    return p0

    #@13a
    :pswitch_13a
    const/16 p0, 0x131

    #@13c
    return p0

    #@13d
    :pswitch_13d
    const/16 p0, 0x130

    #@13f
    return p0

    #@140
    :pswitch_140
    const/16 p0, 0x136

    #@142
    return p0

    #@143
    :pswitch_143
    const/16 p0, 0x135

    #@145
    return p0

    #@146
    :pswitch_146
    const/16 p0, 0x134

    #@148
    return p0

    #@149
    :pswitch_149
    const/16 p0, 0x13d

    #@14b
    return p0

    #@14c
    :sswitch_data_14c
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_101
        -0x4a771f66 -> :sswitch_f5
        -0x4a771f65 -> :sswitch_e9
        -0x4a771f64 -> :sswitch_dd
        -0x490b9c39 -> :sswitch_d1
        -0x490b9c38 -> :sswitch_c5
        -0x490b9c37 -> :sswitch_b9
        -0x3bab3dd3 -> :sswitch_ad
        -0x3ae243aa -> :sswitch_9f
        -0x3ae243a9 -> :sswitch_91
        -0x3621dfb2 -> :sswitch_83
        -0x3621dfb1 -> :sswitch_76
        -0x34818e6f -> :sswitch_69
        -0x42d1a3 -> :sswitch_5c
        0x589b15e -> :sswitch_4f
        0x5d2a96d -> :sswitch_42
        0x2283b8a2 -> :sswitch_35
        0x2fdfbde0 -> :sswitch_28
        0x45917073 -> :sswitch_1b
        0x73b66312 -> :sswitch_e
    .end sparse-switch

    #@19e
    :pswitch_data_19e
    .packed-switch 0x0
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_140
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
    .end packed-switch
.end method

.method public static getType(I)I
    .registers 2

    #@0
    const/16 v0, 0x64

    #@2
    if-eq p0, v0, :cond_12

    #@4
    const/16 v0, 0x65

    #@6
    if-eq p0, v0, :cond_f

    #@8
    packed-switch p0, :pswitch_data_14

    #@b
    const/4 p0, -0x1

    #@c
    return p0

    #@d
    :pswitch_d
    const/4 p0, 0x4

    #@e
    return p0

    #@f
    :cond_f
    :pswitch_f
    const/16 p0, 0x8

    #@11
    return p0

    #@12
    :cond_12
    :pswitch_12
    const/4 p0, 0x2

    #@13
    return p0

    #@14
    :pswitch_data_14
    .packed-switch 0x12d
        :pswitch_12
        :pswitch_12
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method
