.class public Lcom/google/android/material/resources/TextAppearance;
.super Ljava/lang/Object;
.source "TextAppearance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TextAppearance"

.field private static final TYPEFACE_MONOSPACE:I = 0x3

.field private static final TYPEFACE_SANS:I = 0x1

.field private static final TYPEFACE_SERIF:I = 0x2


# instance fields
.field private font:Landroid/graphics/Typeface;

.field public final fontFamily:Ljava/lang/String;

.field private final fontFamilyResourceId:I

.field private fontResolved:Z

.field public final hasLetterSpacing:Z

.field public final letterSpacing:F

.field public final shadowColor:Landroid/content/res/ColorStateList;

.field public final shadowDx:F

.field public final shadowDy:F

.field public final shadowRadius:F

.field public final textAllCaps:Z

.field private textColor:Landroid/content/res/ColorStateList;

.field public final textColorHint:Landroid/content/res/ColorStateList;

.field public final textColorLink:Landroid/content/res/ColorStateList;

.field private textSize:F

.field public final textStyle:I

.field public final typeface:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8

    #@0
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 77
    iput-boolean v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    #@6
    .line 82
    sget-object v1, Lcom/google/android/material/R$styleable;->TextAppearance:[I

    #@8
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object v1

    #@c
    .line 84
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textSize:I

    #@e
    const/4 v3, 0x0

    #@f
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@12
    move-result v2

    #@13
    invoke-virtual {p0, v2}, Lcom/google/android/material/resources/TextAppearance;->setTextSize(F)V

    #@16
    .line 85
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColor:I

    #@18
    .line 86
    invoke-static {p1, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@1b
    move-result-object v2

    #@1c
    .line 85
    invoke-virtual {p0, v2}, Lcom/google/android/material/resources/TextAppearance;->setTextColor(Landroid/content/res/ColorStateList;)V

    #@1f
    .line 88
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColorHint:I

    #@21
    .line 89
    invoke-static {p1, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@24
    move-result-object v2

    #@25
    iput-object v2, p0, Lcom/google/android/material/resources/TextAppearance;->textColorHint:Landroid/content/res/ColorStateList;

    #@27
    .line 91
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textColorLink:I

    #@29
    .line 92
    invoke-static {p1, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@2c
    move-result-object v2

    #@2d
    iput-object v2, p0, Lcom/google/android/material/resources/TextAppearance;->textColorLink:Landroid/content/res/ColorStateList;

    #@2f
    .line 94
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_textStyle:I

    #@31
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@34
    move-result v2

    #@35
    iput v2, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    #@37
    .line 95
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_android_typeface:I

    #@39
    const/4 v4, 0x1

    #@3a
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3d
    move-result v2

    #@3e
    iput v2, p0, Lcom/google/android/material/resources/TextAppearance;->typeface:I

    #@40
    .line 96
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_fontFamily:I

    #@42
    sget v4, Lcom/google/android/material/R$styleable;->TextAppearance_android_fontFamily:I

    #@44
    .line 97
    invoke-static {v1, v2, v4}, Lcom/google/android/material/resources/MaterialResources;->getIndexWithValue(Landroid/content/res/TypedArray;II)I

    #@47
    move-result v2

    #@48
    .line 101
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@4b
    move-result v4

    #@4c
    iput v4, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    #@4e
    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    iput-object v2, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    #@54
    .line 103
    sget v2, Lcom/google/android/material/R$styleable;->TextAppearance_textAllCaps:I

    #@56
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@59
    move-result v0

    #@5a
    iput-boolean v0, p0, Lcom/google/android/material/resources/TextAppearance;->textAllCaps:Z

    #@5c
    .line 104
    sget v0, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowColor:I

    #@5e
    .line 105
    invoke-static {p1, v1, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@61
    move-result-object v0

    #@62
    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    #@64
    .line 107
    sget v0, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowDx:I

    #@66
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@69
    move-result v0

    #@6a
    iput v0, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    #@6c
    .line 108
    sget v0, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowDy:I

    #@6e
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@71
    move-result v0

    #@72
    iput v0, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    #@74
    .line 109
    sget v0, Lcom/google/android/material/R$styleable;->TextAppearance_android_shadowRadius:I

    #@76
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@79
    move-result v0

    #@7a
    iput v0, p0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    #@7c
    .line 111
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@7f
    .line 114
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    #@81
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    #@84
    move-result-object p1

    #@85
    .line 115
    sget p2, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_android_letterSpacing:I

    #@87
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@8a
    move-result p2

    #@8b
    iput-boolean p2, p0, Lcom/google/android/material/resources/TextAppearance;->hasLetterSpacing:Z

    #@8d
    .line 116
    sget p2, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_android_letterSpacing:I

    #@8f
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@92
    move-result p2

    #@93
    iput p2, p0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    #@95
    .line 117
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@98
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/resources/TextAppearance;)Landroid/graphics/Typeface;
    .registers 1

    #@0
    .line 48
    iget-object p0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@2
    return-object p0
.end method

.method static synthetic access$002(Lcom/google/android/material/resources/TextAppearance;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 2

    #@0
    .line 48
    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@2
    return-object p1
.end method

.method static synthetic access$102(Lcom/google/android/material/resources/TextAppearance;Z)Z
    .registers 2

    #@0
    .line 48
    iput-boolean p1, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    #@2
    return p1
.end method

.method private createFallbackFont()V
    .registers 3

    #@0
    .line 269
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@2
    if-nez v0, :cond_10

    #@4
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    #@6
    if-eqz v0, :cond_10

    #@8
    .line 270
    iget v1, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    #@a
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@10
    .line 274
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@12
    if-nez v0, :cond_3c

    #@14
    .line 275
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->typeface:I

    #@16
    const/4 v1, 0x1

    #@17
    if-eq v0, v1, :cond_2e

    #@19
    const/4 v1, 0x2

    #@1a
    if-eq v0, v1, :cond_29

    #@1c
    const/4 v1, 0x3

    #@1d
    if-eq v0, v1, :cond_24

    #@1f
    .line 286
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@21
    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@23
    goto :goto_32

    #@24
    .line 283
    :cond_24
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    #@26
    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@28
    goto :goto_32

    #@29
    .line 280
    :cond_29
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    #@2b
    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@2d
    goto :goto_32

    #@2e
    .line 277
    :cond_2e
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    #@30
    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@32
    .line 289
    :goto_32
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@34
    iget v1, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    #@36
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@3c
    :cond_3c
    return-void
.end method

.method private shouldLoadFontSynchronously(Landroid/content/Context;)Z
    .registers 4

    #@0
    .line 379
    invoke-static {}, Lcom/google/android/material/resources/TextAppearanceConfig;->shouldLoadFontSynchronously()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 383
    :cond_8
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    #@a
    if-eqz v0, :cond_11

    #@c
    .line 384
    invoke-static {p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getCachedFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    #@f
    move-result-object p1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    :goto_12
    if-eqz p1, :cond_15

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 v1, 0x0

    #@16
    :goto_16
    return v1
.end method


# virtual methods
.method public getFallbackFont()Landroid/graphics/Typeface;
    .registers 2

    #@0
    .line 263
    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearance;->createFallbackFont()V

    #@3
    .line 264
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@5
    return-object v0
.end method

.method public getFont(Landroid/content/Context;)Landroid/graphics/Typeface;
    .registers 4

    #@0
    .line 132
    iget-boolean v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 133
    iget-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@6
    return-object p1

    #@7
    .line 137
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_37

    #@d
    .line 139
    :try_start_d
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    #@f
    invoke-static {p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    #@12
    move-result-object p1

    #@13
    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@15
    if-eqz p1, :cond_37

    #@17
    .line 141
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    #@19
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    #@1c
    move-result-object p1

    #@1d
    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;
    :try_end_1f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_1f} :catch_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_1f} :catch_37
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_20

    #@1f
    goto :goto_37

    #@20
    :catch_20
    move-exception p1

    #@21
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    #@23
    const-string v1, "Error loading font "

    #@25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@28
    iget-object v1, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    const-string v1, "TextAppearance"

    #@34
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    .line 151
    :catch_37
    :cond_37
    :goto_37
    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearance;->createFallbackFont()V

    #@3a
    const/4 p1, 0x1

    #@3b
    .line 152
    iput-boolean p1, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    #@3d
    .line 154
    iget-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@3f
    return-object p1
.end method

.method public getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
    .registers 5

    #@0
    .line 235
    invoke-virtual {p0}, Lcom/google/android/material/resources/TextAppearance;->getFallbackFont()Landroid/graphics/Typeface;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    #@7
    .line 237
    new-instance v0, Lcom/google/android/material/resources/TextAppearance$2;

    #@9
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/resources/TextAppearance$2;-><init>(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    #@c
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    #@f
    return-void
.end method

.method public getFontAsync(Landroid/content/Context;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
    .registers 7

    #@0
    .line 172
    invoke-direct {p0, p1}, Lcom/google/android/material/resources/TextAppearance;->shouldLoadFontSynchronously(Landroid/content/Context;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 173
    invoke-virtual {p0, p1}, Lcom/google/android/material/resources/TextAppearance;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    #@9
    goto :goto_d

    #@a
    .line 176
    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearance;->createFallbackFont()V

    #@d
    .line 179
    :goto_d
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamilyResourceId:I

    #@f
    const/4 v1, 0x1

    #@10
    if-nez v0, :cond_14

    #@12
    .line 181
    iput-boolean v1, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    #@14
    .line 184
    :cond_14
    iget-boolean v2, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    #@16
    if-eqz v2, :cond_1e

    #@18
    .line 185
    iget-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->font:Landroid/graphics/Typeface;

    #@1a
    invoke-virtual {p2, p1, v1}, Lcom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrieved(Landroid/graphics/Typeface;Z)V

    #@1d
    return-void

    #@1e
    .line 191
    :cond_1e
    :try_start_1e
    new-instance v2, Lcom/google/android/material/resources/TextAppearance$1;

    #@20
    invoke-direct {v2, p0, p2}, Lcom/google/android/material/resources/TextAppearance$1;-><init>(Lcom/google/android/material/resources/TextAppearance;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    #@23
    const/4 v3, 0x0

    #@24
    invoke-static {p1, v0, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;ILandroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_27} :catch_46
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_27} :catch_28

    #@27
    goto :goto_4b

    #@28
    :catch_28
    move-exception p1

    #@29
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    #@2b
    const-string v2, "Error loading font "

    #@2d
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@30
    iget-object v2, p0, Lcom/google/android/material/resources/TextAppearance;->fontFamily:Ljava/lang/String;

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    const-string v2, "TextAppearance"

    #@3c
    invoke-static {v2, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    .line 215
    iput-boolean v1, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    #@41
    const/4 p1, -0x3

    #@42
    .line 216
    invoke-virtual {p2, p1}, Lcom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrievalFailed(I)V

    #@45
    goto :goto_4b

    #@46
    .line 211
    :catch_46
    iput-boolean v1, p0, Lcom/google/android/material/resources/TextAppearance;->fontResolved:Z

    #@48
    .line 212
    invoke-virtual {p2, v1}, Lcom/google/android/material/resources/TextAppearanceFontCallback;->onFontRetrievalFailed(I)V

    #@4b
    :goto_4b
    return-void
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    #@0
    .line 363
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public getTextSize()F
    .registers 2

    #@0
    .line 371
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    #@2
    return v0
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 367
    iput-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    #@2
    return-void
.end method

.method public setTextSize(F)V
    .registers 2

    #@0
    .line 375
    iput p1, p0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    #@2
    return-void
.end method

.method public updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
    .registers 8

    #@0
    .line 303
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    #@3
    .line 306
    iget-object p1, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    #@5
    if-eqz p1, :cond_14

    #@7
    .line 307
    iget-object p3, p2, Landroid/text/TextPaint;->drawableState:[I

    #@9
    iget-object v0, p0, Lcom/google/android/material/resources/TextAppearance;->textColor:Landroid/content/res/ColorStateList;

    #@b
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@e
    move-result v0

    #@f
    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@12
    move-result p1

    #@13
    goto :goto_16

    #@14
    :cond_14
    const/high16 p1, -0x1000000

    #@16
    .line 305
    :goto_16
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    #@19
    .line 309
    iget p1, p0, Lcom/google/android/material/resources/TextAppearance;->shadowRadius:F

    #@1b
    iget p3, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDx:F

    #@1d
    iget v0, p0, Lcom/google/android/material/resources/TextAppearance;->shadowDy:F

    #@1f
    .line 313
    iget-object v1, p0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    #@21
    if-eqz v1, :cond_30

    #@23
    .line 314
    iget-object v2, p2, Landroid/text/TextPaint;->drawableState:[I

    #@25
    iget-object v3, p0, Lcom/google/android/material/resources/TextAppearance;->shadowColor:Landroid/content/res/ColorStateList;

    #@27
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@2a
    move-result v3

    #@2b
    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@2e
    move-result v1

    #@2f
    goto :goto_31

    #@30
    :cond_30
    const/4 v1, 0x0

    #@31
    .line 309
    :goto_31
    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    #@34
    return-void
.end method

.method public updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V
    .registers 5

    #@0
    .line 328
    invoke-direct {p0, p1}, Lcom/google/android/material/resources/TextAppearance;->shouldLoadFontSynchronously(Landroid/content/Context;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 329
    invoke-virtual {p0, p1}, Lcom/google/android/material/resources/TextAppearance;->getFont(Landroid/content/Context;)Landroid/graphics/Typeface;

    #@9
    move-result-object p3

    #@a
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/resources/TextAppearance;->updateTextPaintMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V

    #@d
    goto :goto_11

    #@e
    .line 331
    :cond_e
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/resources/TextAppearance;->getFontAsync(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    #@11
    :goto_11
    return-void
.end method

.method public updateTextPaintMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Landroid/graphics/Typeface;)V
    .registers 4

    #@0
    .line 342
    invoke-static {p1, p3}, Lcom/google/android/material/resources/TypefaceUtils;->maybeCopyWithFontWeightAdjustment(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_7

    #@6
    move-object p3, p1

    #@7
    .line 346
    :cond_7
    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@a
    .line 348
    iget p1, p0, Lcom/google/android/material/resources/TextAppearance;->textStyle:I

    #@c
    invoke-virtual {p3}, Landroid/graphics/Typeface;->getStyle()I

    #@f
    move-result p3

    #@10
    not-int p3, p3

    #@11
    and-int/2addr p1, p3

    #@12
    and-int/lit8 p3, p1, 0x1

    #@14
    if-eqz p3, :cond_18

    #@16
    const/4 p3, 0x1

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 p3, 0x0

    #@19
    .line 349
    :goto_19
    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    #@1c
    and-int/lit8 p1, p1, 0x2

    #@1e
    if-eqz p1, :cond_23

    #@20
    const/high16 p1, -0x41800000    # -0.25f

    #@22
    goto :goto_24

    #@23
    :cond_23
    const/4 p1, 0x0

    #@24
    .line 350
    :goto_24
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSkewX(F)V

    #@27
    .line 352
    iget p1, p0, Lcom/google/android/material/resources/TextAppearance;->textSize:F

    #@29
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    #@2c
    .line 355
    iget-boolean p1, p0, Lcom/google/android/material/resources/TextAppearance;->hasLetterSpacing:Z

    #@2e
    if-eqz p1, :cond_35

    #@30
    .line 356
    iget p1, p0, Lcom/google/android/material/resources/TextAppearance;->letterSpacing:F

    #@32
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    #@35
    :cond_35
    return-void
.end method
