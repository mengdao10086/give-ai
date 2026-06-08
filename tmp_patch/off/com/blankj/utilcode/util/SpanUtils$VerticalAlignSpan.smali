.class Lcom/blankj/utilcode/util/SpanUtils$VerticalAlignSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SpanUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VerticalAlignSpan"
.end annotation


# static fields
.field static final ALIGN_CENTER:I = 0x2

.field static final ALIGN_TOP:I = 0x3


# instance fields
.field final mVerticalAlignment:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    #@0
    .line 1001
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    #@3
    .line 1002
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$VerticalAlignSpan;->mVerticalAlignment:I

    #@5
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 10

    #@0
    .line 1013
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@3
    move-result-object p2

    #@4
    .line 1014
    invoke-virtual {p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    #@7
    move-result-object p3

    #@8
    .line 1038
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@b
    move-result-object p2

    #@c
    iget p4, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@e
    add-int/2addr p4, p7

    #@f
    add-int/2addr p4, p7

    #@10
    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@12
    add-int/2addr p4, p3

    #@13
    div-int/lit8 p4, p4, 0x2

    #@15
    add-int/2addr p8, p6

    #@16
    div-int/lit8 p8, p8, 0x2

    #@18
    sub-int/2addr p4, p8

    #@19
    sub-int/2addr p7, p4

    #@1a
    int-to-float p3, p7

    #@1b
    invoke-virtual {p1, p2, p5, p3, p9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@1e
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 6

    #@0
    .line 1007
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@3
    move-result-object p2

    #@4
    .line 1008
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@7
    move-result-object p2

    #@8
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    #@b
    move-result p1

    #@c
    float-to-int p1, p1

    #@d
    return p1
.end method
