.class final Landroidx/transition/ChangeBounds$6;
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
    .line 148
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
    .line 148
    check-cast p1, Landroid/view/View;

    #@2
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds$6;->get(Landroid/view/View;)Landroid/graphics/PointF;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public set(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 6

    #@0
    .line 151
    iget v0, p2, Landroid/graphics/PointF;->x:F

    #@2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@5
    move-result v0

    #@6
    .line 152
    iget p2, p2, Landroid/graphics/PointF;->y:F

    #@8
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    #@b
    move-result p2

    #@c
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@f
    move-result v1

    #@10
    add-int/2addr v1, v0

    #@11
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@14
    move-result v2

    #@15
    add-int/2addr v2, p2

    #@16
    .line 155
    invoke-static {p1, v0, p2, v1, v2}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    #@19
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 148
    check-cast p1, Landroid/view/View;

    #@2
    check-cast p2, Landroid/graphics/PointF;

    #@4
    invoke-virtual {p0, p1, p2}, Landroidx/transition/ChangeBounds$6;->set(Landroid/view/View;Landroid/graphics/PointF;)V

    #@7
    return-void
.end method
