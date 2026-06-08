.class Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;
.super Ljava/lang/Object;
.source "SpanUtils.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomLineHeightSpan"
.end annotation


# static fields
.field static final ALIGN_CENTER:I = 0x2

.field static final ALIGN_TOP:I = 0x3

.field static sfm:Landroid/graphics/Paint$FontMetricsInt;


# instance fields
.field private final height:I

.field final mVerticalAlignment:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    #@0
    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1053
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->height:I

    #@5
    .line 1054
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->mVerticalAlignment:I

    #@7
    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 10

    #@0
    .line 1061
    sget-object p2, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    #@2
    if-nez p2, :cond_28

    #@4
    .line 1062
    new-instance p2, Landroid/graphics/Paint$FontMetricsInt;

    #@6
    invoke-direct {p2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    #@9
    sput-object p2, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    #@b
    .line 1063
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@d
    iput v0, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@f
    .line 1064
    sget-object p2, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    #@11
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@13
    iput v0, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@15
    .line 1065
    sget-object p2, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    #@17
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@19
    iput v0, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@1b
    .line 1066
    sget-object p2, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    #@1d
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@1f
    iput v0, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@21
    .line 1067
    sget-object p2, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    #@23
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    #@25
    iput v0, p2, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    #@27
    goto :goto_44

    #@28
    .line 1069
    :cond_28
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@2a
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@2c
    .line 1070
    sget-object p2, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    #@2e
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@30
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@32
    .line 1071
    sget-object p2, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    #@34
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@36
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@38
    .line 1072
    sget-object p2, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    #@3a
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@3c
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@3e
    .line 1073
    sget-object p2, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    #@40
    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    #@42
    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    #@44
    .line 1075
    :goto_44
    iget p2, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->height:I

    #@46
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@48
    add-int/2addr v0, p5

    #@49
    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@4b
    sub-int/2addr v0, v1

    #@4c
    sub-int/2addr v0, p4

    #@4d
    sub-int/2addr p2, v0

    #@4e
    const/4 v0, 0x3

    #@4f
    const/4 v1, 0x2

    #@50
    if-lez p2, :cond_6f

    #@52
    .line 1077
    iget v2, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->mVerticalAlignment:I

    #@54
    if-ne v2, v0, :cond_5c

    #@56
    .line 1078
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@58
    add-int/2addr v2, p2

    #@59
    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@5b
    goto :goto_6f

    #@5c
    :cond_5c
    if-ne v2, v1, :cond_6a

    #@5e
    .line 1080
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@60
    div-int/2addr p2, v1

    #@61
    add-int/2addr v2, p2

    #@62
    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@64
    .line 1081
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@66
    sub-int/2addr v2, p2

    #@67
    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@69
    goto :goto_6f

    #@6a
    .line 1083
    :cond_6a
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@6c
    sub-int/2addr v2, p2

    #@6d
    iput v2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@6f
    .line 1086
    :cond_6f
    :goto_6f
    iget p2, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->height:I

    #@71
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@73
    add-int/2addr p5, v2

    #@74
    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@76
    sub-int/2addr p5, v2

    #@77
    sub-int/2addr p5, p4

    #@78
    sub-int/2addr p2, p5

    #@79
    if-lez p2, :cond_98

    #@7b
    .line 1088
    iget p4, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->mVerticalAlignment:I

    #@7d
    if-ne p4, v0, :cond_85

    #@7f
    .line 1089
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@81
    add-int/2addr p4, p2

    #@82
    iput p4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@84
    goto :goto_98

    #@85
    :cond_85
    if-ne p4, v1, :cond_93

    #@87
    .line 1091
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@89
    div-int/2addr p2, v1

    #@8a
    add-int/2addr p4, p2

    #@8b
    iput p4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@8d
    .line 1092
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@8f
    sub-int/2addr p4, p2

    #@90
    iput p4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@92
    goto :goto_98

    #@93
    .line 1094
    :cond_93
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@95
    sub-int/2addr p4, p2

    #@96
    iput p4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@98
    .line 1097
    :cond_98
    :goto_98
    check-cast p1, Landroid/text/Spanned;

    #@9a
    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@9d
    move-result p1

    #@9e
    if-ne p3, p1, :cond_a3

    #@a0
    const/4 p1, 0x0

    #@a1
    .line 1098
    sput-object p1, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    #@a3
    :cond_a3
    return-void
.end method
