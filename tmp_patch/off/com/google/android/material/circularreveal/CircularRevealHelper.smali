.class public Lcom/google/android/material/circularreveal/CircularRevealHelper;
.super Ljava/lang/Object;
.source "CircularRevealHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/circularreveal/CircularRevealHelper$Strategy;,
        Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;
    }
.end annotation


# static fields
.field public static final BITMAP_SHADER:I = 0x0

.field public static final CLIP_PATH:I = 0x1

.field private static final DEBUG:Z = false

.field public static final REVEAL_ANIMATOR:I = 0x2

.field public static final STRATEGY:I


# instance fields
.field private buildingCircularRevealCache:Z

.field private debugPaint:Landroid/graphics/Paint;

.field private final delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

.field private hasCircularRevealCache:Z

.field private overlayDrawable:Landroid/graphics/drawable/Drawable;

.field private revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

.field private final revealPaint:Landroid/graphics/Paint;

.field private final revealPath:Landroid/graphics/Path;

.field private final scrimPaint:Landroid/graphics/Paint;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x2

    #@1
    .line 128
    sput v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;)V
    .registers 4

    #@0
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 137
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    #@5
    .line 138
    check-cast p1, Landroid/view/View;

    #@7
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@9
    const/4 v0, 0x0

    #@a
    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    #@d
    .line 141
    new-instance p1, Landroid/graphics/Path;

    #@f
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    #@12
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    #@14
    .line 142
    new-instance p1, Landroid/graphics/Paint;

    #@16
    const/4 v1, 0x7

    #@17
    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@1a
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    #@1c
    .line 143
    new-instance p1, Landroid/graphics/Paint;

    #@1e
    const/4 v1, 0x1

    #@1f
    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    #@22
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    #@24
    .line 144
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@27
    return-void
.end method

.method private drawDebugCircle(Landroid/graphics/Canvas;IF)V
    .registers 7

    #@0
    .line 352
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    #@5
    .line 353
    iget-object p2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    #@7
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@a
    .line 354
    iget-object p2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@c
    iget p2, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    #@e
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@10
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    #@12
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@14
    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    #@16
    const/high16 v2, 0x40000000    # 2.0f

    #@18
    div-float/2addr p3, v2

    #@19
    sub-float/2addr v1, p3

    #@1a
    iget-object p3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->debugPaint:Landroid/graphics/Paint;

    #@1c
    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@1f
    return-void
.end method

.method private drawDebugMode(Landroid/graphics/Canvas;)V
    .registers 6

    #@0
    .line 337
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    #@5
    .line 338
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_1c

    #@b
    .line 339
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@d
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    #@f
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@11
    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    #@13
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@15
    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    #@17
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    #@19
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@1c
    .line 343
    :cond_1c
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_30

    #@22
    const/high16 v0, -0x1000000

    #@24
    const/high16 v1, 0x41200000    # 10.0f

    #@26
    .line 344
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawDebugCircle(Landroid/graphics/Canvas;IF)V

    #@29
    const/high16 v0, -0x10000

    #@2b
    const/high16 v1, 0x40a00000    # 5.0f

    #@2d
    .line 345
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawDebugCircle(Landroid/graphics/Canvas;IF)V

    #@30
    .line 348
    :cond_30
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Landroid/graphics/Canvas;)V

    #@33
    return-void
.end method

.method private drawOverlayDrawable(Landroid/graphics/Canvas;)V
    .registers 6

    #@0
    .line 304
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawOverlayDrawable()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_31

    #@6
    .line 305
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    #@8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@b
    move-result-object v0

    #@c
    .line 306
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@e
    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    #@10
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@13
    move-result v2

    #@14
    int-to-float v2, v2

    #@15
    const/high16 v3, 0x40000000    # 2.0f

    #@17
    div-float/2addr v2, v3

    #@18
    sub-float/2addr v1, v2

    #@19
    .line 307
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@1b
    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    #@1d
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@20
    move-result v0

    #@21
    int-to-float v0, v0

    #@22
    div-float/2addr v0, v3

    #@23
    sub-float/2addr v2, v0

    #@24
    .line 309
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@27
    .line 310
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    #@29
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@2c
    neg-float v0, v1

    #@2d
    neg-float v1, v2

    #@2e
    .line 311
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@31
    :cond_31
    return-void
.end method

.method private getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F
    .registers 8

    #@0
    .line 254
    iget v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    #@2
    iget v1, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, 0x0

    #@6
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@8
    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@b
    move-result p1

    #@c
    int-to-float v4, p1

    #@d
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@f
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@12
    move-result p1

    #@13
    int-to-float v5, p1

    #@14
    .line 254
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    #@17
    move-result p1

    #@18
    return p1
