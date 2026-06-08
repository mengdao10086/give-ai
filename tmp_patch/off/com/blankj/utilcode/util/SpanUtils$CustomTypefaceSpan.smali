.class Lcom/blankj/utilcode/util/SpanUtils$CustomTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "SpanUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomTypefaceSpan"
.end annotation


# instance fields
.field private final newType:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>(Landroid/graphics/Typeface;)V
    .registers 3

    #@0
    const-string v0, ""

    #@2
    .line 1225
    invoke-direct {p0, v0}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    #@5
    .line 1226
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    #@7
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Typeface;Lcom/blankj/utilcode/util/SpanUtils$1;)V
    .registers 3

    #@0
    .line 1220
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/SpanUtils$CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    #@3
    return-void
.end method

.method private apply(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V
    .registers 5

    #@0
    .line 1241
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    goto :goto_c

    #@8
    .line 1245
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    #@b
    move-result v0

    #@c
    .line 1248
    :goto_c
    invoke-virtual {p2}, Landroid/graphics/Typeface;->getStyle()I

    #@f
    move-result v1

    #@10
    not-int v1, v1

    #@11
    and-int/2addr v0, v1

    #@12
    and-int/lit8 v1, v0, 0x1

    #@14
    if-eqz v1, :cond_1a

    #@16
    const/4 v1, 0x1

    #@17
    .line 1250
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    #@1a
    :cond_1a
    and-int/lit8 v0, v0, 0x2

    #@1c
    if-eqz v0, :cond_23

    #@1e
    const/high16 v0, -0x41800000    # -0.25f

    #@20
    .line 1254
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    #@23
    .line 1257
    :cond_23
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    #@26
    .line 1259
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@29
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    #@0
    .line 1231
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils$CustomTypefaceSpan;->apply(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    #@5
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 3

    #@0
    .line 1236
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils$CustomTypefaceSpan;->apply(Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    #@5
    return-void
.end method
