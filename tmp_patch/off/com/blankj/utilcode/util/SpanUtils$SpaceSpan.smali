.class Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SpanUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpaceSpan"
.end annotation


# instance fields
.field private final paint:Landroid/graphics/Paint;

.field private final width:I


# direct methods
.method private constructor <init>(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1110
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;-><init>(II)V

    #@4
    return-void
.end method

.method private constructor <init>(II)V
    .registers 4

    #@0
    .line 1114
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    #@3
    .line 1107
    new-instance v0, Landroid/graphics/Paint;

    #@5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@8
    iput-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;->paint:Landroid/graphics/Paint;

    #@a
    .line 1115
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;->width:I

    #@c
    .line 1116
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    #@f
    .line 1117
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@14
    return-void
.end method

.method synthetic constructor <init>(IILcom/blankj/utilcode/util/SpanUtils$1;)V
    .registers 4

    #@0
    .line 1104
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;-><init>(II)V

    #@3
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 16

    #@0
    int-to-float v2, p6

    #@1
    .line 1134
    iget p2, p0, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;->width:I

    #@3
    int-to-float p2, p2

    #@4
    add-float v3, p5, p2

    #@6
    int-to-float v4, p8

    #@7
    iget-object v5, p0, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;->paint:Landroid/graphics/Paint;

    #@9
    move-object v0, p1

    #@a
    move v1, p5

    #@b
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@e
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 6

    #@0
    .line 1125
    iget p1, p0, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;->width:I

    #@2
    return p1
.end method
