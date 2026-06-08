.class final Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
.super Ljava/lang/Object;
.source "StaticLayoutBuilderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
    }
.end annotation


# static fields
.field static final DEFAULT_HYPHENATION_FREQUENCY:I

.field static final DEFAULT_LINE_SPACING_ADD:F = 0.0f

.field static final DEFAULT_LINE_SPACING_MULTIPLIER:F = 1.0f

.field private static final TEXT_DIRS_CLASS:Ljava/lang/String; = "android.text.TextDirectionHeuristics"

.field private static final TEXT_DIR_CLASS:Ljava/lang/String; = "android.text.TextDirectionHeuristic"

.field private static final TEXT_DIR_CLASS_LTR:Ljava/lang/String; = "LTR"

.field private static final TEXT_DIR_CLASS_RTL:Ljava/lang/String; = "RTL"

.field private static constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z

.field private static textDirection:Ljava/lang/Object;


# instance fields
.field private alignment:Landroid/text/Layout$Alignment;

.field private ellipsize:Landroid/text/TextUtils$TruncateAt;

.field private end:I

.field private hyphenationFrequency:I

.field private includePad:Z

.field private isRtl:Z

.field private lineSpacingAdd:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private final paint:Landroid/text/TextPaint;

.field private source:Ljava/lang/CharSequence;

.field private start:I

.field private staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x1

    #@1
    .line 58
    sput v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->DEFAULT_HYPHENATION_FREQUENCY:I

    #@3
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .registers 4

    #@0
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    #@5
    .line 92
    iput-object p2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    #@7
    .line 93
    iput p3, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->width:I

    #@9
    const/4 p2, 0x0

    #@a
    .line 94
    iput p2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->start:I

    #@c
    .line 95
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@f
    move-result p1

    #@10
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    #@12
    .line 96
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@14
    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    #@16
    const p1, 0x7fffffff

    #@19
    .line 97
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    #@1b
    const/4 p1, 0x0

    #@1c
    .line 98
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingAdd:F

    #@1e
    const/high16 p1, 0x3f800000    # 1.0f

    #@20
    .line 99
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    #@22
    .line 100
    sget p1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->DEFAULT_HYPHENATION_FREQUENCY:I

    #@24
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->hyphenationFrequency:I

    #@26
    const/4 p1, 0x1

    #@27
    .line 101
    iput-boolean p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    #@29
    const/4 p1, 0x0

    #@2a
    .line 102
    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    #@2c
    return-void
.end method

.method private createConstructorWithReflection()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
        }
    .end annotation

    #@0
    .line 334
    sget-boolean v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->initialized:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 340
    :cond_5
    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    #@7
    const/4 v1, 0x0

    #@8
    const/4 v2, 0x1

    #@9
    if-eqz v0, :cond_d

    #@b
    move v0, v2

    #@c
    goto :goto_e

    #@d
    :cond_d
    move v0, v1

    #@e
    .line 342
    :goto_e
    const-class v3, Landroid/text/TextDirectionHeuristic;

    #@10
    if-eqz v0, :cond_15

    #@12
    .line 343
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    #@14
    goto :goto_17

    #@15
    :cond_15
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@17
    :goto_17
    sput-object v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->textDirection:Ljava/lang/Object;

    #@19
    const/16 v0, 0xd

    #@1b
    new-array v0, v0, [Ljava/lang/Class;

    #@1d
    .line 352
    const-class v4, Ljava/lang/CharSequence;

    #@1f
    aput-object v4, v0, v1

    #@21
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@23
    aput-object v1, v0, v2

    #@25
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@27
    const/4 v4, 0x2

    #@28
    aput-object v1, v0, v4

    #@2a
    const-class v1, Landroid/text/TextPaint;

    #@2c
    const/4 v4, 0x3

    #@2d
    aput-object v1, v0, v4

    #@2f
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@31
    const/4 v4, 0x4

    #@32
    aput-object v1, v0, v4

    #@34
    const-class v1, Landroid/text/Layout$Alignment;

    #@36
    const/4 v4, 0x5

    #@37
    aput-object v1, v0, v4

    #@39
    const/4 v1, 0x6

    #@3a
    aput-object v3, v0, v1

    #@3c
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@3e
    const/4 v3, 0x7

    #@3f
    aput-object v1, v0, v3

    #@41
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@43
    const/16 v3, 0x8

    #@45
    aput-object v1, v0, v3

    #@47
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@49
    const/16 v3, 0x9

    #@4b
    aput-object v1, v0, v3

    #@4d
    const-class v1, Landroid/text/TextUtils$TruncateAt;

    #@4f
    const/16 v3, 0xa

    #@51
    aput-object v1, v0, v3

    #@53
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@55
    const/16 v3, 0xb

    #@57
    aput-object v1, v0, v3

    #@59
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@5b
    const/16 v3, 0xc

    #@5d
    aput-object v1, v0, v3

    #@5f
    .line 369
    const-class v1, Landroid/text/StaticLayout;

    #@61
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@64
    move-result-object v0

    #@65
    sput-object v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->constructor:Ljava/lang/reflect/Constructor;

    #@67
    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@6a
    .line 371
    sput-boolean v2, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->initialized:Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6c} :catch_6d

    #@6c
    return-void

    #@6d
    :catch_6d
    move-exception v0

    #@6e
    .line 373
    new-instance v1, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;

    #@70
    invoke-direct {v1, v0}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;-><init>(Ljava/lang/Throwable;)V

    #@73
    throw v1
