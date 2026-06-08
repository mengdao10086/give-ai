.class synthetic Landroidx/core/graphics/BlendModeUtils$1;
.super Ljava/lang/Object;
.source "BlendModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/BlendModeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$core$graphics$BlendModeCompat:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 45
    invoke-static {}, Landroidx/core/graphics/BlendModeCompat;->values()[Landroidx/core/graphics/BlendModeCompat;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    new-array v0, v0, [I

    #@7
    sput-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@9
    :try_start_9
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->CLEAR:Landroidx/core/graphics/BlendModeCompat;

    #@b
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x1

    #@10
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    #@12
    :catch_12
    :try_start_12
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@14
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC:Landroidx/core/graphics/BlendModeCompat;

    #@16
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@19
    move-result v1

    #@1a
    const/4 v2, 0x2

    #@1b
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    #@1d
    :catch_1d
    :try_start_1d
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@1f
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->DST:Landroidx/core/graphics/BlendModeCompat;

    #@21
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@24
    move-result v1

    #@25
    const/4 v2, 0x3

    #@26
    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    #@28
    :catch_28
    :try_start_28
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@2a
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

    #@2c
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@2f
    move-result v1

    #@30
    const/4 v2, 0x4

    #@31
    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    #@33
    :catch_33
    :try_start_33
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@35
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->DST_OVER:Landroidx/core/graphics/BlendModeCompat;

    #@37
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@3a
    move-result v1

    #@3b
    const/4 v2, 0x5

    #@3c
    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    #@3e
    :catch_3e
    :try_start_3e
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@40
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC_IN:Landroidx/core/graphics/BlendModeCompat;

    #@42
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@45
    move-result v1

    #@46
    const/4 v2, 0x6

    #@47
    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    #@49
    :catch_49
    :try_start_49
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@4b
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->DST_IN:Landroidx/core/graphics/BlendModeCompat;

    #@4d
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@50
    move-result v1

    #@51
    const/4 v2, 0x7

    #@52
    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    #@54
    :catch_54
    :try_start_54
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@56
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC_OUT:Landroidx/core/graphics/BlendModeCompat;

    #@58
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@5b
    move-result v1

    #@5c
    const/16 v2, 0x8

    #@5e
    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    #@60
    :catch_60
    :try_start_60
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@62
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->DST_OUT:Landroidx/core/graphics/BlendModeCompat;

    #@64
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@67
    move-result v1

    #@68
    const/16 v2, 0x9

    #@6a
    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    #@6c
    :catch_6c
    :try_start_6c
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@6e
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    #@70
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@73
    move-result v1

    #@74
    const/16 v2, 0xa

    #@76
    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    #@78
    :catch_78
    :try_start_78
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@7a
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->DST_ATOP:Landroidx/core/graphics/BlendModeCompat;

    #@7c
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@7f
    move-result v1

    #@80
    const/16 v2, 0xb

    #@82
    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    #@84
    :catch_84
    :try_start_84
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@86
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->XOR:Landroidx/core/graphics/BlendModeCompat;

    #@88
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@8b
    move-result v1

    #@8c
    const/16 v2, 0xc

    #@8e
    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    #@90
    :catch_90
    :try_start_90
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@92
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->PLUS:Landroidx/core/graphics/BlendModeCompat;

    #@94
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@97
    move-result v1

    #@98
    const/16 v2, 0xd

    #@9a
    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    #@9c
    :catch_9c
    :try_start_9c
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@9e
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->MODULATE:Landroidx/core/graphics/BlendModeCompat;

    #@a0
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@a3
    move-result v1

    #@a4
    const/16 v2, 0xe

    #@a6
    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    #@a8
    :catch_a8
    :try_start_a8
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@aa
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SCREEN:Landroidx/core/graphics/BlendModeCompat;

    #@ac
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@af
    move-result v1

    #@b0
    const/16 v2, 0xf

    #@b2
    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    #@b4
    :catch_b4
    :try_start_b4
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@b6
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->OVERLAY:Landroidx/core/graphics/BlendModeCompat;

    #@b8
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@bb
    move-result v1

    #@bc
    const/16 v2, 0x10

    #@be
    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    #@c0
    :catch_c0
    :try_start_c0
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@c2
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->DARKEN:Landroidx/core/graphics/BlendModeCompat;

    #@c4
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@c7
    move-result v1

    #@c8
    const/16 v2, 0x11

    #@ca
    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    #@cc
    :catch_cc
    :try_start_cc
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@ce
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

    #@d0
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@d3
    move-result v1

    #@d4
    const/16 v2, 0x12

    #@d6
    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    #@d8
    :catch_d8
    :try_start_d8
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@da
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->COLOR_DODGE:Landroidx/core/graphics/BlendModeCompat;

    #@dc
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@df
    move-result v1

    #@e0
    const/16 v2, 0x13

    #@e2
    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d8 .. :try_end_e4} :catch_e4

    #@e4
    :catch_e4
    :try_start_e4
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@e6
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->COLOR_BURN:Landroidx/core/graphics/BlendModeCompat;

    #@e8
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@eb
    move-result v1

    #@ec
    const/16 v2, 0x14

    #@ee
    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_f0} :catch_f0

    #@f0
    :catch_f0
    :try_start_f0
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@f2
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->HARD_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    #@f4
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@f7
    move-result v1

    #@f8
    const/16 v2, 0x15

    #@fa
    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_fc

    #@fc
    :catch_fc
    :try_start_fc
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@fe
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SOFT_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    #@100
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@103
    move-result v1

    #@104
    const/16 v2, 0x16

    #@106
    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fc .. :try_end_108} :catch_108

    #@108
    :catch_108
    :try_start_108
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@10a
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->DIFFERENCE:Landroidx/core/graphics/BlendModeCompat;

    #@10c
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@10f
    move-result v1

    #@110
    const/16 v2, 0x17

    #@112
    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_114} :catch_114

    #@114
    :catch_114
    :try_start_114
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@116
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->EXCLUSION:Landroidx/core/graphics/BlendModeCompat;

    #@118
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@11b
    move-result v1

    #@11c
    const/16 v2, 0x18

    #@11e
    aput v2, v0, v1
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_120} :catch_120

    #@120
    :catch_120
    :try_start_120
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@122
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

    #@124
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@127
    move-result v1

    #@128
    const/16 v2, 0x19

    #@12a
    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_12c} :catch_12c

    #@12c
    :catch_12c
    :try_start_12c
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@12e
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->HUE:Landroidx/core/graphics/BlendModeCompat;

    #@130
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@133
    move-result v1

    #@134
    const/16 v2, 0x1a

    #@136
    aput v2, v0, v1
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_138} :catch_138

    #@138
    :catch_138
    :try_start_138
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@13a
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->SATURATION:Landroidx/core/graphics/BlendModeCompat;

    #@13c
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@13f
    move-result v1

    #@140
    const/16 v2, 0x1b

    #@142
    aput v2, v0, v1
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_144} :catch_144

    #@144
    :catch_144
    :try_start_144
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@146
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->COLOR:Landroidx/core/graphics/BlendModeCompat;

    #@148
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@14b
    move-result v1

    #@14c
    const/16 v2, 0x1c

    #@14e
    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_150

    #@150
    :catch_150
    :try_start_150
    sget-object v0, Landroidx/core/graphics/BlendModeUtils$1;->$SwitchMap$androidx$core$graphics$BlendModeCompat:[I

    #@152
    sget-object v1, Landroidx/core/graphics/BlendModeCompat;->LUMINOSITY:Landroidx/core/graphics/BlendModeCompat;

    #@154
    invoke-virtual {v1}, Landroidx/core/graphics/BlendModeCompat;->ordinal()I

    #@157
    move-result v1

    #@158
    const/16 v2, 0x1d

    #@15a
    aput v2, v0, v1
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_15c

    #@15c
    :catch_15c
    return-void
.end method
