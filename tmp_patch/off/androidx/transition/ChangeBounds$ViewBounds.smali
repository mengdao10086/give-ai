.class Landroidx/transition/ChangeBounds$ViewBounds;
.super Ljava/lang/Object;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewBounds"
.end annotation


# instance fields
.field private mBottom:I

.field private mBottomRightCalls:I

.field private mLeft:I

.field private mRight:I

.field private mTop:I

.field private mTopLeftCalls:I

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    #@0
    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 472
    iput-object p1, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    #@5
    return-void
.end method

.method private setLeftTopRightBottom()V
    .registers 6

    #@0
    .line 494
    iget-object v0, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mView:Landroid/view/View;

    #@2
    iget v1, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    #@4
    iget v2, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mTop:I

    #@6
    iget v3, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    #@8
    iget v4, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mBottom:I

    #@a
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    #@d
    const/4 v0, 0x0

    #@e
    .line 495
    iput v0, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    #@10
    .line 496
    iput v0, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    #@12
    return-void
.end method


# virtual methods
.method setBottomRight(Landroid/graphics/PointF;)V
    .registers 3

    #@0
    .line 485
    iget v0, p1, Landroid/graphics/PointF;->x:F

    #@2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mRight:I

    #@8
    .line 486
    iget p1, p1, Landroid/graphics/PointF;->y:F

    #@a
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@d
    move-result p1

    #@e
    iput p1, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mBottom:I

    #@10
    .line 487
    iget p1, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    #@12
    add-int/lit8 p1, p1, 0x1

    #@14
    iput p1, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    #@16
    .line 488
    iget v0, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    #@18
    if-ne v0, p1, :cond_1d

    #@1a
    .line 489
    invoke-direct {p0}, Landroidx/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    #@1d
    :cond_1d
    return-void
.end method

.method setTopLeft(Landroid/graphics/PointF;)V
    .registers 3

    #@0
    .line 476
    iget v0, p1, Landroid/graphics/PointF;->x:F

    #@2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mLeft:I

    #@8
    .line 477
    iget p1, p1, Landroid/graphics/PointF;->y:F

    #@a
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@d
    move-result p1

    #@e
    iput p1, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mTop:I

    #@10
    .line 478
    iget p1, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    #@12
    add-int/lit8 p1, p1, 0x1

    #@14
    iput p1, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mTopLeftCalls:I

    #@16
    .line 479
    iget v0, p0, Landroidx/transition/ChangeBounds$ViewBounds;->mBottomRightCalls:I

    #@18
    if-ne p1, v0, :cond_1d

    #@1a
    .line 480
    invoke-direct {p0}, Landroidx/transition/ChangeBounds$ViewBounds;->setLeftTopRightBottom()V

    #@1d
    :cond_1d
    return-void
.end method