.end method

.method public static obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .registers 4

    #@0
    .line 116
    new-instance v0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    #@5
    return-object v0
.end method


# virtual methods
.method public build()Landroid/text/StaticLayout;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/material/internal/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException;
        }
    .end annotation

    #@0
    .line 246
    iget-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    #@2
    if-nez v0, :cond_8

    #@4
    const-string v0, ""

    #@6
    .line 247
    iput-object v0, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    .line 251
    iget v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->width:I

    #@b
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@e
    move-result v0

    #@f
    .line 252
    iget-object v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->source:Ljava/lang/CharSequence;

    #@11
    .line 253
    iget v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    #@13
    const/4 v3, 0x1

    #@14
    if-ne v2, v3, :cond_1f

    #@16
    .line 254
    iget-object v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    #@18
    int-to-float v4, v0

    #@19
    iget-object v5, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    #@1b
    invoke-static {v1, v2, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    #@1e
    move-result-object v1

    #@1f
    .line 257
    :cond_1f
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@22
    move-result v2

    #@23
    iget v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    #@25
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    #@28
    move-result v2

    #@29
    iput v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    #@2b
    .line 259
    iget-boolean v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    #@2d
    if-eqz v2, :cond_37

    #@2f
    iget v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    #@31
    if-ne v2, v3, :cond_37

    #@33
    .line 260
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@35
    iput-object v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    #@37
    .line 264
    :cond_37
    iget v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->start:I

    #@39
    iget v4, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    #@3b
    iget-object v5, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->paint:Landroid/text/TextPaint;

    #@3d
    .line 265
    invoke-static {v1, v2, v4, v5, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    #@40
    move-result-object v0

    #@41
    .line 267
    iget-object v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    #@43
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    #@46
    .line 268
    iget-boolean v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    #@48
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    #@4b
    .line 269
    iget-boolean v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    #@4d
    if-eqz v1, :cond_52

    #@4f
    .line 270
    sget-object v1, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    #@51
    goto :goto_54

    #@52
    .line 271
    :cond_52
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@54
    .line 272
    :goto_54
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    #@57
    .line 273
    iget-object v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    #@59
    if-eqz v1, :cond_5e

    #@5b
    .line 274
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    #@5e
    .line 276
    :cond_5e
    iget v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    #@60
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    #@63
    .line 277
    iget v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingAdd:F

    #@65
    const/4 v2, 0x0

    #@66
    cmpl-float v2, v1, v2

    #@68
    if-nez v2, :cond_72

    #@6a
    iget v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    #@6c
    const/high16 v4, 0x3f800000    # 1.0f

    #@6e
    cmpl-float v2, v2, v4

    #@70
    if-eqz v2, :cond_77

    #@72
    .line 279
    :cond_72
    iget v2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    #@74
    invoke-virtual {v0, v1, v2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    #@77
    .line 281
    :cond_77
    iget v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    #@79
    if-le v1, v3, :cond_80

    #@7b
    .line 282
    iget v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->hyphenationFrequency:I

    #@7d
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    #@80
    .line 284
    :cond_80
    iget-object v1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    #@82
    if-eqz v1, :cond_87

    #@84
    .line 285
    invoke-interface {v1, v0}, Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;->configure(Landroid/text/StaticLayout$Builder;)V

    #@87
    .line 287
    :cond_87
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    #@8a
    move-result-object v0

    #@8b
    return-object v0
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .registers 2

    #@0
    .line 128
    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->alignment:Landroid/text/Layout$Alignment;

    #@2
    return-object p0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .registers 2

    #@0
    .line 228
    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    #@2
    return-object p0
.end method

.method public setEnd(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .registers 2

    #@0
    .line 168
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->end:I

    #@2
    return-object p0
.end method

.method public setHyphenationFrequency(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .registers 2

    #@0
    .line 213
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->hyphenationFrequency:I

    #@2
    return-object p0
.end method

.method public setIncludePad(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .registers 2

    #@0
    .line 143
    iput-boolean p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->includePad:Z

    #@2
    return-object p0
.end method

.method public setIsRtl(Z)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .registers 2

    #@0
    .line 378
    iput-boolean p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->isRtl:Z

    #@2
    return-object p0
.end method

.method public setLineSpacing(FF)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .registers 3

    #@0
    .line 198
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingAdd:F

    #@2
    .line 199
    iput p2, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->lineSpacingMultiplier:F

    #@4
    return-object p0
.end method

.method public setMaxLines(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .registers 2

    #@0
    .line 183
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->maxLines:I

    #@2
    return-object p0
.end method

.method public setStart(I)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .registers 2

    #@0
    .line 155
    iput p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->start:I

    #@2
    return-object p0
.end method

.method public setStaticLayoutBuilderConfigurer(Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;)Lcom/google/android/material/internal/StaticLayoutBuilderCompat;
    .registers 2

    #@0
    .line 240
    iput-object p1, p0, Lcom/google/android/material/internal/StaticLayoutBuilderCompat;->staticLayoutBuilderConfigurer:Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;

    #@2
    return-object p0
.end method
