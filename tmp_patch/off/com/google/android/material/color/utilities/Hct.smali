.class public final Lcom/google/android/material/color/utilities/Hct;
.super Ljava/lang/Object;
.source "Hct.java"


# instance fields
.field private argb:I

.field private chroma:D

.field private hue:D

.field private tone:D


# direct methods
.method private constructor <init>(I)V
    .registers 2

    #@0
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/Hct;->setInternalState(I)V

    #@6
    return-void
.end method

.method public static from(DDD)Lcom/google/android/material/color/utilities/Hct;
    .registers 6

    #@0
    .line 61
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/color/utilities/HctSolver;->solveToInt(DDD)I

    #@3
    move-result p0

    #@4
    .line 62
    new-instance p1, Lcom/google/android/material/color/utilities/Hct;

    #@6
    invoke-direct {p1, p0}, Lcom/google/android/material/color/utilities/Hct;-><init>(I)V

    #@9
    return-object p1
.end method

.method public static fromInt(I)Lcom/google/android/material/color/utilities/Hct;
    .registers 2

    #@0
    .line 72
    new-instance v0, Lcom/google/android/material/color/utilities/Hct;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/material/color/utilities/Hct;-><init>(I)V

    #@5
    return-object v0
.end method

.method private setInternalState(I)V
    .registers 5

    #@0
    .line 126
    iput p1, p0, Lcom/google/android/material/color/utilities/Hct;->argb:I

    #@2
    .line 127
    invoke-static {p1}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    #@5
    move-result-object v0

    #@6
    .line 128
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    #@9
    move-result-wide v1

    #@a
    iput-wide v1, p0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    #@c
    .line 129
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    #@f
    move-result-wide v0

    #@10
    iput-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    #@12
    .line 130
    invoke-static {p1}, Lcom/google/android/material/color/utilities/ColorUtils;->lstarFromArgb(I)D

    #@15
    move-result-wide v0

    #@16
    iput-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    #@18
    return-void
.end method


# virtual methods
.method public getChroma()D
    .registers 3

    #@0
    .line 84
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    #@2
    return-wide v0
.end method

.method public getHue()D
    .registers 3

    #@0
    .line 80
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    #@2
    return-wide v0
.end method

.method public getTone()D
    .registers 3

    #@0
    .line 88
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    #@2
    return-wide v0
.end method

.method public setChroma(D)V
    .registers 9

    #@0
    .line 112
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    #@2
    iget-wide v4, p0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    #@4
    move-wide v2, p1

    #@5
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/HctSolver;->solveToInt(DDD)I

    #@8
    move-result p1

    #@9
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/Hct;->setInternalState(I)V

    #@c
    return-void
.end method

.method public setHue(D)V
    .registers 9

    #@0
    .line 102
    iget-wide v2, p0, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    #@2
    iget-wide v4, p0, Lcom/google/android/material/color/utilities/Hct;->tone:D

    #@4
    move-wide v0, p1

    #@5
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/HctSolver;->solveToInt(DDD)I

    #@8
    move-result p1

    #@9
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/Hct;->setInternalState(I)V

    #@c
    return-void
.end method

.method public setTone(D)V
    .registers 9

    #@0
    .line 122
    iget-wide v0, p0, Lcom/google/android/material/color/utilities/Hct;->hue:D

    #@2
    iget-wide v2, p0, Lcom/google/android/material/color/utilities/Hct;->chroma:D

    #@4
    move-wide v4, p1

    #@5
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/HctSolver;->solveToInt(DDD)I

    #@8
    move-result p1

    #@9
    invoke-direct {p0, p1}, Lcom/google/android/material/color/utilities/Hct;->setInternalState(I)V

    #@c
    return-void
.end method

.method public toInt()I
    .registers 2

    #@0
    .line 92
    iget v0, p0, Lcom/google/android/material/color/utilities/Hct;->argb:I

    #@2
    return v0
.end method