.end method

.method private invalidateRevealInfo()V
    .registers 6

    #@0
    .line 242
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_1f

    #@5
    .line 243
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    #@7
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    #@a
    .line 244
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@c
    if-eqz v0, :cond_1f

    #@e
    .line 245
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    #@10
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    #@12
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@14
    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    #@16
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@18
    iget v3, v3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    #@1a
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@1c
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    #@1f
    .line 250
    :cond_1f
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@21
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@24
    return-void
.end method

.method private shouldDrawCircularReveal()Z
    .registers 5

    #@0
    .line 320
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-eqz v0, :cond_f

    #@6
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    move v0, v1

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    move v0, v2

    #@10
    .line 321
    :goto_10
    sget v3, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    #@12
    if-nez v3, :cond_1c

    #@14
    if-nez v0, :cond_1b

    #@16
    .line 322
    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    #@18
    if-eqz v0, :cond_1b

    #@1a
    move v1, v2

    #@1b
    :cond_1b
    return v1

    #@1c
    :cond_1c
    xor-int/2addr v0, v2

    #@1d
    return v0
.end method

.method private shouldDrawOverlayDrawable()Z
    .registers 2

    #@0
    .line 333
    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    #@2
    if-nez v0, :cond_e

    #@4
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    if-eqz v0, :cond_e

    #@8
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@a
    if-eqz v0, :cond_e

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :goto_f
    return v0
.end method

.method private shouldDrawScrim()Z
    .registers 2

    #@0
    .line 329
    iget-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    #@2
    if-nez v0, :cond_12

    #@4
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    #@6
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    #@9
    move-result v0

    #@a
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    :goto_13
    return v0
.end method


