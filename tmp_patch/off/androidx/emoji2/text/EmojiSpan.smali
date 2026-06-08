.class public abstract Landroidx/emoji2/text/EmojiSpan;
.super Landroid/text/style/ReplacementSpan;
.source "EmojiSpan.java"


# instance fields
.field private mHeight:S

.field private final mMetadata:Landroidx/emoji2/text/EmojiMetadata;

.field private mRatio:F

.field private final mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mWidth:S


# direct methods
.method constructor <init>(Landroidx/emoji2/text/EmojiMetadata;)V
    .registers 3

    #@0
    .line 75
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    #@3
    .line 42
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    #@5
    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    #@a
    const/4 v0, -0x1

    #@b
    .line 55
    iput-short v0, p0, Landroidx/emoji2/text/EmojiSpan;->mWidth:S

    #@d
    .line 60
    iput-short v0, p0, Landroidx/emoji2/text/EmojiSpan;->mHeight:S

    #@f
    const/high16 v0, 0x3f800000    # 1.0f

    #@11
    .line 65
    iput v0, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    #@13
    const-string v0, "metadata cannot be null"

    #@15
    .line 76
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    .line 77
    iput-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mMetadata:Landroidx/emoji2/text/EmojiMetadata;

    #@1a
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .registers 2

    #@0
    .line 130
    iget-short v0, p0, Landroidx/emoji2/text/EmojiSpan;->mHeight:S

    #@2
    return v0
.end method

.method public final getId()I
    .registers 2

    #@0
    .line 148
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiSpan;->getMetadata()Landroidx/emoji2/text/EmojiMetadata;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiMetadata;->getId()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getMetadata()Landroidx/emoji2/text/EmojiMetadata;
    .registers 2

    #@0
    .line 110
    iget-object v0, p0, Landroidx/emoji2/text/EmojiSpan;->mMetadata:Landroidx/emoji2/text/EmojiMetadata;

    #@2
    return-object v0
.end method

.method final getRatio()F
    .registers 2

    #@0
    .line 138
    iget v0, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    #@2
    return v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 6

    #@0
    .line 87
    iget-object p2, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    #@2
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    #@5
    .line 88
    iget-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    #@7
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@9
    iget-object p2, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    #@b
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@d
    sub-int/2addr p1, p2

    #@e
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@11
    move-result p1

    #@12
    int-to-float p1, p1

    #@13
    const/high16 p2, 0x3f800000    # 1.0f

    #@15
    mul-float/2addr p1, p2

    #@16
    .line 90
    iget-object p2, p0, Landroidx/emoji2/text/EmojiSpan;->mMetadata:Landroidx/emoji2/text/EmojiMetadata;

    #@18
    invoke-virtual {p2}, Landroidx/emoji2/text/EmojiMetadata;->getHeight()S

    #@1b
    move-result p2

    #@1c
    int-to-float p2, p2

    #@1d
    div-float/2addr p1, p2

    #@1e
    iput p1, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    #@20
    .line 91
    iget-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mMetadata:Landroidx/emoji2/text/EmojiMetadata;

    #@22
    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiMetadata;->getHeight()S

    #@25
    move-result p1

    #@26
    int-to-float p1, p1

    #@27
    iget p2, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    #@29
    mul-float/2addr p1, p2

    #@2a
    float-to-int p1, p1

    #@2b
    int-to-short p1, p1

    #@2c
    iput-short p1, p0, Landroidx/emoji2/text/EmojiSpan;->mHeight:S

    #@2e
    .line 92
    iget-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mMetadata:Landroidx/emoji2/text/EmojiMetadata;

    #@30
    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiMetadata;->getWidth()S

    #@33
    move-result p1

    #@34
    int-to-float p1, p1

    #@35
    iget p2, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    #@37
    mul-float/2addr p1, p2

    #@38
    float-to-int p1, p1

    #@39
    int-to-short p1, p1

    #@3a
    iput-short p1, p0, Landroidx/emoji2/text/EmojiSpan;->mWidth:S

    #@3c
    if-eqz p5, :cond_56

    #@3e
    .line 95
    iget-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    #@40
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@42
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@44
    .line 96
    iget-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    #@46
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@48
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@4a
    .line 97
    iget-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    #@4c
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@4e
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@50
    .line 98
    iget-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    #@52
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@54
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@56
    .line 101
    :cond_56
    iget-short p1, p0, Landroidx/emoji2/text/EmojiSpan;->mWidth:S

    #@58
    return p1
.end method

.method final getWidth()I
    .registers 2

    #@0
    .line 120
    iget-short v0, p0, Landroidx/emoji2/text/EmojiSpan;->mWidth:S

    #@2
    return v0
.end method
