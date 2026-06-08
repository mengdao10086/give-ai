.class Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;
.super Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;
.source "ClickUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ClickUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClickDrawableWrapper"
.end annotation


# instance fields
.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mColorPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    #@0
    .line 576
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 570
    iput-object v0, p0, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@6
    .line 573
    iput-object v0, p0, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->mColorPaint:Landroid/graphics/Paint;

    #@8
    .line 577
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    #@a
    if-eqz v0, :cond_1d

    #@c
    .line 578
    new-instance v0, Landroid/graphics/Paint;

    #@e
    const/4 v1, 0x5

    #@f
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@12
    iput-object v0, p0, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->mColorPaint:Landroid/graphics/Paint;

    #@14
    .line 579
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    #@16
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    #@19
    move-result p1

    #@1a
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@1d
    :cond_1d
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    #@0
    .line 607
    iget-object v0, p0, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@2
    if-nez v0, :cond_42

    #@4
    .line 608
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@b
    move-result v0

    #@c
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->getBounds()Landroid/graphics/Rect;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    #@13
    move-result v1

    #@14
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@16
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@19
    move-result-object v0

    #@1a
    .line 609
    new-instance v1, Landroid/graphics/Canvas;

    #@1c
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@1f
    .line 610
    iget-object v2, p0, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->mColorPaint:Landroid/graphics/Paint;

    #@21
    if-eqz v2, :cond_2d

    #@23
    .line 611
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->getBounds()Landroid/graphics/Rect;

    #@26
    move-result-object v2

    #@27
    iget-object v3, p0, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->mColorPaint:Landroid/graphics/Paint;

    #@29
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@2c
    goto :goto_30

    #@2d
    .line 613
    :cond_2d
    invoke-super {p0, v1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    #@30
    .line 615
    :goto_30
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    #@32
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@35
    move-result-object v2

    #@36
    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@39
    iput-object v1, p0, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@3b
    .line 616
    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->getBounds()Landroid/graphics/Rect;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    #@42
    .line 618
    :cond_42
    iget-object v0, p0, Lcom/blankj/utilcode/util/ClickUtils$ClickDrawableWrapper;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    #@44
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    #@47
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    #@0
    .line 596
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setAlpha(I)V

    #@3
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    #@0
    .line 585
    invoke-super {p0, p1}, Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@3
    return-void
.end method
