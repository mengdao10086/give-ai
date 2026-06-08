.class final Landroidx/recyclerview/widget/OrientationHelper$2;
.super Landroidx/recyclerview/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 356
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/OrientationHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper$1;)V

    #@4
    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .registers 4

    #@0
    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    .line 397
    iget-object v1, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@8
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    #@b
    move-result p1

    #@c
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    #@e
    add-int/2addr p1, v0

    #@f
    return p1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .registers 4

    #@0
    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    .line 381
    iget-object v1, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@8
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    #@b
    move-result p1

    #@c
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    #@e
    add-int/2addr p1, v1

    #@f
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    #@11
    add-int/2addr p1, v0

    #@12
    return p1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .registers 4

    #@0
    .line 388
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    .line 389
    iget-object v1, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@8
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    #@b
    move-result p1

    #@c
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    #@e
    add-int/2addr p1, v1

    #@f
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    #@11
    add-int/2addr p1, v0

    #@12
    return p1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .registers 4

    #@0
    .line 403
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    .line 404
    iget-object v1, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@8
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    #@b
    move-result p1

    #@c
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    #@e
    sub-int/2addr p1, v0

    #@f
    return p1
.end method

.method public getEnd()I
    .registers 2

    #@0
    .line 364
    iget-object v0, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getEndAfterPadding()I
    .registers 3

    #@0
    .line 359
    iget-object v0, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    #@b
    move-result v1

    #@c
    sub-int/2addr v0, v1

    #@d
    return v0
.end method

.method public getEndPadding()I
    .registers 2

    #@0
    .line 432
    iget-object v0, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMode()I
    .registers 2

    #@0
    .line 437
    iget-object v0, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getModeInOther()I
    .registers 2

    #@0
    .line 442
    iget-object v0, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getStartAfterPadding()I
    .registers 2

    #@0
    .line 374
    iget-object v0, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getTotalSpace()I
    .registers 3

    #@0
    .line 421
    iget-object v0, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    #@b
    move-result v1

    #@c
    sub-int/2addr v0, v1

    #@d
    iget-object v1, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@f
    .line 422
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    #@12
    move-result v1

    #@13
    sub-int/2addr v0, v1

    #@14
    return v0
.end method

.method public getTransformedEndWithDecoration(Landroid/view/View;)I
    .registers 5

    #@0
    .line 409
    iget-object v0, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    const/4 v1, 0x1

    #@3
    iget-object v2, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    #@5
    invoke-virtual {v0, p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    #@8
    .line 410
    iget-object p1, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    #@a
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@c
    return p1
.end method

.method public getTransformedStartWithDecoration(Landroid/view/View;)I
    .registers 5

    #@0
    .line 415
    iget-object v0, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    const/4 v1, 0x1

    #@3
    iget-object v2, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    #@5
    invoke-virtual {v0, p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    #@8
    .line 416
    iget-object p1, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mTmpRect:Landroid/graphics/Rect;

    #@a
    iget p1, p1, Landroid/graphics/Rect;->top:I

    #@c
    return p1
.end method

.method public offsetChild(Landroid/view/View;I)V
    .registers 3

    #@0
    .line 427
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    #@3
    return-void
.end method

.method public offsetChildren(I)V
    .registers 3

    #@0
    .line 369
    iget-object v0, p0, Landroidx/recyclerview/widget/OrientationHelper$2;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    #@5
    return-void
.end method
