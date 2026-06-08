.class public final enum Landroidx/core/graphics/BlendModeCompat;
.super Ljava/lang/Enum;
.source "BlendModeCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/core/graphics/BlendModeCompat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/core/graphics/BlendModeCompat;

.field public static final enum CLEAR:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum COLOR:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum COLOR_BURN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum COLOR_DODGE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DARKEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DIFFERENCE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_ATOP:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_IN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_OUT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum DST_OVER:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum EXCLUSION:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum HARD_LIGHT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum HUE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum LUMINOSITY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum MODULATE:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum OVERLAY:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum PLUS:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SATURATION:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SCREEN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SOFT_LIGHT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_IN:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_OUT:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

.field public static final enum XOR:Landroidx/core/graphics/BlendModeCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 31

    #@0
    .line 37
    new-instance v0, Landroidx/core/graphics/BlendModeCompat;

    #@2
    const-string v1, "CLEAR"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Landroidx/core/graphics/BlendModeCompat;->CLEAR:Landroidx/core/graphics/BlendModeCompat;

    #@a
    .line 47
    new-instance v1, Landroidx/core/graphics/BlendModeCompat;

    #@c
    const-string v3, "SRC"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Landroidx/core/graphics/BlendModeCompat;->SRC:Landroidx/core/graphics/BlendModeCompat;

    #@14
    .line 57
    new-instance v3, Landroidx/core/graphics/BlendModeCompat;

    #@16
    const-string v5, "DST"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Landroidx/core/graphics/BlendModeCompat;->DST:Landroidx/core/graphics/BlendModeCompat;

    #@1e
    .line 67
    new-instance v5, Landroidx/core/graphics/BlendModeCompat;

    #@20
    const-string v7, "SRC_OVER"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Landroidx/core/graphics/BlendModeCompat;->SRC_OVER:Landroidx/core/graphics/BlendModeCompat;

    #@28
    .line 77
    new-instance v7, Landroidx/core/graphics/BlendModeCompat;

    #@2a
    const-string v9, "DST_OVER"

    #@2c
    const/4 v10, 0x4

    #@2d
    invoke-direct {v7, v9, v10}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v7, Landroidx/core/graphics/BlendModeCompat;->DST_OVER:Landroidx/core/graphics/BlendModeCompat;

    #@32
    .line 88
    new-instance v9, Landroidx/core/graphics/BlendModeCompat;

    #@34
    const-string v11, "SRC_IN"

    #@36
    const/4 v12, 0x5

    #@37
    invoke-direct {v9, v11, v12}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v9, Landroidx/core/graphics/BlendModeCompat;->SRC_IN:Landroidx/core/graphics/BlendModeCompat;

    #@3c
    .line 98
    new-instance v11, Landroidx/core/graphics/BlendModeCompat;

    #@3e
    const-string v13, "DST_IN"

    #@40
    const/4 v14, 0x6

    #@41
    invoke-direct {v11, v13, v14}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v11, Landroidx/core/graphics/BlendModeCompat;->DST_IN:Landroidx/core/graphics/BlendModeCompat;

    #@46
    .line 110
    new-instance v13, Landroidx/core/graphics/BlendModeCompat;

    #@48
    const-string v15, "SRC_OUT"

    #@4a
    const/4 v14, 0x7

    #@4b
    invoke-direct {v13, v15, v14}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@4e
    sput-object v13, Landroidx/core/graphics/BlendModeCompat;->SRC_OUT:Landroidx/core/graphics/BlendModeCompat;

    #@50
    .line 122
    new-instance v15, Landroidx/core/graphics/BlendModeCompat;

    #@52
    const-string v14, "DST_OUT"

    #@54
    const/16 v12, 0x8

    #@56
    invoke-direct {v15, v14, v12}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@59
    sput-object v15, Landroidx/core/graphics/BlendModeCompat;->DST_OUT:Landroidx/core/graphics/BlendModeCompat;

    #@5b
    .line 133
    new-instance v14, Landroidx/core/graphics/BlendModeCompat;

    #@5d
    const-string v12, "SRC_ATOP"

    #@5f
    const/16 v10, 0x9

    #@61
    invoke-direct {v14, v12, v10}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@64
    sput-object v14, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    #@66
    .line 144
    new-instance v12, Landroidx/core/graphics/BlendModeCompat;

    #@68
    const-string v10, "DST_ATOP"

    #@6a
    const/16 v8, 0xa

    #@6c
    invoke-direct {v12, v10, v8}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@6f
    sput-object v12, Landroidx/core/graphics/BlendModeCompat;->DST_ATOP:Landroidx/core/graphics/BlendModeCompat;

    #@71
    .line 157
    new-instance v10, Landroidx/core/graphics/BlendModeCompat;

    #@73
    const-string v8, "XOR"

    #@75
    const/16 v6, 0xb

    #@77
    invoke-direct {v10, v8, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v10, Landroidx/core/graphics/BlendModeCompat;->XOR:Landroidx/core/graphics/BlendModeCompat;

    #@7c
    .line 168
    new-instance v8, Landroidx/core/graphics/BlendModeCompat;

    #@7e
    const-string v6, "PLUS"

    #@80
    const/16 v4, 0xc

    #@82
    invoke-direct {v8, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@85
    sput-object v8, Landroidx/core/graphics/BlendModeCompat;->PLUS:Landroidx/core/graphics/BlendModeCompat;

    #@87
    .line 179
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    #@89
    const-string v4, "MODULATE"

    #@8b
    const/16 v2, 0xd

    #@8d
    invoke-direct {v6, v4, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@90
    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->MODULATE:Landroidx/core/graphics/BlendModeCompat;

    #@92
    .line 189
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    #@94
    const-string v2, "SCREEN"

    #@96
    move-object/from16 v16, v6

    #@98
    const/16 v6, 0xe

    #@9a
    invoke-direct {v4, v2, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@9d
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->SCREEN:Landroidx/core/graphics/BlendModeCompat;

    #@9f
    .line 204
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    #@a1
    const-string v6, "OVERLAY"

    #@a3
    move-object/from16 v17, v4

    #@a5
    const/16 v4, 0xf

    #@a7
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@aa
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->OVERLAY:Landroidx/core/graphics/BlendModeCompat;

    #@ac
    .line 217
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    #@ae
    const-string v4, "DARKEN"

    #@b0
    move-object/from16 v18, v2

    #@b2
    const/16 v2, 0x10

    #@b4
    invoke-direct {v6, v4, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@b7
    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->DARKEN:Landroidx/core/graphics/BlendModeCompat;

    #@b9
    .line 230
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    #@bb
    const-string v2, "LIGHTEN"

    #@bd
    move-object/from16 v19, v6

    #@bf
    const/16 v6, 0x11

    #@c1
    invoke-direct {v4, v2, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@c4
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->LIGHTEN:Landroidx/core/graphics/BlendModeCompat;

    #@c6
    .line 250
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    #@c8
    const-string v6, "COLOR_DODGE"

    #@ca
    move-object/from16 v20, v4

    #@cc
    const/16 v4, 0x12

    #@ce
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@d1
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->COLOR_DODGE:Landroidx/core/graphics/BlendModeCompat;

    #@d3
    .line 274
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    #@d5
    const-string v4, "COLOR_BURN"

    #@d7
    move-object/from16 v21, v2

    #@d9
    const/16 v2, 0x13

    #@db
    invoke-direct {v6, v4, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@de
    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->COLOR_BURN:Landroidx/core/graphics/BlendModeCompat;

    #@e0
    .line 296
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    #@e2
    const-string v2, "HARD_LIGHT"

    #@e4
    move-object/from16 v22, v6

    #@e6
    const/16 v6, 0x14

    #@e8
    invoke-direct {v4, v2, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@eb
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->HARD_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    #@ed
    .line 342
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    #@ef
    const-string v6, "SOFT_LIGHT"

    #@f1
    move-object/from16 v23, v4

    #@f3
    const/16 v4, 0x15

    #@f5
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@f8
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->SOFT_LIGHT:Landroidx/core/graphics/BlendModeCompat;

    #@fa
    .line 361
    new-instance v6, Landroidx/core/graphics/BlendModeCompat;

    #@fc
    const-string v4, "DIFFERENCE"

    #@fe
    move-object/from16 v24, v2

    #@100
    const/16 v2, 0x16

    #@102
    invoke-direct {v6, v4, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@105
    sput-object v6, Landroidx/core/graphics/BlendModeCompat;->DIFFERENCE:Landroidx/core/graphics/BlendModeCompat;

    #@107
    .line 379
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    #@109
    const-string v4, "EXCLUSION"

    #@10b
    move-object/from16 v25, v6

    #@10d
    const/16 v6, 0x17

    #@10f
    invoke-direct {v2, v4, v6}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@112
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->EXCLUSION:Landroidx/core/graphics/BlendModeCompat;

    #@114
    .line 391
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    #@116
    const-string v6, "MULTIPLY"

    #@118
    move-object/from16 v26, v2

    #@11a
    const/16 v2, 0x18

    #@11c
    invoke-direct {v4, v6, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@11f
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->MULTIPLY:Landroidx/core/graphics/BlendModeCompat;

    #@121
    .line 398
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    #@123
    const-string v6, "HUE"

    #@125
    move-object/from16 v27, v4

    #@127
    const/16 v4, 0x19

    #@129
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@12c
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->HUE:Landroidx/core/graphics/BlendModeCompat;

    #@12e
    .line 405
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    #@130
    const-string v6, "SATURATION"

    #@132
    move-object/from16 v28, v2

    #@134
    const/16 v2, 0x1a

    #@136
    invoke-direct {v4, v6, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@139
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->SATURATION:Landroidx/core/graphics/BlendModeCompat;

    #@13b
    .line 412
    new-instance v2, Landroidx/core/graphics/BlendModeCompat;

    #@13d
    const-string v6, "COLOR"

    #@13f
    move-object/from16 v29, v4

    #@141
    const/16 v4, 0x1b

    #@143
    invoke-direct {v2, v6, v4}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@146
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->COLOR:Landroidx/core/graphics/BlendModeCompat;

    #@148
    .line 419
    new-instance v4, Landroidx/core/graphics/BlendModeCompat;

    #@14a
    const-string v6, "LUMINOSITY"

    #@14c
    move-object/from16 v30, v2

    #@14e
    const/16 v2, 0x1c

    #@150
    invoke-direct {v4, v6, v2}, Landroidx/core/graphics/BlendModeCompat;-><init>(Ljava/lang/String;I)V

    #@153
    sput-object v4, Landroidx/core/graphics/BlendModeCompat;->LUMINOSITY:Landroidx/core/graphics/BlendModeCompat;

    #@155
    const/16 v2, 0x1d

    #@157
    new-array v2, v2, [Landroidx/core/graphics/BlendModeCompat;

    #@159
    const/4 v6, 0x0

    #@15a
    aput-object v0, v2, v6

    #@15c
    const/4 v0, 0x1

    #@15d
    aput-object v1, v2, v0

    #@15f
    const/4 v0, 0x2

    #@160
    aput-object v3, v2, v0

    #@162
    const/4 v0, 0x3

    #@163
    aput-object v5, v2, v0

    #@165
    const/4 v0, 0x4

    #@166
    aput-object v7, v2, v0

    #@168
    const/4 v0, 0x5

    #@169
    aput-object v9, v2, v0

    #@16b
    const/4 v0, 0x6

    #@16c
    aput-object v11, v2, v0

    #@16e
    const/4 v0, 0x7

    #@16f
    aput-object v13, v2, v0

    #@171
    const/16 v0, 0x8

    #@173
    aput-object v15, v2, v0

    #@175
    const/16 v0, 0x9

    #@177
    aput-object v14, v2, v0

    #@179
    const/16 v0, 0xa

    #@17b
    aput-object v12, v2, v0

    #@17d
    const/16 v0, 0xb

    #@17f
    aput-object v10, v2, v0

    #@181
    const/16 v0, 0xc

    #@183
    aput-object v8, v2, v0

    #@185
    const/16 v0, 0xd

    #@187
    aput-object v16, v2, v0

    #@189
    const/16 v0, 0xe

    #@18b
    aput-object v17, v2, v0

    #@18d
    const/16 v0, 0xf

    #@18f
    aput-object v18, v2, v0

    #@191
    const/16 v0, 0x10

    #@193
    aput-object v19, v2, v0

    #@195
    const/16 v0, 0x11

    #@197
    aput-object v20, v2, v0

    #@199
    const/16 v0, 0x12

    #@19b
    aput-object v21, v2, v0

    #@19d
    const/16 v0, 0x13

    #@19f
    aput-object v22, v2, v0

    #@1a1
    const/16 v0, 0x14

    #@1a3
    aput-object v23, v2, v0

    #@1a5
    const/16 v0, 0x15

    #@1a7
    aput-object v24, v2, v0

    #@1a9
    const/16 v0, 0x16

    #@1ab
    aput-object v25, v2, v0

    #@1ad
    const/16 v0, 0x17

    #@1af
    aput-object v26, v2, v0

    #@1b1
    const/16 v0, 0x18

    #@1b3
    aput-object v27, v2, v0

    #@1b5
    const/16 v0, 0x19

    #@1b7
    aput-object v28, v2, v0

    #@1b9
    const/16 v0, 0x1a

    #@1bb
    aput-object v29, v2, v0

    #@1bd
    const/16 v0, 0x1b

    #@1bf
    aput-object v30, v2, v0

    #@1c1
    const/16 v0, 0x1c

    #@1c3
    aput-object v4, v2, v0

    #@1c5
    .line 27
    sput-object v2, Landroidx/core/graphics/BlendModeCompat;->$VALUES:[Landroidx/core/graphics/BlendModeCompat;

    #@1c7
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    #@0
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/core/graphics/BlendModeCompat;
    .registers 2

    #@0
    .line 27
    const-class v0, Landroidx/core/graphics/BlendModeCompat;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/core/graphics/BlendModeCompat;

    #@8
    return-object p0
.end method

.method public static values()[Landroidx/core/graphics/BlendModeCompat;
    .registers 1

    #@0
    .line 27
    sget-object v0, Landroidx/core/graphics/BlendModeCompat;->$VALUES:[Landroidx/core/graphics/BlendModeCompat;

    #@2
    invoke-virtual {v0}, [Landroidx/core/graphics/BlendModeCompat;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Landroidx/core/graphics/BlendModeCompat;

    #@8
    return-object v0
.end method
