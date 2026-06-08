.class public Lcom/google/android/material/color/utilities/Scheme;
.super Ljava/lang/Object;
.source "Scheme.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation


# instance fields
.field private background:I

.field private error:I

.field private errorContainer:I

.field private inverseOnSurface:I

.field private inversePrimary:I

.field private inverseSurface:I

.field private onBackground:I

.field private onError:I

.field private onErrorContainer:I

.field private onPrimary:I

.field private onPrimaryContainer:I

.field private onSecondary:I

.field private onSecondaryContainer:I

.field private onSurface:I

.field private onSurfaceVariant:I

.field private onTertiary:I

.field private onTertiaryContainer:I

.field private outline:I

.field private outlineVariant:I

.field private primary:I

.field private primaryContainer:I

.field private scrim:I

.field private secondary:I

.field private secondaryContainer:I

.field private shadow:I

.field private surface:I

.field private surfaceVariant:I

.field private tertiary:I

.field private tertiaryContainer:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .registers 32

    #@0
    move-object v0, p0

    #@1
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    move v1, p1

    #@5
    .line 97
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    #@7
    move v1, p2

    #@8
    .line 98
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    #@a
    move v1, p3

    #@b
    .line 99
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    #@d
    move v1, p4

    #@e
    .line 100
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    #@10
    move v1, p5

    #@11
    .line 101
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    #@13
    move v1, p6

    #@14
    .line 102
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    #@16
    move v1, p7

    #@17
    .line 103
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    #@19
    move v1, p8

    #@1a
    .line 104
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    #@1c
    move v1, p9

    #@1d
    .line 105
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    #@1f
    move v1, p10

    #@20
    .line 106
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    #@22
    move v1, p11

    #@23
    .line 107
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    #@25
    move v1, p12

    #@26
    .line 108
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    #@28
    move v1, p13

    #@29
    .line 109
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    #@2b
    move/from16 v1, p14

    #@2d
    .line 110
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    #@2f
    move/from16 v1, p15

    #@31
    .line 111
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    #@33
    move/from16 v1, p16

    #@35
    .line 112
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    #@37
    move/from16 v1, p17

    #@39
    .line 113
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    #@3b
    move/from16 v1, p18

    #@3d
    .line 114
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    #@3f
    move/from16 v1, p19

    #@41
    .line 115
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    #@43
    move/from16 v1, p20

    #@45
    .line 116
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    #@47
    move/from16 v1, p21

    #@49
    .line 117
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    #@4b
    move/from16 v1, p22

    #@4d
    .line 118
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    #@4f
    move/from16 v1, p23

    #@51
    .line 119
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    #@53
    move/from16 v1, p24

    #@55
    .line 120
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    #@57
    move/from16 v1, p25

    #@59
    .line 121
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    #@5b
    move/from16 v1, p26

    #@5d
    .line 122
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    #@5f
    move/from16 v1, p27

    #@61
    .line 123
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    #@63
    move/from16 v1, p28

    #@65
    .line 124
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    #@67
    move/from16 v1, p29

    #@69
    .line 125
    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    #@6b
    return-void
.end method

