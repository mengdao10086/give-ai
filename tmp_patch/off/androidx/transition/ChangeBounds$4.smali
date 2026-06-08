.class final Landroidx/transition/ChangeBounds$4;
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
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    #@0
    .line 114
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 114
    check-cast p1, Landroid/view/View;

    #@2
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds$4;->get(Landroid/view/View;)Landroid/graphics/PointF;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 6

    #@0
    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@3
    move-result v0

    #@4
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@7
    move-result v1

    #@8
    .line 119
    iget v2, p2, Landroid/graphics/PointF;->x:F

    #@a
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@d
    move-result v2

    #@e
    .line 120
    iget p2, p2, Landroid/graphics/PointF;->y:F

    #@10
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    #@13
    move-result p2

    #@14
    .line 121
    invoke-static {p1, v0, v1, v2, p2}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    #@17
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 114
    check-cast p1, Landroid/view/View;

    #@2
    check-cast p2, Landroid/graphics/PointF;

    #@4
    invoke-virtual {p0, p1, p2}, Landroidx/transition/ChangeBounds$4;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    #@7
    return-void
.end method