# virtual methods
.method public buildCircularRevealCache()V
    .registers 8

    #@0
    .line 153
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    #@2
    if-nez v0, :cond_57

    #@4
    const/4 v0, 0x1

    #@5
    .line 154
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    #@7
    const/4 v1, 0x0

    #@8
    .line 155
    iput-boolean v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    #@a
    .line 157
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@c
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    #@f
    .line 158
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@11
    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    #@14
    move-result-object v2

    #@15
    if-nez v2, :cond_43

    #@17
    .line 160
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@19
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_43

    #@1f
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@21
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_43

    #@27
    .line 161
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@29
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    #@2c
    move-result v2

    #@2d
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@2f
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@32
    move-result v3

    #@33
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@35
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@38
    move-result-object v2

    #@39
    .line 162
    new-instance v3, Landroid/graphics/Canvas;

    #@3b
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@3e
    .line 163
    iget-object v4, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@40
    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    #@43
    :cond_43
    if-eqz v2, :cond_53

    #@45
    .line 167
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    #@47
    new-instance v4, Landroid/graphics/BitmapShader;

    #@49
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@4b
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    #@4d
    invoke-direct {v4, v2, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    #@50
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@53
    .line 170
    :cond_53
    iput-boolean v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->buildingCircularRevealCache:Z

    #@55
    .line 171
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    #@57
    :cond_57
    return-void
.end method

.method public destroyCircularRevealCache()V
    .registers 3

    #@0
    .line 176
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    #@2
    if-nez v0, :cond_17

    #@4
    const/4 v0, 0x0

    #@5
    .line 177
    iput-boolean v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->hasCircularRevealCache:Z

    #@7
    .line 178
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@9
    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    #@c
    .line 179
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    #@12
    .line 180
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@14
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@17
    :cond_17
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    #@0
    .line 264
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9f

    #@6
    .line 265
    sget v0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    #@8
    if-eqz v0, :cond_76

    #@a
    const/4 v1, 0x1

    #@b
    if-eq v0, v1, :cond_48

    #@d
    const/4 v1, 0x2

    #@e
    if-ne v0, v1, :cond_33

    #@10
    .line 267
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    #@12
    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    #@15
    .line 268
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_c0

    #@1b
    const/4 v2, 0x0

    #@1c
    const/4 v3, 0x0

    #@1d
    .line 269
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@1f
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@22
    move-result v0

    #@23
    int-to-float v4, v0

    #@24
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@26
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@29
    move-result v0

    #@2a
    int-to-float v5, v0

    #@2b
    iget-object v6, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    #@2d
    move-object v1, p1

    #@2e
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@31
    goto/16 :goto_c0

    #@33
    .line 291
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    #@35
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    const-string v2, "Unsupported strategy "

    #@39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@47
    throw p1

    #@48
    .line 273
    :cond_48
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@4b
    move-result v0

    #@4c
    .line 274
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPath:Landroid/graphics/Path;

    #@4e
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    #@51
    .line 276
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    #@53
    invoke-interface {v1, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    #@56
    .line 277
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    #@59
    move-result v1

    #@5a
    if-eqz v1, :cond_72

    #@5c
    const/4 v3, 0x0

    #@5d
    const/4 v4, 0x0

    #@5e
    .line 278
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@60
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@63
    move-result v1

    #@64
    int-to-float v5, v1

    #@65
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@67
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    #@6a
    move-result v1

    #@6b
    int-to-float v6, v1

    #@6c
    iget-object v7, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    #@6e
    move-object v2, p1

    #@6f
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@72
    .line 281
    :cond_72
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@75
    goto :goto_c0

    #@76
    .line 284
    :cond_76
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@78
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    #@7a
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@7c
    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    #@7e
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@80
    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    #@82
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealPaint:Landroid/graphics/Paint;

    #@84
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@87
    .line 285
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    #@8a
    move-result v0

    #@8b
    if-eqz v0, :cond_c0

    #@8d
    .line 286
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@8f
    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    #@91
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@93
    iget v1, v1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    #@95
    iget-object v2, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@97
    iget v2, v2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    #@99
    iget-object v3, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    #@9b
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    #@9e
    goto :goto_c0

    #@9f
    .line 294
    :cond_9f
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    #@a1
    invoke-interface {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualDraw(Landroid/graphics/Canvas;)V

    #@a4
    .line 295
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawScrim()Z

    #@a7
    move-result v0

    #@a8
    if-eqz v0, :cond_c0

    #@aa
    const/4 v2, 0x0

    #@ab
    const/4 v3, 0x0

    #@ac
    .line 296
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@ae
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@b1
    move-result v0

    #@b2
    int-to-float v4, v0

    #@b3
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@b5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@b8
    move-result v0

    #@b9
    int-to-float v5, v0

    #@ba
    iget-object v6, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    #@bc
    move-object v1, p1

    #@bd
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@c0
    .line 300
    :cond_c0
    :goto_c0
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->drawOverlayDrawable(Landroid/graphics/Canvas;)V

    #@c3
    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 233
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .registers 2

    #@0
    .line 228
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .registers 3

    #@0
    .line 210
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 214
    :cond_6
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@8
    iget-object v1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@a
    invoke-direct {v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    #@d
    .line 215
    invoke-virtual {v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->isInvalid()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_19

    #@13
    .line 216
    invoke-direct {p0, v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F

    #@16
    move-result v1

    #@17
    iput v1, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    #@19
    :cond_19
    return-object v0
.end method

.method public isOpaque()Z
    .registers 2

    #@0
    .line 316
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->delegate:Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;

    #@2
    invoke-interface {v0}, Lcom/google/android/material/circularreveal/CircularRevealHelper$Delegate;->actualIsOpaque()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_10

    #@8
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->shouldDrawCircularReveal()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    :goto_11
    return v0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 237
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    .line 238
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@4
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    #@7
    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .registers 3

    #@0
    .line 222
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->scrimPaint:Landroid/graphics/Paint;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    #@5
    .line 223
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->view:Landroid/view/View;

    #@7
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    #@a
    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V
    .registers 4

    #@0
    if-nez p1, :cond_6

    #@2
    const/4 p1, 0x0

    #@3
    .line 190
    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@5
    goto :goto_2b

    #@6
    .line 192
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@8
    if-nez v0, :cond_12

    #@a
    .line 193
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@c
    invoke-direct {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    #@f
    iput-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@11
    goto :goto_15

    #@12
    .line 195
    :cond_12
    invoke-virtual {v0, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->set(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    #@15
    .line 199
    :goto_15
    iget v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    #@17
    .line 200
    invoke-direct {p0, p1}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->getDistanceToFurthestCorner(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)F

    #@1a
    move-result p1

    #@1b
    const v1, 0x38d1b717    # 1.0E-4f

    #@1e
    .line 199
    invoke-static {v0, p1, v1}, Lcom/google/android/material/math/MathUtils;->geq(FFF)Z

    #@21
    move-result p1

    #@22
    if-eqz p1, :cond_2b

    #@24
    .line 201
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealHelper;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    #@26
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    #@29
    iput v0, p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    #@2b
    .line 205
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Lcom/google/android/material/circularreveal/CircularRevealHelper;->invalidateRevealInfo()V

    #@2e
    return-void
.end method
