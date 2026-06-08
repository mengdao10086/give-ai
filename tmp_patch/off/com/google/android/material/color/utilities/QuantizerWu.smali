.class public final Lcom/google/android/material/color/utilities/QuantizerWu;
.super Ljava/lang/Object;
.source "QuantizerWu.java"

# interfaces
.implements Lcom/google/android/material/color/utilities/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/QuantizerWu$Box;,
        Lcom/google/android/material/color/utilities/QuantizerWu$CreateBoxesResult;,
        Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;,
        Lcom/google/android/material/color/utilities/QuantizerWu$Direction;
    }
.end annotation


# static fields
.field private static final INDEX_BITS:I = 0x5

.field private static final INDEX_COUNT:I = 0x21

.field private static final TOTAL_SIZE:I = 0x8c61


# instance fields
.field cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

.field moments:[D

.field momentsB:[I

.field momentsG:[I

.field momentsR:[I

.field weights:[I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I
    .registers 6

    #@0
    .line 335
    sget-object v0, Lcom/google/android/material/color/utilities/QuantizerWu$1;->$SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction:[I

    #@2
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->ordinal()I

    #@5
    move-result v1

    #@6
    aget v0, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    if-eq v0, v1, :cond_8f

    #@b
    const/4 v1, 0x2

    #@c
    if-eq v0, v1, :cond_5b

    #@e
    const/4 v1, 0x3

    #@f
    if-ne v0, v1, :cond_46

    #@11
    .line 347
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@13
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@15
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@17
    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@1a
    move-result p1

    #@1b
    aget p1, p2, p1

    #@1d
    neg-int p1, p1

    #@1e
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@20
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@22
    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@24
    .line 348
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@27
    move-result v0

    #@28
    aget v0, p2, v0

    #@2a
    add-int/2addr p1, v0

    #@2b
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@2d
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@2f
    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@31
    .line 349
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@34
    move-result v0

    #@35
    aget v0, p2, v0

    #@37
    add-int/2addr p1, v0

    #@38
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@3a
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@3c
    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@3e
    .line 350
    invoke-static {v0, v1, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@41
    move-result p0

    #@42
    aget p0, p2, p0

    #@44
    :goto_44
    sub-int/2addr p1, p0

    #@45
    return p1

    #@46
    .line 352
    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@48
    new-instance p2, Ljava/lang/StringBuilder;

    #@4a
    const-string v0, "unexpected direction "

    #@4c
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4f
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object p1

    #@53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object p1

    #@57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5a
    throw p0

    #@5b
    .line 342
    :cond_5b
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@5d
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@5f
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@61
    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@64
    move-result p1

    #@65
    aget p1, p2, p1

    #@67
    neg-int p1, p1

    #@68
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@6a
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@6c
    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@6e
    .line 343
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@71
    move-result v0

    #@72
    aget v0, p2, v0

    #@74
    add-int/2addr p1, v0

    #@75
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@77
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@79
    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@7b
    .line 344
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@7e
    move-result v0

    #@7f
    aget v0, p2, v0

    #@81
    add-int/2addr p1, v0

    #@82
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@84
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@86
    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@88
    .line 345
    invoke-static {v0, v1, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@8b
    move-result p0

    #@8c
    aget p0, p2, p0

    #@8e
    goto :goto_44

    #@8f
    .line 337
    :cond_8f
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@91
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@93
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@95
    invoke-static {p1, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@98
    move-result p1

    #@99
    aget p1, p2, p1

    #@9b
    neg-int p1, p1

    #@9c
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@9e
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@a0
    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@a2
    .line 338
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@a5
    move-result v0

    #@a6
    aget v0, p2, v0

    #@a8
    add-int/2addr p1, v0

    #@a9
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@ab
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@ad
    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@af
    .line 339
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@b2
    move-result v0

    #@b3
    aget v0, p2, v0

    #@b5
    add-int/2addr p1, v0

    #@b6
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@b8
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@ba
    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@bc
    .line 340
    invoke-static {v0, v1, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@bf
    move-result p0

    #@c0
    aget p0, p2, p0

    #@c2
    goto :goto_44
.end method

.method static getIndex(III)I
    .registers 5

    #@0
    shl-int/lit8 v0, p0, 0xa

    #@2
    shl-int/lit8 v1, p0, 0x6

    #@4
    add-int/2addr v0, v1

    #@5
    add-int/2addr v0, p0

    #@6
    shl-int/lit8 p0, p1, 0x5

    #@8
    add-int/2addr v0, p0

    #@9
    add-int/2addr v0, p1

    #@a
    add-int/2addr v0, p2

    #@b
    return v0
.end method

.method static top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I
    .registers 6

    #@0
    .line 356
    sget-object v0, Lcom/google/android/material/color/utilities/QuantizerWu$1;->$SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction:[I

    #@2
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->ordinal()I

    #@5
    move-result v1

    #@6
    aget v0, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    if-eq v0, v1, :cond_7d

    #@b
    const/4 v1, 0x2

    #@c
    if-eq v0, v1, :cond_52

    #@e
    const/4 v1, 0x3

    #@f
    if-ne v0, v1, :cond_3d

    #@11
    .line 368
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@13
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@15
    invoke-static {p1, v0, p2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@18
    move-result p1

    #@19
    aget p1, p3, p1

    #@1b
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@1d
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@1f
    .line 369
    invoke-static {v0, v1, p2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@22
    move-result v0

    #@23
    aget v0, p3, v0

    #@25
    sub-int/2addr p1, v0

    #@26
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@28
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@2a
    .line 370
    invoke-static {v0, v1, p2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@2d
    move-result v0

    #@2e
    aget v0, p3, v0

    #@30
    sub-int/2addr p1, v0

    #@31
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@33
    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@35
    .line 371
    invoke-static {v0, p0, p2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@38
    move-result p0

    #@39
    aget p0, p3, p0

    #@3b
    :goto_3b
    add-int/2addr p1, p0

    #@3c
    return p1

    #@3d
    .line 373
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@3f
    new-instance p2, Ljava/lang/StringBuilder;

    #@41
    const-string p3, "unexpected direction "

    #@43
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object p1

    #@4a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object p1

    #@4e
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@51
    throw p0

    #@52
    .line 363
    :cond_52
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@54
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@56
    invoke-static {p1, p2, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@59
    move-result p1

    #@5a
    aget p1, p3, p1

    #@5c
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@5e
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@60
    .line 364
    invoke-static {v0, p2, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@63
    move-result v0

    #@64
    aget v0, p3, v0

    #@66
    sub-int/2addr p1, v0

    #@67
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@69
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@6b
    .line 365
    invoke-static {v0, p2, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@6e
    move-result v0

    #@6f
    aget v0, p3, v0

    #@71
    sub-int/2addr p1, v0

    #@72
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@74
    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@76
    .line 366
    invoke-static {v0, p2, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@79
    move-result p0

    #@7a
    aget p0, p3, p0

    #@7c
    goto :goto_3b

    #@7d
    .line 358
    :cond_7d
    iget p1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@7f
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@81
    invoke-static {p2, p1, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@84
    move-result p1

    #@85
    aget p1, p3, p1

    #@87
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@89
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@8b
    .line 359
    invoke-static {p2, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@8e
    move-result v0

    #@8f
    aget v0, p3, v0

    #@91
    sub-int/2addr p1, v0

    #@92
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@94
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@96
    .line 360
    invoke-static {p2, v0, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@99
    move-result v0

    #@9a
    aget v0, p3, v0

    #@9c
    sub-int/2addr p1, v0

    #@9d
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@9f
    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@a1
    .line 361
    invoke-static {p2, v0, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@a4
    move-result p0

    #@a5
    aget p0, p3, p0

    #@a7
    goto :goto_3b
.end method

.method static volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I
    .registers 6

    #@0
    .line 324
    iget v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@2
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@4
    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@6
    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@9
    move-result v0

    #@a
    aget v0, p1, v0

    #@c
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@e
    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@10
    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@12
    .line 325
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@15
    move-result v1

    #@16
    aget v1, p1, v1

    #@18
    sub-int/2addr v0, v1

    #@19
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@1b
    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@1d
    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@1f
    .line 326
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@22
    move-result v1

    #@23
    aget v1, p1, v1

    #@25
    sub-int/2addr v0, v1

    #@26
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@28
    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@2a
    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@2c
    .line 327
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@2f
    move-result v1

    #@30
    aget v1, p1, v1

    #@32
    add-int/2addr v0, v1

    #@33
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@35
    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@37
    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@39
    .line 328
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@3c
    move-result v1

    #@3d
    aget v1, p1, v1

    #@3f
    sub-int/2addr v0, v1

    #@40
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@42
    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@44
    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@46
    .line 329
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@49
    move-result v1

    #@4a
    aget v1, p1, v1

    #@4c
    add-int/2addr v0, v1

    #@4d
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@4f
    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@51
    iget v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@53
    .line 330
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@56
    move-result v1

    #@57
    aget v1, p1, v1

    #@59
    add-int/2addr v0, v1

    #@5a
    iget v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@5c
    iget v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@5e
    iget p0, p0, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@60
    .line 331
    invoke-static {v1, v2, p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@63
    move-result p0

    #@64
    aget p0, p1, p0

    #@66
    sub-int/2addr v0, p0

    #@67
    return v0
.end method


# virtual methods
.method constructHistogram(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    const v0, 0x8c61

    #@3
    new-array v1, v0, [I

    #@5
    .line 72
    iput-object v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    #@7
    new-array v1, v0, [I

    #@9
    .line 73
    iput-object v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    #@b
    new-array v1, v0, [I

    #@d
    .line 74
    iput-object v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    #@f
    new-array v1, v0, [I

    #@11
    .line 75
    iput-object v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    #@13
    new-array v0, v0, [D

    #@15
    .line 76
    iput-object v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    #@17
    .line 78
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1a
    move-result-object p1

    #@1b
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object p1

    #@1f
    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_8c

    #@25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ljava/util/Map$Entry;

    #@2b
    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2e
    move-result-object v1

    #@2f
    check-cast v1, Ljava/lang/Integer;

    #@31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@34
    move-result v1

    #@35
    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Ljava/lang/Integer;

    #@3b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@3e
    move-result v0

    #@3f
    .line 81
    invoke-static {v1}, Lcom/google/android/material/color/utilities/ColorUtils;->redFromArgb(I)I

    #@42
    move-result v2

    #@43
    .line 82
    invoke-static {v1}, Lcom/google/android/material/color/utilities/ColorUtils;->greenFromArgb(I)I

    #@46
    move-result v3

    #@47
    .line 83
    invoke-static {v1}, Lcom/google/android/material/color/utilities/ColorUtils;->blueFromArgb(I)I

    #@4a
    move-result v1

    #@4b
    shr-int/lit8 v4, v2, 0x3

    #@4d
    add-int/lit8 v4, v4, 0x1

    #@4f
    shr-int/lit8 v5, v3, 0x3

    #@51
    add-int/lit8 v5, v5, 0x1

    #@53
    shr-int/lit8 v6, v1, 0x3

    #@55
    add-int/lit8 v6, v6, 0x1

    #@57
    .line 88
    invoke-static {v4, v5, v6}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@5a
    move-result v4

    #@5b
    .line 89
    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    #@5d
    aget v6, v5, v4

    #@5f
    add-int/2addr v6, v0

    #@60
    aput v6, v5, v4

    #@62
    .line 90
    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    #@64
    aget v6, v5, v4

    #@66
    mul-int v7, v2, v0

    #@68
    add-int/2addr v6, v7

    #@69
    aput v6, v5, v4

    #@6b
    .line 91
    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    #@6d
    aget v6, v5, v4

    #@6f
    mul-int v7, v3, v0

    #@71
    add-int/2addr v6, v7

    #@72
    aput v6, v5, v4

    #@74
    .line 92
    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    #@76
    aget v6, v5, v4

    #@78
    mul-int v7, v1, v0

    #@7a
    add-int/2addr v6, v7

    #@7b
    aput v6, v5, v4

    #@7d
    .line 93
    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    #@7f
    aget-wide v6, v5, v4

    #@81
    mul-int/2addr v2, v2

    #@82
    mul-int/2addr v3, v3

    #@83
    add-int/2addr v2, v3

    #@84
    mul-int/2addr v1, v1

    #@85
    add-int/2addr v2, v1

    #@86
    mul-int/2addr v0, v2

    #@87
    int-to-double v0, v0

    #@88
    add-double/2addr v6, v0

    #@89
    aput-wide v6, v5, v4

    #@8b
    goto :goto_1f

    #@8c
    :cond_8c
    return-void
.end method

.method createBoxes(I)Lcom/google/android/material/color/utilities/QuantizerWu$CreateBoxesResult;
    .registers 15

    #@0
    .line 137
    new-array v0, p1, [Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    #@2
    iput-object v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    :goto_6
    if-ge v1, p1, :cond_15

    #@8
    .line 139
    iget-object v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    #@a
    new-instance v3, Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    #@c
    const/4 v4, 0x0

    #@d
    invoke-direct {v3, v4}, Lcom/google/android/material/color/utilities/QuantizerWu$Box;-><init>(Lcom/google/android/material/color/utilities/QuantizerWu$1;)V

    #@10
    aput-object v3, v2, v1

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_6

    #@15
    .line 141
    :cond_15
    new-array v1, p1, [D

    #@17
    .line 142
    iget-object v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    #@19
    aget-object v2, v2, v0

    #@1b
    const/16 v3, 0x20

    #@1d
    .line 143
    iput v3, v2, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@1f
    .line 144
    iput v3, v2, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@21
    .line 145
    iput v3, v2, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@23
    const/4 v2, 0x1

    #@24
    move v4, v0

    #@25
    move v3, v2

    #@26
    :goto_26
    if-ge v3, p1, :cond_82

    #@28
    .line 150
    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    #@2a
    aget-object v6, v5, v4

    #@2c
    aget-object v5, v5, v3

    #@2e
    invoke-virtual {p0, v6, v5}, Lcom/google/android/material/color/utilities/QuantizerWu;->cut(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Box;)Ljava/lang/Boolean;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    #@35
    move-result v5

    #@36
    const-wide/16 v6, 0x0

    #@38
    if-eqz v5, :cond_63

    #@3a
    .line 151
    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    #@3c
    aget-object v5, v5, v4

    #@3e
    iget v5, v5, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    #@40
    if-le v5, v2, :cond_4b

    #@42
    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    #@44
    aget-object v5, v5, v4

    #@46
    invoke-virtual {p0, v5}, Lcom/google/android/material/color/utilities/QuantizerWu;->variance(Lcom/google/android/material/color/utilities/QuantizerWu$Box;)D

    #@49
    move-result-wide v8

    #@4a
    goto :goto_4c

    #@4b
    :cond_4b
    move-wide v8, v6

    #@4c
    :goto_4c
    aput-wide v8, v1, v4

    #@4e
    .line 152
    iget-object v4, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    #@50
    aget-object v4, v4, v3

    #@52
    iget v4, v4, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    #@54
    if-le v4, v2, :cond_5f

    #@56
    iget-object v4, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    #@58
    aget-object v4, v4, v3

    #@5a
    invoke-virtual {p0, v4}, Lcom/google/android/material/color/utilities/QuantizerWu;->variance(Lcom/google/android/material/color/utilities/QuantizerWu$Box;)D

    #@5d
    move-result-wide v4

    #@5e
    goto :goto_60

    #@5f
    :cond_5f
    move-wide v4, v6

    #@60
    :goto_60
    aput-wide v4, v1, v3

    #@62
    goto :goto_67

    #@63
    .line 154
    :cond_63
    aput-wide v6, v1, v4

    #@65
    add-int/lit8 v3, v3, -0x1

    #@67
    .line 160
    :goto_67
    aget-wide v4, v1, v0

    #@69
    move v8, v0

    #@6a
    move v9, v2

    #@6b
    :goto_6b
    if-gt v9, v3, :cond_78

    #@6d
    .line 162
    aget-wide v10, v1, v9

    #@6f
    cmpl-double v12, v10, v4

    #@71
    if-lez v12, :cond_75

    #@73
    move v8, v9

    #@74
    move-wide v4, v10

    #@75
    :cond_75
    add-int/lit8 v9, v9, 0x1

    #@77
    goto :goto_6b

    #@78
    :cond_78
    cmpg-double v4, v4, v6

    #@7a
    if-gtz v4, :cond_7e

    #@7c
    add-int/2addr v3, v2

    #@7d
    goto :goto_83

    #@7e
    :cond_7e
    add-int/lit8 v3, v3, 0x1

    #@80
    move v4, v8

    #@81
    goto :goto_26

    #@82
    :cond_82
    move v3, p1

    #@83
    .line 173
    :goto_83
    new-instance v0, Lcom/google/android/material/color/utilities/QuantizerWu$CreateBoxesResult;

    #@85
    invoke-direct {v0, p1, v3}, Lcom/google/android/material/color/utilities/QuantizerWu$CreateBoxesResult;-><init>(II)V

    #@88
    return-object v0
.end method

.method createMoments()V
    .registers 23

    #@0
    move-object/from16 v0, p0

    #@2
    const/4 v2, 0x1

    #@3
    :goto_3
    const/16 v3, 0x21

    #@5
    if-ge v2, v3, :cond_a1

    #@7
    new-array v4, v3, [I

    #@9
    new-array v5, v3, [I

    #@b
    new-array v6, v3, [I

    #@d
    new-array v7, v3, [I

    #@f
    new-array v8, v3, [D

    #@11
    const/4 v9, 0x1

    #@12
    :goto_12
    if-ge v9, v3, :cond_9d

    #@14
    const/4 v10, 0x0

    #@15
    const-wide/16 v11, 0x0

    #@17
    move v13, v10

    #@18
    move-wide v14, v11

    #@19
    const/4 v1, 0x1

    #@1a
    move v11, v13

    #@1b
    move v12, v11

    #@1c
    :goto_1c
    if-ge v1, v3, :cond_97

    #@1e
    .line 112
    invoke-static {v2, v9, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@21
    move-result v16

    #@22
    .line 113
    iget-object v3, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    #@24
    aget v3, v3, v16

    #@26
    add-int/2addr v10, v3

    #@27
    .line 114
    iget-object v3, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    #@29
    aget v3, v3, v16

    #@2b
    add-int/2addr v11, v3

    #@2c
    .line 115
    iget-object v3, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    #@2e
    aget v3, v3, v16

    #@30
    add-int/2addr v12, v3

    #@31
    .line 116
    iget-object v3, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    #@33
    aget v3, v3, v16

    #@35
    add-int/2addr v13, v3

    #@36
    .line 117
    iget-object v3, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    #@38
    aget-wide v17, v3, v16

    #@3a
    add-double v14, v14, v17

    #@3c
    .line 119
    aget v3, v4, v1

    #@3e
    add-int/2addr v3, v10

    #@3f
    aput v3, v4, v1

    #@41
    .line 120
    aget v3, v5, v1

    #@43
    add-int/2addr v3, v11

    #@44
    aput v3, v5, v1

    #@46
    .line 121
    aget v3, v6, v1

    #@48
    add-int/2addr v3, v12

    #@49
    aput v3, v6, v1

    #@4b
    .line 122
    aget v3, v7, v1

    #@4d
    add-int/2addr v3, v13

    #@4e
    aput v3, v7, v1

    #@50
    .line 123
    aget-wide v17, v8, v1

    #@52
    add-double v17, v17, v14

    #@54
    aput-wide v17, v8, v1

    #@56
    add-int/lit8 v3, v2, -0x1

    #@58
    .line 125
    invoke-static {v3, v9, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@5b
    move-result v3

    #@5c
    move/from16 v17, v10

    #@5e
    .line 126
    iget-object v10, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    #@60
    aget v18, v10, v3

    #@62
    aget v19, v4, v1

    #@64
    add-int v18, v18, v19

    #@66
    aput v18, v10, v16

    #@68
    .line 127
    iget-object v10, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    #@6a
    aget v18, v10, v3

    #@6c
    aget v19, v5, v1

    #@6e
    add-int v18, v18, v19

    #@70
    aput v18, v10, v16

    #@72
    .line 128
    iget-object v10, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    #@74
    aget v18, v10, v3

    #@76
    aget v19, v6, v1

    #@78
    add-int v18, v18, v19

    #@7a
    aput v18, v10, v16

    #@7c
    .line 129
    iget-object v10, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    #@7e
    aget v18, v10, v3

    #@80
    aget v19, v7, v1

    #@82
    add-int v18, v18, v19

    #@84
    aput v18, v10, v16

    #@86
    .line 130
    iget-object v10, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    #@88
    aget-wide v18, v10, v3

    #@8a
    aget-wide v20, v8, v1

    #@8c
    add-double v18, v18, v20

    #@8e
    aput-wide v18, v10, v16

    #@90
    add-int/lit8 v1, v1, 0x1

    #@92
    move/from16 v10, v17

    #@94
    const/16 v3, 0x21

    #@96
    goto :goto_1c

    #@97
    :cond_97
    add-int/lit8 v9, v9, 0x1

    #@99
    const/16 v3, 0x21

    #@9b
    goto/16 :goto_12

    #@9d
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    #@9f
    goto/16 :goto_3

    #@a1
    :cond_a1
    return-void
.end method

.method createResult(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 177
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    :goto_6
    if-ge v1, p1, :cond_42

    #@8
    .line 179
    iget-object v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->cubes:[Lcom/google/android/material/color/utilities/QuantizerWu$Box;

    #@a
    aget-object v2, v2, v1

    #@c
    .line 180
    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    #@e
    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    #@11
    move-result v3

    #@12
    if-lez v3, :cond_3f

    #@14
    .line 182
    iget-object v4, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    #@16
    invoke-static {v2, v4}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    #@19
    move-result v4

    #@1a
    div-int/2addr v4, v3

    #@1b
    .line 183
    iget-object v5, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    #@1d
    invoke-static {v2, v5}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    #@20
    move-result v5

    #@21
    div-int/2addr v5, v3

    #@22
    .line 184
    iget-object v6, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    #@24
    invoke-static {v2, v6}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    #@27
    move-result v2

    #@28
    div-int/2addr v2, v3

    #@29
    and-int/lit16 v3, v4, 0xff

    #@2b
    shl-int/lit8 v3, v3, 0x10

    #@2d
    const/high16 v4, -0x1000000

    #@2f
    or-int/2addr v3, v4

    #@30
    and-int/lit16 v4, v5, 0xff

    #@32
    shl-int/lit8 v4, v4, 0x8

    #@34
    or-int/2addr v3, v4

    #@35
    and-int/lit16 v2, v2, 0xff

    #@37
    or-int/2addr v2, v3

    #@38
    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v2

    #@3c
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3f
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_6

    #@42
    :cond_42
    return-object v0
.end method

.method cut(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Box;)Ljava/lang/Boolean;
    .registers 20

    #@0
    move-object/from16 v9, p0

    #@2
    move-object/from16 v10, p1

    #@4
    move-object/from16 v11, p2

    #@6
    .line 212
    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    #@8
    invoke-static {v10, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    #@b
    move-result v12

    #@c
    .line 213
    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    #@e
    invoke-static {v10, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    #@11
    move-result v13

    #@12
    .line 214
    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    #@14
    invoke-static {v10, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    #@17
    move-result v14

    #@18
    .line 215
    iget-object v0, v9, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    #@1a
    invoke-static {v10, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    #@1d
    move-result v15

    #@1e
    .line 217
    sget-object v2, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->RED:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@20
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@22
    const/4 v8, 0x1

    #@23
    add-int/lit8 v3, v0, 0x1

    #@25
    iget v4, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@27
    move-object/from16 v0, p0

    #@29
    move-object/from16 v1, p1

    #@2b
    move v5, v12

    #@2c
    move v6, v13

    #@2d
    move v7, v14

    #@2e
    move v9, v8

    #@2f
    move v8, v15

    #@30
    .line 218
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->maximize(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;IIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    #@33
    move-result-object v8

    #@34
    .line 219
    sget-object v2, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->GREEN:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@36
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@38
    add-int/lit8 v3, v0, 0x1

    #@3a
    iget v4, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@3c
    move-object/from16 v0, p0

    #@3e
    move-object/from16 v16, v8

    #@40
    move v8, v15

    #@41
    .line 220
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->maximize(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;IIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    #@44
    move-result-object v8

    #@45
    .line 221
    sget-object v2, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->BLUE:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@47
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@49
    add-int/lit8 v3, v0, 0x1

    #@4b
    iget v4, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@4d
    move-object/from16 v0, p0

    #@4f
    move-object v12, v8

    #@50
    move v8, v15

    #@51
    .line 222
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->maximize(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;IIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    #@54
    move-result-object v0

    #@55
    move-object/from16 v1, v16

    #@57
    .line 224
    iget-wide v2, v1, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->maximum:D

    #@59
    .line 225
    iget-wide v4, v12, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->maximum:D

    #@5b
    .line 226
    iget-wide v6, v0, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->maximum:D

    #@5d
    cmpl-double v8, v2, v4

    #@5f
    if-ltz v8, :cond_72

    #@61
    cmpl-double v8, v2, v6

    #@63
    if-ltz v8, :cond_72

    #@65
    .line 228
    iget v2, v1, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    #@67
    if-gez v2, :cond_6f

    #@69
    const/4 v0, 0x0

    #@6a
    .line 229
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6d
    move-result-object v0

    #@6e
    return-object v0

    #@6f
    .line 231
    :cond_6f
    sget-object v2, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->RED:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@71
    goto :goto_7f

    #@72
    :cond_72
    cmpl-double v2, v4, v2

    #@74
    if-ltz v2, :cond_7d

    #@76
    cmpl-double v2, v4, v6

    #@78
    if-ltz v2, :cond_7d

    #@7a
    .line 233
    sget-object v2, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->GREEN:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@7c
    goto :goto_7f

    #@7d
    .line 235
    :cond_7d
    sget-object v2, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->BLUE:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@7f
    .line 238
    :goto_7f
    iget v3, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@81
    iput v3, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@83
    .line 239
    iget v3, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@85
    iput v3, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@87
    .line 240
    iget v3, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@89
    iput v3, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@8b
    .line 242
    sget-object v3, Lcom/google/android/material/color/utilities/QuantizerWu$1;->$SwitchMap$com$google$android$material$color$utilities$QuantizerWu$Direction:[I

    #@8d
    invoke-virtual {v2}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->ordinal()I

    #@90
    move-result v2

    #@91
    aget v2, v3, v2

    #@93
    if-eq v2, v9, :cond_be

    #@95
    const/4 v1, 0x2

    #@96
    if-eq v2, v1, :cond_ad

    #@98
    const/4 v1, 0x3

    #@99
    if-eq v2, v1, :cond_9c

    #@9b
    goto :goto_ce

    #@9c
    .line 256
    :cond_9c
    iget v0, v0, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    #@9e
    iput v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@a0
    .line 257
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@a2
    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@a4
    .line 258
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@a6
    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@a8
    .line 259
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@aa
    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@ac
    goto :goto_ce

    #@ad
    .line 250
    :cond_ad
    iget v0, v12, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    #@af
    iput v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@b1
    .line 251
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@b3
    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@b5
    .line 252
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@b7
    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@b9
    .line 253
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@bb
    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@bd
    goto :goto_ce

    #@be
    .line 244
    :cond_be
    iget v0, v1, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;->cutLocation:I

    #@c0
    iput v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@c2
    .line 245
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@c4
    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@c6
    .line 246
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@c8
    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@ca
    .line 247
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@cc
    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@ce
    .line 263
    :goto_ce
    iget v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@d0
    iget v1, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@d2
    sub-int/2addr v0, v1

    #@d3
    iget v1, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@d5
    iget v2, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@d7
    sub-int/2addr v1, v2

    #@d8
    mul-int/2addr v0, v1

    #@d9
    iget v1, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@db
    iget v2, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@dd
    sub-int/2addr v1, v2

    #@de
    mul-int/2addr v0, v1

    #@df
    iput v0, v10, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    #@e1
    .line 264
    iget v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@e3
    iget v1, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@e5
    sub-int/2addr v0, v1

    #@e6
    iget v1, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@e8
    iget v2, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@ea
    sub-int/2addr v1, v2

    #@eb
    mul-int/2addr v0, v1

    #@ec
    iget v1, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@ee
    iget v2, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@f0
    sub-int/2addr v1, v2

    #@f1
    mul-int/2addr v0, v1

    #@f2
    iput v0, v11, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->vol:I

    #@f4
    .line 266
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f7
    move-result-object v0

    #@f8
    return-object v0
.end method

.method maximize(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;IIIIII)Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;
    .registers 27

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p1

    #@4
    move-object/from16 v2, p2

    #@6
    .line 278
    iget-object v3, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    #@8
    invoke-static {v1, v2, v3}, Lcom/google/android/material/color/utilities/QuantizerWu;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I

    #@b
    move-result v3

    #@c
    .line 279
    iget-object v4, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    #@e
    invoke-static {v1, v2, v4}, Lcom/google/android/material/color/utilities/QuantizerWu;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I

    #@11
    move-result v4

    #@12
    .line 280
    iget-object v5, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    #@14
    invoke-static {v1, v2, v5}, Lcom/google/android/material/color/utilities/QuantizerWu;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I

    #@17
    move-result v5

    #@18
    .line 281
    iget-object v6, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    #@1a
    invoke-static {v1, v2, v6}, Lcom/google/android/material/color/utilities/QuantizerWu;->bottom(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;[I)I

    #@1d
    move-result v6

    #@1e
    const-wide/16 v7, 0x0

    #@20
    const/4 v9, -0x1

    #@21
    move/from16 v11, p4

    #@23
    move v10, v9

    #@24
    move-wide v8, v7

    #@25
    move/from16 v7, p3

    #@27
    :goto_27
    if-ge v7, v11, :cond_7e

    #@29
    .line 291
    iget-object v12, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    #@2b
    invoke-static {v1, v2, v7, v12}, Lcom/google/android/material/color/utilities/QuantizerWu;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I

    #@2e
    move-result v12

    #@2f
    add-int/2addr v12, v3

    #@30
    .line 292
    iget-object v13, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    #@32
    invoke-static {v1, v2, v7, v13}, Lcom/google/android/material/color/utilities/QuantizerWu;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I

    #@35
    move-result v13

    #@36
    add-int/2addr v13, v4

    #@37
    .line 293
    iget-object v14, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    #@39
    invoke-static {v1, v2, v7, v14}, Lcom/google/android/material/color/utilities/QuantizerWu;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I

    #@3c
    move-result v14

    #@3d
    add-int/2addr v14, v5

    #@3e
    .line 294
    iget-object v15, v0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    #@40
    invoke-static {v1, v2, v7, v15}, Lcom/google/android/material/color/utilities/QuantizerWu;->top(Lcom/google/android/material/color/utilities/QuantizerWu$Box;Lcom/google/android/material/color/utilities/QuantizerWu$Direction;I[I)I

    #@43
    move-result v15

    #@44
    add-int/2addr v15, v6

    #@45
    if-nez v15, :cond_4a

    #@47
    move/from16 v16, v3

    #@49
    goto :goto_73

    #@4a
    :cond_4a
    mul-int v16, v12, v12

    #@4c
    mul-int v17, v13, v13

    #@4e
    add-int v16, v16, v17

    #@50
    mul-int v17, v14, v14

    #@52
    add-int v0, v16, v17

    #@54
    int-to-double v0, v0

    #@55
    move/from16 v16, v3

    #@57
    int-to-double v2, v15

    #@58
    div-double/2addr v0, v2

    #@59
    sub-int v2, p5, v12

    #@5b
    sub-int v3, p6, v13

    #@5d
    sub-int v12, p7, v14

    #@5f
    sub-int v13, p8, v15

    #@61
    if-nez v13, :cond_64

    #@63
    goto :goto_73

    #@64
    :cond_64
    mul-int/2addr v2, v2

    #@65
    mul-int/2addr v3, v3

    #@66
    add-int/2addr v2, v3

    #@67
    mul-int/2addr v12, v12

    #@68
    add-int/2addr v2, v12

    #@69
    int-to-double v2, v2

    #@6a
    int-to-double v12, v13

    #@6b
    div-double/2addr v2, v12

    #@6c
    add-double/2addr v0, v2

    #@6d
    cmpl-double v2, v0, v8

    #@6f
    if-lez v2, :cond_73

    #@71
    move-wide v8, v0

    #@72
    move v10, v7

    #@73
    :cond_73
    :goto_73
    add-int/lit8 v7, v7, 0x1

    #@75
    move-object/from16 v0, p0

    #@77
    move-object/from16 v1, p1

    #@79
    move-object/from16 v2, p2

    #@7b
    move/from16 v3, v16

    #@7d
    goto :goto_27

    #@7e
    .line 320
    :cond_7e
    new-instance v0, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;

    #@80
    invoke-direct {v0, v10, v8, v9}, Lcom/google/android/material/color/utilities/QuantizerWu$MaximizeResult;-><init>(ID)V

    #@83
    return-object v0
.end method

.method public quantize([II)Lcom/google/android/material/color/utilities/QuantizerResult;
    .registers 5

    #@0
    .line 55
    new-instance v0, Lcom/google/android/material/color/utilities/QuantizerMap;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/color/utilities/QuantizerMap;-><init>()V

    #@5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/color/utilities/QuantizerMap;->quantize([II)Lcom/google/android/material/color/utilities/QuantizerResult;

    #@8
    move-result-object p1

    #@9
    .line 56
    iget-object p1, p1, Lcom/google/android/material/color/utilities/QuantizerResult;->colorToCount:Ljava/util/Map;

    #@b
    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/QuantizerWu;->constructHistogram(Ljava/util/Map;)V

    #@e
    .line 57
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/QuantizerWu;->createMoments()V

    #@11
    .line 58
    invoke-virtual {p0, p2}, Lcom/google/android/material/color/utilities/QuantizerWu;->createBoxes(I)Lcom/google/android/material/color/utilities/QuantizerWu$CreateBoxesResult;

    #@14
    move-result-object p1

    #@15
    .line 59
    iget p1, p1, Lcom/google/android/material/color/utilities/QuantizerWu$CreateBoxesResult;->resultCount:I

    #@17
    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/QuantizerWu;->createResult(I)Ljava/util/List;

    #@1a
    move-result-object p1

    #@1b
    .line 60
    new-instance p2, Ljava/util/HashMap;

    #@1d
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    #@20
    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object p1

    #@24
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_41

    #@2a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Ljava/lang/Integer;

    #@30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@33
    move-result v0

    #@34
    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v0

    #@38
    const/4 v1, 0x0

    #@39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    goto :goto_24

    #@41
    .line 64
    :cond_41
    new-instance p1, Lcom/google/android/material/color/utilities/QuantizerResult;

    #@43
    invoke-direct {p1, p2}, Lcom/google/android/material/color/utilities/QuantizerResult;-><init>(Ljava/util/Map;)V

    #@46
    return-object p1
.end method

.method variance(Lcom/google/android/material/color/utilities/QuantizerWu$Box;)D
    .registers 11

    #@0
    .line 193
    iget-object v0, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsR:[I

    #@2
    invoke-static {p1, v0}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    #@5
    move-result v0

    #@6
    .line 194
    iget-object v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsG:[I

    #@8
    invoke-static {p1, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    #@b
    move-result v1

    #@c
    .line 195
    iget-object v2, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->momentsB:[I

    #@e
    invoke-static {p1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    #@11
    move-result v2

    #@12
    .line 196
    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    #@14
    iget v4, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@16
    iget v5, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@18
    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@1a
    .line 197
    invoke-static {v4, v5, v6}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@1d
    move-result v4

    #@1e
    aget-wide v4, v3, v4

    #@20
    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    #@22
    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@24
    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@26
    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@28
    .line 198
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@2b
    move-result v6

    #@2c
    aget-wide v6, v3, v6

    #@2e
    sub-double/2addr v4, v6

    #@2f
    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    #@31
    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@33
    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@35
    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@37
    .line 199
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@3a
    move-result v6

    #@3b
    aget-wide v6, v3, v6

    #@3d
    sub-double/2addr v4, v6

    #@3e
    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    #@40
    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r1:I

    #@42
    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@44
    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@46
    .line 200
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@49
    move-result v6

    #@4a
    aget-wide v6, v3, v6

    #@4c
    add-double/2addr v4, v6

    #@4d
    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    #@4f
    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@51
    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@53
    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@55
    .line 201
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@58
    move-result v6

    #@59
    aget-wide v6, v3, v6

    #@5b
    sub-double/2addr v4, v6

    #@5c
    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    #@5e
    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@60
    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g1:I

    #@62
    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@64
    .line 202
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@67
    move-result v6

    #@68
    aget-wide v6, v3, v6

    #@6a
    add-double/2addr v4, v6

    #@6b
    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    #@6d
    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@6f
    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@71
    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b1:I

    #@73
    .line 203
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@76
    move-result v6

    #@77
    aget-wide v6, v3, v6

    #@79
    add-double/2addr v4, v6

    #@7a
    iget-object v3, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->moments:[D

    #@7c
    iget v6, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->r0:I

    #@7e
    iget v7, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->g0:I

    #@80
    iget v8, p1, Lcom/google/android/material/color/utilities/QuantizerWu$Box;->b0:I

    #@82
    .line 204
    invoke-static {v6, v7, v8}, Lcom/google/android/material/color/utilities/QuantizerWu;->getIndex(III)I

    #@85
    move-result v6

    #@86
    aget-wide v6, v3, v6

    #@88
    sub-double/2addr v4, v6

    #@89
    mul-int/2addr v0, v0

    #@8a
    mul-int/2addr v1, v1

    #@8b
    add-int/2addr v0, v1

    #@8c
    mul-int/2addr v2, v2

    #@8d
    add-int/2addr v0, v2

    #@8e
    .line 207
    iget-object v1, p0, Lcom/google/android/material/color/utilities/QuantizerWu;->weights:[I

    #@90
    invoke-static {p1, v1}, Lcom/google/android/material/color/utilities/QuantizerWu;->volume(Lcom/google/android/material/color/utilities/QuantizerWu$Box;[I)I

    #@93
    move-result p1

    #@94
    int-to-double v0, v0

    #@95
    int-to-double v2, p1

    #@96
    div-double/2addr v0, v2

    #@97
    sub-double/2addr v4, v0

    #@98
    return-wide v4
.end method
