.class public final Landroidx/emoji2/text/TypefaceEmojiSpan;
.super Landroidx/emoji2/text/EmojiSpan;
.source "TypefaceEmojiSpan.java"


# static fields
.field private static sDebugPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/EmojiMetadata;)V
    .registers 2

    #@0
    .line 49
    invoke-direct {p0, p1}, Landroidx/emoji2/text/EmojiSpan;-><init>(Landroidx/emoji2/text/EmojiMetadata;)V

    #@3
    return-void
.end method

.method private static getDebugPaint()Landroid/graphics/Paint;
    .registers 2

    #@0
    .line 65
    sget-object v0, Landroidx/emoji2/text/TypefaceEmojiSpan;->sDebugPaint:Landroid/graphics/Paint;

    #@2
    if-nez v0, :cond_1d

    #@4
    .line 66
    new-instance v0, Landroid/text/TextPaint;

    #@6
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    #@9
    sput-object v0, Landroidx/emoji2/text/TypefaceEmojiSpan;->sDebugPaint:Landroid/graphics/Paint;

    #@b
    .line 67
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1}, Landroidx/emoji2/text/EmojiCompat;->getEmojiSpanIndicatorColor()I

    #@12
    move-result v1

    #@13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    #@16
    .line 68
    sget-object v0, Landroidx/emoji2/text/TypefaceEmojiSpan;->sDebugPaint:Landroid/graphics/Paint;

    #@18
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@1a
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@1d
    .line 70
    :cond_1d
    sget-object v0, Landroidx/emoji2/text/TypefaceEmojiSpan;->sDebugPaint:Landroid/graphics/Paint;

    #@1f
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 16

    #@0
    .line 57
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@3
    move-result-object p2

    #@4
    invoke-virtual {p2}, Landroidx/emoji2/text/EmojiCompat;->isEmojiSpanIndicatorEnabled()Z

    #@7
    move-result p2

    #@8
    if-eqz p2, :cond_1c

    #@a
    int-to-float v2, p6

    #@b
    .line 58
    invoke-virtual {p0}, Landroidx/emoji2/text/TypefaceEmojiSpan;->getWidth()I

    #@e
    move-result p2

    #@f
    int-to-float p2, p2

    #@10
    add-float v3, p5, p2

    #@12
    int-to-float v4, p8

    #@13
    invoke-static {}, Landroidx/emoji2/text/TypefaceEmojiSpan;->getDebugPaint()Landroid/graphics/Paint;

    #@16
    move-result-object v5

    #@17
    move-object v0, p1

    #@18
    move v1, p5

    #@19
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@1c
    .line 60
    :cond_1c
    invoke-virtual {p0}, Landroidx/emoji2/text/TypefaceEmojiSpan;->getMetadata()Landroidx/emoji2/text/EmojiMetadata;

    #@1f
    move-result-object p2

    #@20
    int-to-float p3, p7

    #@21
    invoke-virtual {p2, p1, p5, p3, p9}, Landroidx/emoji2/text/EmojiMetadata;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    #@24
    return-void
.end method
