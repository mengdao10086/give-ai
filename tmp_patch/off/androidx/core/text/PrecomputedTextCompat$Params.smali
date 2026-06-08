.class public final Landroidx/core/text/PrecomputedTextCompat$Params;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/PrecomputedTextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/PrecomputedTextCompat$Params$Builder;
    }
.end annotation


# instance fields
.field private final mBreakStrategy:I

.field private final mHyphenationFrequency:I

.field private final mPaint:Landroid/text/TextPaint;

.field private final mTextDir:Landroid/text/TextDirectionHeuristic;

.field final mWrapped:Landroid/text/PrecomputedText$Params;


# direct methods
.method public constructor <init>(Landroid/text/PrecomputedText$Params;)V
    .registers 4

    #@0
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 214
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@9
    .line 215
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@f
    .line 216
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    #@15
    .line 217
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    #@1b
    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@1d
    const/16 v1, 0x1d

    #@1f
    if-lt v0, v1, :cond_22

    #@21
    goto :goto_23

    #@22
    :cond_22
    const/4 p1, 0x0

    #@23
    :goto_23
    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    #@25
    return-void
.end method

.method constructor <init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V
    .registers 7

    #@0
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v1, 0x1d

    #@7
    if-lt v0, v1, :cond_21

    #@9
    .line 198
    new-instance v0, Landroid/text/PrecomputedText$Params$Builder;

    #@b
    invoke-direct {v0, p1}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    #@e
    .line 199
    invoke-virtual {v0, p3}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    #@11
    move-result-object v0

    #@12
    .line 200
    invoke-virtual {v0, p4}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    #@15
    move-result-object v0

    #@16
    .line 201
    invoke-virtual {v0, p2}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    #@19
    move-result-object v0

    #@1a
    .line 202
    invoke-virtual {v0}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    #@20
    goto :goto_24

    #@21
    :cond_21
    const/4 v0, 0x0

    #@22
    .line 204
    iput-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    #@24
    .line 206
    :goto_24
    iput-object p1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@26
    .line 207
    iput-object p2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@28
    .line 208
    iput p3, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    #@2a
    .line 209
    iput p4, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    #@2c
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, p0, :cond_4

    #@3
    return v0

    #@4
    .line 334
    :cond_4
    instance-of v1, p1, Landroidx/core/text/PrecomputedTextCompat$Params;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 337
    :cond_a
    check-cast p1, Landroidx/core/text/PrecomputedTextCompat$Params;

    #@c
    .line 338
    invoke-virtual {p0, p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->equalsWithoutTextDirection(Landroidx/core/text/PrecomputedTextCompat$Params;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_13

    #@12
    return v2

    #@13
    .line 342
    :cond_13
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@15
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    #@18
    move-result-object p1

    #@19
    if-eq v1, p1, :cond_1c

    #@1b
    return v2

    #@1c
    :cond_1c
    return v0
.end method

.method public equalsWithoutTextDirection(Landroidx/core/text/PrecomputedTextCompat$Params;)Z
    .registers 5

    #@0
    .line 275
    iget v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    #@2
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    if-eq v0, v1, :cond_a

    #@9
    return v2

    #@a
    .line 278
    :cond_a
    iget v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    #@c
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    #@f
    move-result v1

    #@10
    if-eq v0, v1, :cond_13

    #@12
    return v2

    #@13
    .line 283
    :cond_13
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@15
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    #@18
    move-result v0

    #@19
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    #@20
    move-result v1

    #@21
    cmpl-float v0, v0, v1

    #@23
    if-eqz v0, :cond_26

    #@25
    return v2

    #@26
    .line 286
    :cond_26
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@28
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    #@2b
    move-result v0

    #@2c
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextScaleX()F

    #@33
    move-result v1

    #@34
    cmpl-float v0, v0, v1

    #@36
    if-eqz v0, :cond_39

    #@38
    return v2

    #@39
    .line 289
    :cond_39
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@3b
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSkewX()F

    #@3e
    move-result v0

    #@3f
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSkewX()F

    #@46
    move-result v1

    #@47
    cmpl-float v0, v0, v1

    #@49
    if-eqz v0, :cond_4c

    #@4b
    return v2

    #@4c
    .line 293
    :cond_4c
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@4e
    invoke-virtual {v0}, Landroid/text/TextPaint;->getLetterSpacing()F

    #@51
    move-result v0

    #@52
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Landroid/text/TextPaint;->getLetterSpacing()F

    #@59
    move-result v1

    #@5a
    cmpl-float v0, v0, v1

    #@5c
    if-eqz v0, :cond_5f

    #@5e
    return v2

    #@5f
    .line 296
    :cond_5f
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@61
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    .line 297
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    .line 296
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@70
    move-result v0

    #@71
    if-nez v0, :cond_74

    #@73
    return v2

    #@74
    .line 301
    :cond_74
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@76
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    #@79
    move-result v0

    #@7a
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    #@81
    move-result v1

    #@82
    if-eq v0, v1, :cond_85

    #@84
    return v2

    #@85
    .line 305
    :cond_85
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@87
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    #@8a
    move-result-object v0

    #@8b
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    #@92
    move-result-object v1

    #@93
    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v0

    #@97
    if-nez v0, :cond_9a

    #@99
    return v2

    #@9a
    .line 313
    :cond_9a
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@9c
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@9f
    move-result-object v0

    #@a0
    if-nez v0, :cond_ad

    #@a2
    .line 314
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    #@a5
    move-result-object p1

    #@a6
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@a9
    move-result-object p1

    #@aa
    if-eqz p1, :cond_c2

    #@ac
    return v2

    #@ad
    .line 317
    :cond_ad
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@af
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@b2
    move-result-object v0

    #@b3
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    #@b6
    move-result-object p1

    #@b7
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@ba
    move-result-object p1

    #@bb
    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    #@be
    move-result p1

    #@bf
    if-nez p1, :cond_c2

    #@c1
    return v2

    #@c2
    :cond_c2
    const/4 p1, 0x1

    #@c3
    return p1
.end method

.method public getBreakStrategy()I
    .registers 2

    #@0
    .line 252
    iget v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    #@2
    return v0
.end method

.method public getHyphenationFrequency()I
    .registers 2

    #@0
    .line 264
    iget v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    #@2
    return v0
.end method

.method public getTextDirection()Landroid/text/TextDirectionHeuristic;
    .registers 2

    #@0
    .line 240
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@2
    return-object v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .registers 2

    #@0
    .line 227
    iget-object v0, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/16 v0, 0xb

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    .line 352
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@6
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    #@9
    move-result v1

    #@a
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x0

    #@f
    aput-object v1, v0, v2

    #@11
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@13
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextScaleX()F

    #@16
    move-result v1

    #@17
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x1

    #@1c
    aput-object v1, v0, v2

    #@1e
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@20
    .line 353
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSkewX()F

    #@23
    move-result v1

    #@24
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@27
    move-result-object v1

    #@28
    const/4 v2, 0x2

    #@29
    aput-object v1, v0, v2

    #@2b
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@2d
    invoke-virtual {v1}, Landroid/text/TextPaint;->getLetterSpacing()F

    #@30
    move-result v1

    #@31
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@34
    move-result-object v1

    #@35
    const/4 v2, 0x3

    #@36
    aput-object v1, v0, v2

    #@38
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@3a
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    #@3d
    move-result v1

    #@3e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v1

    #@42
    const/4 v2, 0x4

    #@43
    aput-object v1, v0, v2

    #@45
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@47
    .line 354
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    #@4a
    move-result-object v1

    #@4b
    const/4 v2, 0x5

    #@4c
    aput-object v1, v0, v2

    #@4e
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@50
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@53
    move-result-object v1

    #@54
    const/4 v2, 0x6

    #@55
    aput-object v1, v0, v2

    #@57
    iget-object v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@59
    invoke-virtual {v1}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    #@5c
    move-result v1

    #@5d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@60
    move-result-object v1

    #@61
    const/4 v2, 0x7

    #@62
    aput-object v1, v0, v2

    #@64
    const/16 v1, 0x8

    #@66
    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@68
    aput-object v2, v0, v1

    #@6a
    iget v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    #@6c
    .line 355
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6f
    move-result-object v1

    #@70
    const/16 v2, 0x9

    #@72
    aput-object v1, v0, v2

    #@74
    iget v1, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    #@76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v1

    #@7a
    const/16 v2, 0xa

    #@7c
    aput-object v1, v0, v2

    #@7e
    .line 352
    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    #@81
    move-result v0

    #@82
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "{"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    const-string v2, "textSize="

    #@b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e
    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@10
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    #@13
    move-result v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    const-string v2, ", textScaleX="

    #@23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@26
    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@28
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    #@2b
    move-result v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    const-string v2, ", textSkewX="

    #@3b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3e
    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@40
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSkewX()F

    #@43
    move-result v2

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    const-string v2, ", letterSpacing="

    #@53
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@56
    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@58
    invoke-virtual {v2}, Landroid/text/TextPaint;->getLetterSpacing()F

    #@5b
    move-result v2

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    #@69
    const-string v2, ", elegantTextHeight="

    #@6b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@6e
    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@70
    invoke-virtual {v2}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    #@73
    move-result v2

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    #@81
    const-string v2, ", textLocale="

    #@83
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@86
    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@88
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    #@99
    const-string v2, ", typeface="

    #@9b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@9e
    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@a0
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    #@b1
    const-string v2, ", variationSettings="

    #@b3
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b6
    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    #@b8
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    #@bb
    move-result-object v2

    #@bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v1

    #@c0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v1

    #@c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    #@c9
    const-string v2, ", textDir="

    #@cb
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@ce
    iget-object v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@d0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v1

    #@d4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v1

    #@d8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    #@dd
    const-string v2, ", breakStrategy="

    #@df
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@e2
    iget v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    #@e4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v1

    #@e8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v1

    #@ec
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    #@f1
    const-string v2, ", hyphenationFrequency="

    #@f3
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f6
    iget v2, p0, Landroidx/core/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    #@f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v1

    #@fc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v1

    #@100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    const-string v1, "}"

    #@105
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v0

    #@10c
    return-object v0
.end method