.method public static dark(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 1

    #@0
    .line 133
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->of(I)Lcom/google/android/material/color/utilities/CorePalette;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static darkContent(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 1

    #@0
    .line 141
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->contentOf(I)Lcom/google/android/material/color/utilities/CorePalette;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;
    .registers 8

    #@0
    .line 178
    new-instance v0, Lcom/google/android/material/color/utilities/Scheme;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/color/utilities/Scheme;-><init>()V

    #@5
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@7
    const/16 v2, 0x50

    #@9
    .line 179
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@13
    const/16 v3, 0x14

    #@15
    .line 180
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@18
    move-result v1

    #@19
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@1f
    const/16 v4, 0x1e

    #@21
    .line 181
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@24
    move-result v1

    #@25
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@28
    move-result-object v0

    #@29
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@2b
    const/16 v5, 0x5a

    #@2d
    .line 182
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@30
    move-result v1

    #@31
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@34
    move-result-object v0

    #@35
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@37
    .line 183
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@3a
    move-result v1

    #@3b
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    #@3e
    move-result-object v0

    #@3f
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@41
    .line 184
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@44
    move-result v1

    #@45
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    #@48
    move-result-object v0

    #@49
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@4b
    .line 185
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@4e
    move-result v1

    #@4f
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@52
    move-result-object v0

    #@53
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@55
    .line 186
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@58
    move-result v1

    #@59
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@5c
    move-result-object v0

    #@5d
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    #@5f
    .line 187
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@62
    move-result v1

    #@63
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    #@66
    move-result-object v0

    #@67
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    #@69
    .line 188
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@6c
    move-result v1

    #@6d
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    #@70
    move-result-object v0

    #@71
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    #@73
    .line 189
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@76
    move-result v1

    #@77
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@7a
    move-result-object v0

    #@7b
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    #@7d
    .line 190
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@80
    move-result v1

    #@81
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@84
    move-result-object v0

    #@85
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    #@87
    .line 191
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@8a
    move-result v1

    #@8b
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withError(I)Lcom/google/android/material/color/utilities/Scheme;

    #@8e
    move-result-object v0

    #@8f
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    #@91
    .line 192
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@94
    move-result v1

    #@95
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnError(I)Lcom/google/android/material/color/utilities/Scheme;

    #@98
    move-result-object v0

    #@99
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    #@9b
    .line 193
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@9e
    move-result v1

    #@9f
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@a2
    move-result-object v0

    #@a3
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    #@a5
    .line 194
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@a8
    move-result v1

    #@a9
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@ac
    move-result-object v0

    #@ad
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@af
    const/16 v6, 0xa

    #@b1
    .line 195
    invoke-virtual {v1, v6}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@b4
    move-result v1

    #@b5
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    #@b8
    move-result-object v0

    #@b9
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@bb
    .line 196
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@be
    move-result v1

    #@bf
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    #@c2
    move-result-object v0

    #@c3
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@c5
    .line 197
    invoke-virtual {v1, v6}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@c8
    move-result v1

    #@c9
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    #@cc
    move-result-object v0

    #@cd
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@cf
    .line 198
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@d2
    move-result v1

    #@d3
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    #@d6
    move-result-object v0

    #@d7
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@d9
    .line 199
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@dc
    move-result v1

    #@dd
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    #@e0
    move-result-object v0

    #@e1
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@e3
    .line 200
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@e6
    move-result v1

    #@e7
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    #@ea
    move-result-object v0

    #@eb
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@ed
    const/16 v2, 0x3c

    #@ef
    .line 201
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@f2
    move-result v1

    #@f3
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutline(I)Lcom/google/android/material/color/utilities/Scheme;

    #@f6
    move-result-object v0

    #@f7
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@f9
    .line 202
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@fc
    move-result v1

    #@fd
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    #@100
    move-result-object v0

    #@101
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@103
    const/4 v2, 0x0

    #@104
    .line 203
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@107
    move-result v1

    #@108
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withShadow(I)Lcom/google/android/material/color/utilities/Scheme;

    #@10b
    move-result-object v0

    #@10c
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@10e
    .line 204
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@111
    move-result v1

    #@112
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withScrim(I)Lcom/google/android/material/color/utilities/Scheme;

    #@115
    move-result-object v0

    #@116
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@118
    .line 205
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@11b
    move-result v1

    #@11c
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    #@11f
    move-result-object v0

    #@120
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@122
    .line 206
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@125
    move-result v1

    #@126
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    #@129
    move-result-object v0

    #@12a
    iget-object p0, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@12c
    const/16 v1, 0x28

    #@12e
    .line 207
    invoke-virtual {p0, v1}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@131
    move-result p0

    #@132
    invoke-virtual {v0, p0}, Lcom/google/android/material/color/utilities/Scheme;->withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    #@135
    move-result-object p0

    #@136
    return-object p0
.end method

.method public static light(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 1

    #@0
    .line 129
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->of(I)Lcom/google/android/material/color/utilities/CorePalette;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static lightContent(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 1

    #@0
    .line 137
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->contentOf(I)Lcom/google/android/material/color/utilities/CorePalette;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method private static lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;
    .registers 7

    #@0
    .line 145
    new-instance v0, Lcom/google/android/material/color/utilities/Scheme;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/color/utilities/Scheme;-><init>()V

    #@5
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@7
    const/16 v2, 0x28

    #@9
    .line 146
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@13
    const/16 v3, 0x64

    #@15
    .line 147
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@18
    move-result v1

    #@19
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@1f
    const/16 v4, 0x5a

    #@21
    .line 148
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@24
    move-result v1

    #@25
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@28
    move-result-object v0

    #@29
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@2b
    const/16 v5, 0xa

    #@2d
    .line 149
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@30
    move-result v1

    #@31
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@34
    move-result-object v0

    #@35
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@37
    .line 150
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@3a
    move-result v1

    #@3b
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    #@3e
    move-result-object v0

    #@3f
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@41
    .line 151
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@44
    move-result v1

    #@45
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    #@48
    move-result-object v0

    #@49
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@4b
    .line 152
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@4e
    move-result v1

    #@4f
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@52
    move-result-object v0

    #@53
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@55
    .line 153
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@58
    move-result v1

    #@59
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@5c
    move-result-object v0

    #@5d
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    #@5f
    .line 154
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@62
    move-result v1

    #@63
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    #@66
    move-result-object v0

    #@67
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    #@69
    .line 155
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@6c
    move-result v1

    #@6d
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    #@70
    move-result-object v0

    #@71
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    #@73
    .line 156
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@76
    move-result v1

    #@77
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@7a
    move-result-object v0

    #@7b
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    #@7d
    .line 157
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@80
    move-result v1

    #@81
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@84
    move-result-object v0

    #@85
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    #@87
    .line 158
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@8a
    move-result v1

    #@8b
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withError(I)Lcom/google/android/material/color/utilities/Scheme;

    #@8e
    move-result-object v0

    #@8f
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    #@91
    .line 159
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@94
    move-result v1

    #@95
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnError(I)Lcom/google/android/material/color/utilities/Scheme;

    #@98
    move-result-object v0

    #@99
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    #@9b
    .line 160
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@9e
    move-result v1

    #@9f
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@a2
    move-result-object v0

    #@a3
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    #@a5
    .line 161
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@a8
    move-result v1

    #@a9
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    #@ac
    move-result-object v0

    #@ad
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@af
    const/16 v2, 0x63

    #@b1
    .line 162
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@b4
    move-result v1

    #@b5
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    #@b8
    move-result-object v0

    #@b9
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@bb
    .line 163
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@be
    move-result v1

    #@bf
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    #@c2
    move-result-object v0

    #@c3
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@c5
    .line 164
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@c8
    move-result v1

    #@c9
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    #@cc
    move-result-object v0

    #@cd
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@cf
    .line 165
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@d2
    move-result v1

    #@d3
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    #@d6
    move-result-object v0

    #@d7
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@d9
    .line 166
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@dc
    move-result v1

    #@dd
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    #@e0
    move-result-object v0

    #@e1
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@e3
    const/16 v2, 0x1e

    #@e5
    .line 167
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@e8
    move-result v1

    #@e9
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    #@ec
    move-result-object v0

    #@ed
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@ef
    const/16 v2, 0x32

    #@f1
    .line 168
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@f4
    move-result v1

    #@f5
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutline(I)Lcom/google/android/material/color/utilities/Scheme;

    #@f8
    move-result-object v0

    #@f9
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    #@fb
    const/16 v2, 0x50

    #@fd
    .line 169
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@100
    move-result v1

    #@101
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    #@104
    move-result-object v0

    #@105
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@107
    const/4 v3, 0x0

    #@108
    .line 170
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@10b
    move-result v1

    #@10c
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withShadow(I)Lcom/google/android/material/color/utilities/Scheme;

    #@10f
    move-result-object v0

    #@110
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@112
    .line 171
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@115
    move-result v1

    #@116
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withScrim(I)Lcom/google/android/material/color/utilities/Scheme;

    #@119
    move-result-object v0

    #@11a
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@11c
    const/16 v3, 0x14

    #@11e
    .line 172
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@121
    move-result v1

    #@122
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    #@125
    move-result-object v0

    #@126
    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@128
    const/16 v3, 0x5f

    #@12a
    .line 173
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@12d
    move-result v1

    #@12e
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    #@131
    move-result-object v0

    #@132
    iget-object p0, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    #@134
    .line 174
    invoke-virtual {p0, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    #@137
    move-result p0

    #@138
    invoke-virtual {v0, p0}, Lcom/google/android/material/color/utilities/Scheme;->withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    #@13b
    move-result-object p0

    #@13c
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 685
    :cond_4
    instance-of v1, p1, Lcom/google/android/material/color/utilities/Scheme;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 688
    :cond_a
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_11

    #@10
    return v2

    #@11
    .line 692
    :cond_11
    check-cast p1, Lcom/google/android/material/color/utilities/Scheme;

    #@13
    .line 694
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    #@15
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    #@17
    if-eq v1, v3, :cond_1a

    #@19
    return v2

    #@1a
    .line 697
    :cond_1a
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    #@1c
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    #@1e
    if-eq v1, v3, :cond_21

    #@20
    return v2

    #@21
    .line 700
    :cond_21
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    #@23
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    #@25
    if-eq v1, v3, :cond_28

    #@27
    return v2

    #@28
    .line 703
    :cond_28
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    #@2a
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    #@2c
    if-eq v1, v3, :cond_2f

    #@2e
    return v2

    #@2f
    .line 706
    :cond_2f
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    #@31
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    #@33
    if-eq v1, v3, :cond_36

    #@35
    return v2

    #@36
    .line 709
    :cond_36
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    #@38
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    #@3a
    if-eq v1, v3, :cond_3d

    #@3c
    return v2

    #@3d
    .line 712
    :cond_3d
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    #@3f
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    #@41
    if-eq v1, v3, :cond_44

    #@43
    return v2

    #@44
    .line 715
    :cond_44
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    #@46
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    #@48
    if-eq v1, v3, :cond_4b

    #@4a
    return v2

    #@4b
    .line 718
    :cond_4b
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    #@4d
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    #@4f
    if-eq v1, v3, :cond_52

    #@51
    return v2

    #@52
    .line 721
    :cond_52
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    #@54
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    #@56
    if-eq v1, v3, :cond_59

    #@58
    return v2

    #@59
    .line 724
    :cond_59
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    #@5b
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    #@5d
    if-eq v1, v3, :cond_60

    #@5f
    return v2

    #@60
    .line 727
    :cond_60
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    #@62
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    #@64
    if-eq v1, v3, :cond_67

    #@66
    return v2

    #@67
    .line 730
    :cond_67
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    #@69
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->error:I

    #@6b
    if-eq v1, v3, :cond_6e

    #@6d
    return v2

    #@6e
    .line 733
    :cond_6e
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    #@70
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    #@72
    if-eq v1, v3, :cond_75

    #@74
    return v2

    #@75
    .line 736
    :cond_75
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    #@77
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    #@79
    if-eq v1, v3, :cond_7c

    #@7b
    return v2

    #@7c
    .line 739
    :cond_7c
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    #@7e
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    #@80
    if-eq v1, v3, :cond_83

    #@82
    return v2

    #@83
    .line 742
    :cond_83
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    #@85
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->background:I

    #@87
    if-eq v1, v3, :cond_8a

    #@89
    return v2

    #@8a
    .line 745
    :cond_8a
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    #@8c
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    #@8e
    if-eq v1, v3, :cond_91

    #@90
    return v2

    #@91
    .line 748
    :cond_91
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    #@93
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    #@95
    if-eq v1, v3, :cond_98

    #@97
    return v2

    #@98
    .line 751
    :cond_98
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    #@9a
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    #@9c
    if-eq v1, v3, :cond_9f

    #@9e
    return v2

    #@9f
    .line 754
    :cond_9f
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    #@a1
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    #@a3
    if-eq v1, v3, :cond_a6

    #@a5
    return v2

    #@a6
    .line 757
    :cond_a6
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    #@a8
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    #@aa
    if-eq v1, v3, :cond_ad

    #@ac
    return v2

    #@ad
    .line 760
    :cond_ad
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    #@af
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    #@b1
    if-eq v1, v3, :cond_b4

    #@b3
    return v2

    #@b4
    .line 763
    :cond_b4
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    #@b6
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    #@b8
    if-eq v1, v3, :cond_bb

    #@ba
    return v2

    #@bb
    .line 766
    :cond_bb
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    #@bd
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    #@bf
    if-eq v1, v3, :cond_c2

    #@c1
    return v2

    #@c2
    .line 769
    :cond_c2
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    #@c4
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    #@c6
    if-eq v1, v3, :cond_c9

    #@c8
    return v2

    #@c9
    .line 772
    :cond_c9
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    #@cb
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    #@cd
    if-eq v1, v3, :cond_d0

    #@cf
    return v2

    #@d0
    .line 775
    :cond_d0
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    #@d2
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    #@d4
    if-eq v1, v3, :cond_d7

    #@d6
    return v2

    #@d7
    .line 778
    :cond_d7
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    #@d9
    iget p1, p1, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    #@db
    if-eq v1, p1, :cond_de

    #@dd
    return v2

    #@de
    :cond_de
    return v0
.end method

.method public getBackground()I
    .registers 2

    #@0
    .line 435
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    #@2
    return v0
.end method

.method public getError()I
    .registers 2

    #@0
    .line 379
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    #@2
    return v0
.end method

.method public getErrorContainer()I
    .registers 2

    #@0
    .line 407
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    #@2
    return v0
.end method

.method public getInverseOnSurface()I
    .registers 2

    #@0
    .line 589
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    #@2
    return v0
.end method

.method public getInversePrimary()I
    .registers 2

    #@0
    .line 603
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    #@2
    return v0
.end method

.method public getInverseSurface()I
    .registers 2

    #@0
    .line 575
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    #@2
    return v0
.end method

.method public getOnBackground()I
    .registers 2

    #@0
    .line 449
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    #@2
    return v0
.end method

.method public getOnError()I
    .registers 2

    #@0
    .line 393
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    #@2
    return v0
.end method

.method public getOnErrorContainer()I
    .registers 2

    #@0
    .line 421
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    #@2
    return v0
.end method

.method public getOnPrimary()I
    .registers 2

    #@0
    .line 225
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    #@2
    return v0
.end method

.method public getOnPrimaryContainer()I
    .registers 2

    #@0
    .line 253
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    #@2
    return v0
.end method

.method public getOnSecondary()I
    .registers 2

    #@0
    .line 281
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    #@2
    return v0
.end method

.method public getOnSecondaryContainer()I
    .registers 2

    #@0
    .line 309
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    #@2
    return v0
.end method

.method public getOnSurface()I
    .registers 2

    #@0
    .line 477
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    #@2
    return v0
.end method

.method public getOnSurfaceVariant()I
    .registers 2

    #@0
    .line 505
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    #@2
    return v0
.end method

.method public getOnTertiary()I
    .registers 2

    #@0
    .line 337
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    #@2
    return v0
.end method

.method public getOnTertiaryContainer()I
    .registers 2

    #@0
    .line 365
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    #@2
    return v0
.end method

.method public getOutline()I
    .registers 2

    #@0
    .line 519
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    #@2
    return v0
.end method

.method public getOutlineVariant()I
    .registers 2

    #@0
    .line 533
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    #@2
    return v0
.end method

.method public getPrimary()I
    .registers 2

    #@0
    .line 211
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    #@2
    return v0
.end method

.method public getPrimaryContainer()I
    .registers 2

    #@0
    .line 239
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    #@2
    return v0
.end method

.method public getScrim()I
    .registers 2

    #@0
    .line 561
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    #@2
    return v0
.end method

.method public getSecondary()I
    .registers 2

    #@0
    .line 267
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    #@2
    return v0
.end method

.method public getSecondaryContainer()I
    .registers 2

    #@0
    .line 295
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    #@2
    return v0
.end method

.method public getShadow()I
    .registers 2

    #@0
    .line 547
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    #@2
    return v0
.end method

.method public getSurface()I
    .registers 2

    #@0
    .line 463
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    #@2
    return v0
.end method

.method public getSurfaceVariant()I
    .registers 2

    #@0
    .line 491
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    #@2
    return v0
.end method

.method public getTertiary()I
    .registers 2

    #@0
    .line 323
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    #@2
    return v0
.end method

.method public getTertiaryContainer()I
    .registers 2

    #@0
    .line 351
    iget v0, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    .line 787
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    mul-int/lit8 v0, v0, 0x1f

    #@6
    .line 788
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    #@8
    add-int/2addr v0, v1

    #@9
    mul-int/lit8 v0, v0, 0x1f

    #@b
    .line 789
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    #@d
    add-int/2addr v0, v1

    #@e
    mul-int/lit8 v0, v0, 0x1f

    #@10
    .line 790
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    #@12
    add-int/2addr v0, v1

    #@13
    mul-int/lit8 v0, v0, 0x1f

    #@15
    .line 791
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    #@17
    add-int/2addr v0, v1

    #@18
    mul-int/lit8 v0, v0, 0x1f

    #@1a
    .line 792
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    #@1c
    add-int/2addr v0, v1

    #@1d
    mul-int/lit8 v0, v0, 0x1f

    #@1f
    .line 793
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    #@21
    add-int/2addr v0, v1

    #@22
    mul-int/lit8 v0, v0, 0x1f

    #@24
    .line 794
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    #@26
    add-int/2addr v0, v1

    #@27
    mul-int/lit8 v0, v0, 0x1f

    #@29
    .line 795
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    #@2b
    add-int/2addr v0, v1

    #@2c
    mul-int/lit8 v0, v0, 0x1f

    #@2e
    .line 796
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    #@30
    add-int/2addr v0, v1

    #@31
    mul-int/lit8 v0, v0, 0x1f

    #@33
    .line 797
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    #@35
    add-int/2addr v0, v1

    #@36
    mul-int/lit8 v0, v0, 0x1f

    #@38
    .line 798
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    #@3a
    add-int/2addr v0, v1

    #@3b
    mul-int/lit8 v0, v0, 0x1f

    #@3d
    .line 799
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    #@3f
    add-int/2addr v0, v1

    #@40
    mul-int/lit8 v0, v0, 0x1f

    #@42
    .line 800
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    #@44
    add-int/2addr v0, v1

    #@45
    mul-int/lit8 v0, v0, 0x1f

    #@47
    .line 801
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    #@49
    add-int/2addr v0, v1

    #@4a
    mul-int/lit8 v0, v0, 0x1f

    #@4c
    .line 802
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    #@4e
    add-int/2addr v0, v1

    #@4f
    mul-int/lit8 v0, v0, 0x1f

    #@51
    .line 803
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    #@53
    add-int/2addr v0, v1

    #@54
    mul-int/lit8 v0, v0, 0x1f

    #@56
    .line 804
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    #@58
    add-int/2addr v0, v1

    #@59
    mul-int/lit8 v0, v0, 0x1f

    #@5b
    .line 805
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    #@5d
    add-int/2addr v0, v1

    #@5e
    mul-int/lit8 v0, v0, 0x1f

    #@60
    .line 806
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    #@62
    add-int/2addr v0, v1

    #@63
    mul-int/lit8 v0, v0, 0x1f

    #@65
    .line 807
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    #@67
    add-int/2addr v0, v1

    #@68
    mul-int/lit8 v0, v0, 0x1f

    #@6a
    .line 808
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    #@6c
    add-int/2addr v0, v1

    #@6d
    mul-int/lit8 v0, v0, 0x1f

    #@6f
    .line 809
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    #@71
    add-int/2addr v0, v1

    #@72
    mul-int/lit8 v0, v0, 0x1f

    #@74
    .line 810
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    #@76
    add-int/2addr v0, v1

    #@77
    mul-int/lit8 v0, v0, 0x1f

    #@79
    .line 811
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    #@7b
    add-int/2addr v0, v1

    #@7c
    mul-int/lit8 v0, v0, 0x1f

    #@7e
    .line 812
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    #@80
    add-int/2addr v0, v1

    #@81
    mul-int/lit8 v0, v0, 0x1f

    #@83
    .line 813
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    #@85
    add-int/2addr v0, v1

    #@86
    mul-int/lit8 v0, v0, 0x1f

    #@88
    .line 814
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    #@8a
    add-int/2addr v0, v1

    #@8b
    mul-int/lit8 v0, v0, 0x1f

    #@8d
    .line 815
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    #@8f
    add-int/2addr v0, v1

    #@90
    mul-int/lit8 v0, v0, 0x1f

    #@92
    .line 816
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    #@94
    add-int/2addr v0, v1

    #@95
    return v0
.end method

.method public setBackground(I)V
    .registers 2

    #@0
    .line 439
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    #@2
    return-void
.end method

.method public setError(I)V
    .registers 2

    #@0
    .line 383
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    #@2
    return-void
.end method

.method public setErrorContainer(I)V
    .registers 2

    #@0
    .line 411
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    #@2
    return-void
.end method

.method public setInverseOnSurface(I)V
    .registers 2

    #@0
    .line 593
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    #@2
    return-void
.end method

.method public setInversePrimary(I)V
    .registers 2

    #@0
    .line 607
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    #@2
    return-void
.end method

.method public setInverseSurface(I)V
    .registers 2

    #@0
    .line 579
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    #@2
    return-void
.end method

.method public setOnBackground(I)V
    .registers 2

    #@0
    .line 453
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    #@2
    return-void
.end method

.method public setOnError(I)V
    .registers 2

    #@0
    .line 397
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    #@2
    return-void
.end method

.method public setOnErrorContainer(I)V
    .registers 2

    #@0
    .line 425
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    #@2
    return-void
.end method

.method public setOnPrimary(I)V
    .registers 2

    #@0
    .line 229
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    #@2
    return-void
.end method

.method public setOnPrimaryContainer(I)V
    .registers 2

    #@0
    .line 257
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    #@2
    return-void
.end method

.method public setOnSecondary(I)V
    .registers 2

    #@0
    .line 285
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    #@2
    return-void
.end method

.method public setOnSecondaryContainer(I)V
    .registers 2

    #@0
    .line 313
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    #@2
    return-void
.end method

.method public setOnSurface(I)V
    .registers 2

    #@0
    .line 481
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    #@2
    return-void
.end method

.method public setOnSurfaceVariant(I)V
    .registers 2

    #@0
    .line 509
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    #@2
    return-void
.end method

.method public setOnTertiary(I)V
    .registers 2

    #@0
    .line 341
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    #@2
    return-void
.end method

.method public setOnTertiaryContainer(I)V
    .registers 2

    #@0
    .line 369
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    #@2
    return-void
.end method

.method public setOutline(I)V
    .registers 2

    #@0
    .line 523
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    #@2
    return-void
.end method

.method public setOutlineVariant(I)V
    .registers 2

    #@0
    .line 537
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    #@2
    return-void
.end method

.method public setPrimary(I)V
    .registers 2

    #@0
    .line 215
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    #@2
    return-void
.end method

.method public setPrimaryContainer(I)V
    .registers 2

    #@0
    .line 243
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    #@2
    return-void
.end method

.method public setScrim(I)V
    .registers 2

    #@0
    .line 565
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    #@2
    return-void
.end method

.method public setSecondary(I)V
    .registers 2

    #@0
    .line 271
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    #@2
    return-void
.end method

.method public setSecondaryContainer(I)V
    .registers 2

    #@0
    .line 299
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    #@2
    return-void
.end method

.method public setShadow(I)V
    .registers 2

    #@0
    .line 551
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    #@2
    return-void
.end method

.method public setSurface(I)V
    .registers 2

    #@0
    .line 467
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    #@2
    return-void
.end method

.method public setSurfaceVariant(I)V
    .registers 2

    #@0
    .line 495
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    #@2
    return-void
.end method

.method public setTertiary(I)V
    .registers 2

    #@0
    .line 327
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    #@2
    return-void
.end method

.method public setTertiaryContainer(I)V
    .registers 2

    #@0
    .line 355
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    #@2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "Scheme{primary="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ", onPrimary="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, ", primaryContainer="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string v1, ", onPrimaryContainer="

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    const-string v1, ", secondary="

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    const-string v1, ", onSecondary="

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    const-string v1, ", secondaryContainer="

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    const-string v1, ", onSecondaryContainer="

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    const-string v1, ", tertiary="

    #@63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    const-string v1, ", onTertiary="

    #@6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v0

    #@73
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v0

    #@79
    const-string v1, ", tertiaryContainer="

    #@7b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    const-string v1, ", onTertiaryContainer="

    #@87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    const-string v1, ", error="

    #@93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    const-string v1, ", onError="

    #@9f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    #@a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v0

    #@a9
    const-string v1, ", errorContainer="

    #@ab
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v0

    #@af
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    #@b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v0

    #@b5
    const-string v1, ", onErrorContainer="

    #@b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v0

    #@bb
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    #@bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v0

    #@c1
    const-string v1, ", background="

    #@c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v0

    #@c7
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    #@c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v0

    #@cd
    const-string v1, ", onBackground="

    #@cf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v0

    #@d3
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    #@d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v0

    #@d9
    const-string v1, ", surface="

    #@db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v0

    #@df
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    #@e1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v0

    #@e5
    const-string v1, ", onSurface="

    #@e7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v0

    #@eb
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    #@ed
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v0

    #@f1
    const-string v1, ", surfaceVariant="

    #@f3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v0

    #@f7
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    #@f9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v0

    #@fd
    const-string v1, ", onSurfaceVariant="

    #@ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v0

    #@103
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    #@105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@108
    move-result-object v0

    #@109
    const-string v1, ", outline="

    #@10b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v0

    #@10f
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    #@111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@114
    move-result-object v0

    #@115
    const-string v1, ", outlineVariant="

    #@117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object v0

    #@11b
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    #@11d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@120
    move-result-object v0

    #@121
    const-string v1, ", shadow="

    #@123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v0

    #@127
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    #@129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v0

    #@12d
    const-string v1, ", scrim="

    #@12f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v0

    #@133
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    #@135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@138
    move-result-object v0

    #@139
    const-string v1, ", inverseSurface="

    #@13b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v0

    #@13f
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    #@141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@144
    move-result-object v0

    #@145
    const-string v1, ", inverseOnSurface="

    #@147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v0

    #@14b
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    #@14d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@150
    move-result-object v0

    #@151
    const-string v1, ", inversePrimary="

    #@153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@156
    move-result-object v0

    #@157
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    #@159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v0

    #@15d
    const/16 v1, 0x7d

    #@15f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@162
    move-result-object v0

    #@163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@166
    move-result-object v0

    #@167
    return-object v0
.end method

.method public withBackground(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 444
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    #@2
    return-object p0
.end method

.method public withError(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 388
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    #@2
    return-object p0
.end method

.method public withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 416
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    #@2
    return-object p0
.end method

.method public withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 598
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    #@2
    return-object p0
.end method

.method public withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 612
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    #@2
    return-object p0
.end method

.method public withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 584
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    #@2
    return-object p0
.end method

.method public withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 458
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    #@2
    return-object p0
.end method

.method public withOnError(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 402
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    #@2
    return-object p0
.end method

.method public withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 430
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    #@2
    return-object p0
.end method

.method public withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 234
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    #@2
    return-object p0
.end method

.method public withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 262
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    #@2
    return-object p0
.end method

.method public withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 290
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    #@2
    return-object p0
.end method

.method public withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 318
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    #@2
    return-object p0
.end method

.method public withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 486
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    #@2
    return-object p0
.end method

.method public withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 514
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    #@2
    return-object p0
.end method

.method public withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 346
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    #@2
    return-object p0
.end method

.method public withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 374
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    #@2
    return-object p0
.end method

.method public withOutline(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 528
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    #@2
    return-object p0
.end method

.method public withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 542
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    #@2
    return-object p0
.end method

.method public withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 220
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    #@2
    return-object p0
.end method

.method public withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 248
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    #@2
    return-object p0
.end method

.method public withScrim(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 570
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    #@2
    return-object p0
.end method

.method public withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 276
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    #@2
    return-object p0
.end method

.method public withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 304
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    #@2
    return-object p0
.end method

.method public withShadow(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 556
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    #@2
    return-object p0
.end method

.method public withSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 472
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    #@2
    return-object p0
.end method

.method public withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 500
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    #@2
    return-object p0
.end method

.method public withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 332
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    #@2
    return-object p0
.end method

.method public withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .registers 2

    #@0
    .line 360
    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    #@2
    return-object p0
.end method
