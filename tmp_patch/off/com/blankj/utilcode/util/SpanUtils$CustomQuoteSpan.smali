.class Lcom/blankj/utilcode/util/SpanUtils$CustomQuoteSpan;
.super Ljava/lang/Object;
.source "SpanUtils.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomQuoteSpan"
.end annotation


# instance fields
.field private final color:I

.field private final gapWidth:I

.field private final stripeWidth:I


# direct methods
.method private constructor <init>(III)V
    .registers 4

    #@0
    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1146
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomQuoteSpan;->color:I

    #@5
    .line 1147
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomQuoteSpan;->stripeWidth:I

    #@7
    .line 1148
    iput p3, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomQuoteSpan;->gapWidth:I

    #@9
    return-void
.end method

.method synthetic constructor <init>(IIILcom/blankj/utilcode/util/SpanUtils$1;)V
    .registers 5

    #@0
    .line 1138
    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/SpanUtils$CustomQuoteSpan;-><init>(III)V

    #@3
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .registers 21

    #@0
    move-object v0, p0

    #@1
    move-object v1, p2

    #@2
    move v2, p3

    #@3
    .line 1159
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    #@6
    move-result-object v3

    #@7
    .line 1160
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    #@a
    move-result v4

    #@b
    .line 1162
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@d
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@10
    .line 1163
    iget v5, v0, Lcom/blankj/utilcode/util/SpanUtils$CustomQuoteSpan;->color:I

    #@12
    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setColor(I)V

    #@15
    int-to-float v5, v2

    #@16
    move v6, p5

    #@17
    int-to-float v6, v6

    #@18
    .line 1165
    iget v7, v0, Lcom/blankj/utilcode/util/SpanUtils$CustomQuoteSpan;->stripeWidth:I

    #@1a
    mul-int/2addr v7, p4

    #@1b
    add-int/2addr v2, v7

    #@1c
    int-to-float v2, v2

    #@1d
    move v7, p7

    #@1e
    int-to-float v7, v7

    #@1f
    move-object p3, p1

    #@20
    move p4, v5

    #@21
    move p5, v6

    #@22
    move p6, v2

    #@23
    move p7, v7

    #@24
    move-object/from16 p8, p2

    #@26
    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@29
    .line 1167
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@2c
    .line 1168
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@2f
    return-void
.end method

.method public getLeadingMargin(Z)I
    .registers 3

    #@0
    .line 1152
    iget p1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomQuoteSpan;->stripeWidth:I

    #@2
    iget v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomQuoteSpan;->gapWidth:I

    #@4
    add-int/2addr p1, v0

    #@5
    return p1
.end method
