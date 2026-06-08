.class Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;
.super Landroid/text/style/CharacterStyle;
.source "SpanUtils.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShadowSpan"
.end annotation


# instance fields
.field private dx:F

.field private dy:F

.field private radius:F

.field private shadowColor:I


# direct methods
.method private constructor <init>(FFFI)V
    .registers 5

    #@0
    .line 1447
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    #@3
    .line 1448
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->radius:F

    #@5
    .line 1449
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->dx:F

    #@7
    .line 1450
    iput p3, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->dy:F

    #@9
    .line 1451
    iput p4, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->shadowColor:I

    #@b
    return-void
.end method

.method synthetic constructor <init>(FFFILcom/blankj/utilcode/util/SpanUtils$1;)V
    .registers 6

    #@0
    .line 1439
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;-><init>(FFFI)V

    #@3
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 6

    #@0
    .line 1456
    iget v0, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->radius:F

    #@2
    iget v1, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->dx:F

    #@4
    iget v2, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->dy:F

    #@6
    iget v3, p0, Lcom/blankj/utilcode/util/SpanUtils$ShadowSpan;->shadowColor:I

    #@8
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    #@b
    return-void
.end method
