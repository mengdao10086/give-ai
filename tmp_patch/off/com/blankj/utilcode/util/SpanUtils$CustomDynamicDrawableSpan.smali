.class abstract Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SpanUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CustomDynamicDrawableSpan"
.end annotation


# static fields
.field static final ALIGN_BASELINE:I = 0x1

.field static final ALIGN_BOTTOM:I = 0x0

.field static final ALIGN_CENTER:I = 0x2

.field static final ALIGN_TOP:I = 0x3


# instance fields
.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final mVerticalAlignment:I


# direct methods
.method private constructor <init>()V
    .registers 2

    #@0
    .line 1341
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 1342
    iput v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;->mVerticalAlignment:I

    #@6
    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    #@0
    .line 1345
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    #@3
    .line 1346
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;->mVerticalAlignment:I

    #@5
    return-void
.end method

.method synthetic constructor <init>(ILcom/blankj/utilcode/util/SpanUtils$1;)V
    .registers 3

    #@0
    .line 1329
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;-><init>(I)V

    #@3
    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 1411
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_b

    #@4
    .line 1414
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/graphics/drawable/Drawable;

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    :goto_c
    if-nez v0, :cond_19

    #@e
    .line 1417
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    .line 1418
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@14
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@17
    iput-object v1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    #@19
    :cond_19
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .registers 10

    #@0
    .line 1385
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p2

    #@4
    .line 1386
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object p3

    #@8
    .line 1387
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@b
    sub-int p4, p8, p6

    #@d
    .line 1392
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    #@10
    move-result p9

    #@11
    if-ge p9, p4, :cond_3a

    #@13
    .line 1393
    iget p4, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;->mVerticalAlignment:I

    #@15
    const/4 p9, 0x3

    #@16
    if-ne p4, p9, :cond_1a

    #@18
    int-to-float p3, p6

    #@19
    goto :goto_36

    #@1a
    :cond_1a
    const/4 p9, 0x2

    #@1b
    if-ne p4, p9, :cond_26

    #@1d
    add-int/2addr p8, p6

    #@1e
    .line 1396
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    #@21
    move-result p3

    #@22
    sub-int/2addr p8, p3

    #@23
    div-int/2addr p8, p9

    #@24
    :goto_24
    int-to-float p3, p8

    #@25
    goto :goto_36

    #@26
    :cond_26
    const/4 p6, 0x1

    #@27
    if-ne p4, p6, :cond_30

    #@29
    .line 1398
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    #@2c
    move-result p3

    #@2d
    sub-int/2addr p7, p3

    #@2e
    int-to-float p3, p7

    #@2f
    goto :goto_36

    #@30
    .line 1400
    :cond_30
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    #@33
    move-result p3

    #@34
    sub-int/2addr p8, p3

    #@35
    goto :goto_24

    #@36
    .line 1402
    :goto_36
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    #@39
    goto :goto_3e

    #@3a
    :cond_3a
    int-to-float p3, p6

    #@3b
    .line 1404
    invoke-virtual {p1, p5, p3}, Landroid/graphics/Canvas;->translate(FF)V

    #@3e
    .line 1406
    :goto_3e
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@41
    .line 1407
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@44
    return-void
.end method

.method public abstract getDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .registers 6

    #@0
    .line 1354
    invoke-direct {p0}, Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p1

    #@4
    .line 1355
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object p1

    #@8
    if-eqz p5, :cond_55

    #@a
    .line 1362
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@c
    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@e
    sub-int/2addr p2, p3

    #@f
    .line 1363
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@12
    move-result p3

    #@13
    if-ge p2, p3, :cond_55

    #@15
    .line 1364
    iget p3, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomDynamicDrawableSpan;->mVerticalAlignment:I

    #@17
    const/4 p4, 0x3

    #@18
    if-ne p3, p4, :cond_28

    #@1a
    .line 1365
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@1c
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@1e
    .line 1366
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@21
    move-result p2

    #@22
    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@24
    add-int/2addr p2, p3

    #@25
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@27
    goto :goto_4d

    #@28
    :cond_28
    const/4 p4, 0x2

    #@29
    if-ne p3, p4, :cond_3f

    #@2b
    .line 1368
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@2e
    move-result p3

    #@2f
    neg-int p3, p3

    #@30
    div-int/2addr p3, p4

    #@31
    div-int/lit8 p2, p2, 0x4

    #@33
    sub-int/2addr p3, p2

    #@34
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@36
    .line 1369
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@39
    move-result p3

    #@3a
    div-int/2addr p3, p4

    #@3b
    sub-int/2addr p3, p2

    #@3c
    iput p3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@3e
    goto :goto_4d

    #@3f
    .line 1371
    :cond_3f
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@42
    move-result p2

    #@43
    neg-int p2, p2

    #@44
    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@46
    add-int/2addr p2, p3

    #@47
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@49
    .line 1372
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@4b
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@4d
    .line 1374
    :goto_4d
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@4f
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@51
    .line 1375
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@53
    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@55
    .line 1378
    :cond_55
    iget p1, p1, Landroid/graphics/Rect;->right:I

    #@57
    return p1
.end method
