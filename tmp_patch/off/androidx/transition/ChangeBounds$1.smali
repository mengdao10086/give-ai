.class final Landroidx/transition/ChangeBounds$1;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private mBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    #@0
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@3
    .line 71
    new-instance p1, Landroid/graphics/Rect;

    #@5
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    #@a
    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;
    .registers 4

    #@0
    .line 82
    iget-object v0, p0, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@5
    .line 83
    new-instance p1, Landroid/graphics/PointF;

    #@7
    iget-object v0, p0, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    #@9
    iget v0, v0, Landroid/graphics/Rect;->left:I

    #@b
    int-to-float v0, v0

    #@c
    iget-object v1, p0, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    #@e
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@10
    int-to-float v1, v1

    #@11
    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    #@14
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 70
    check-cast p1, Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds$1;->get(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public set(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V
    .registers 5

    #@0
    .line 75
    iget-object v0, p0, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    #@5
    .line 76
    iget-object v0, p0, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    #@7
    iget v1, p2, Landroid/graphics/PointF;->x:F

    #@9
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@c
    move-result v1

    #@d
    iget p2, p2, Landroid/graphics/PointF;->y:F

    #@f
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    #@12
    move-result p2

    #@13
    invoke-virtual {v0, v1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    #@16
    .line 77
    iget-object p2, p0, Landroidx/transition/ChangeBounds$1;->mBounds:Landroid/graphics/Rect;

    #@18
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@1b
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 70
    check-cast p1, Landroid/graphics/drawable/Drawable;

    #@2
    check-cast p2, Landroid/graphics/PointF;

    #@4
    invoke-virtual {p0, p1, p2}, Landroidx/transition/ChangeBounds$1;->set(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V

    #@7
    return-void
.end method
