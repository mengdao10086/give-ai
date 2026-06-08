.class Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;
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
    name = "CustomBulletSpan"
.end annotation


# instance fields
.field private final color:I

.field private final gapWidth:I

.field private final radius:I

.field private sBulletPath:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(III)V
    .registers 5

    #@0
    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 1178
    iput-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->sBulletPath:Landroid/graphics/Path;

    #@6
    .line 1181
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->color:I

    #@8
    .line 1182
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->radius:I

    #@a
    .line 1183
    iput p3, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->gapWidth:I

    #@c
    return-void
.end method

.method synthetic constructor <init>(IIILcom/blankj/utilcode/util/SpanUtils$1;)V
    .registers 5

    #@0
    .line 1172
    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;-><init>(III)V

    #@3
    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .registers 14

    #@0
    .line 1194
    check-cast p8, Landroid/text/Spanned;

    #@2
    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@5
    move-result p6

    #@6
    if-ne p6, p9, :cond_5f

    #@8
    .line 1195
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    #@b
    move-result-object p6

    #@c
    .line 1197
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    #@f
    move-result p8

    #@10
    .line 1198
    iget p9, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->color:I

    #@12
    invoke-virtual {p2, p9}, Landroid/graphics/Paint;->setColor(I)V

    #@15
    .line 1199
    sget-object p9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@17
    invoke-virtual {p2, p9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@1a
    .line 1200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@1d
    move-result p9

    #@1e
    const/high16 p10, 0x40000000    # 2.0f

    #@20
    if-eqz p9, :cond_4d

    #@22
    .line 1201
    iget-object p9, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->sBulletPath:Landroid/graphics/Path;

    #@24
    if-nez p9, :cond_36

    #@26
    .line 1202
    new-instance p9, Landroid/graphics/Path;

    #@28
    invoke-direct {p9}, Landroid/graphics/Path;-><init>()V

    #@2b
    iput-object p9, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->sBulletPath:Landroid/graphics/Path;

    #@2d
    .line 1204
    iget p11, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->radius:I

    #@2f
    int-to-float p11, p11

    #@30
    sget-object p12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@32
    const/4 v0, 0x0

    #@33
    invoke-virtual {p9, v0, v0, p11, p12}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    #@36
    .line 1206
    :cond_36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@39
    .line 1207
    iget p9, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->radius:I

    #@3b
    mul-int/2addr p4, p9

    #@3c
    add-int/2addr p3, p4

    #@3d
    int-to-float p3, p3

    #@3e
    add-int/2addr p5, p7

    #@3f
    int-to-float p4, p5

    #@40
    div-float/2addr p4, p10

    #@41
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    #@44
    .line 1208
    iget-object p3, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->sBulletPath:Landroid/graphics/Path;

    #@46
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@49
    .line 1209
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@4c
    goto :goto_59

    #@4d
    .line 1211
    :cond_4d
    iget p9, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->radius:I

    #@4f
    mul-int/2addr p4, p9

    #@50
    add-int/2addr p3, p4

    #@51
    int-to-float p3, p3

    #@52
    add-int/2addr p5, p7

    #@53
    int-to-float p4, p5

    #@54
    div-float/2addr p4, p10

    #@55
    int-to-float p5, p9

    #@56
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@59
    .line 1213
    :goto_59
    invoke-virtual {p2, p8}, Landroid/graphics/Paint;->setColor(I)V

    #@5c
    .line 1214
    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@5f
    :cond_5f
    return-void
.end method

.method public getLeadingMargin(Z)I
    .registers 3

    #@0
    .line 1187
    iget p1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->radius:I

    #@2
    mul-int/lit8 p1, p1, 0x2

    #@4
    iget v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomBulletSpan;->gapWidth:I

    #@6
    add-int/2addr p1, v0

    #@7
    return p1
.end method
