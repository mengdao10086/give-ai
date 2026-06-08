.class Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private final mAbsGravity:I

.field private mDragger:Landroidx/customview/widget/ViewDragHelper;

.field private final mPeekRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V
    .registers 3

    #@0
    .line 2227
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@2
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    #@5
    .line 2221
    new-instance p1, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;

    #@7
    invoke-direct {p1, p0}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback$1;-><init>(Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;)V

    #@a
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    #@c
    .line 2228
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    #@e
    return-void
.end method

.method private closeOtherDrawer()V
    .registers 3

    #@0
    .line 2278
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_6

    #@5
    const/4 v1, 0x5

    #@6
    .line 2279
    :cond_6
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@8
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_13

    #@e
    .line 2281
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@10
    invoke-virtual {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    #@13
    :cond_13
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 5

    #@0
    .line 2369
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@2
    const/4 v0, 0x3

    #@3
    invoke-virtual {p3, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@6
    move-result p3

    #@7
    if-eqz p3, :cond_18

    #@9
    .line 2370
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@c
    move-result p1

    #@d
    neg-int p1, p1

    #@e
    const/4 p3, 0x0

    #@f
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    #@12
    move-result p2

    #@13
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@16
    move-result p1

    #@17
    return p1

    #@18
    .line 2372
    :cond_18
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@1a
    invoke-virtual {p3}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    #@1d
    move-result p3

    #@1e
    .line 2373
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@21
    move-result p1

    #@22
    sub-int p1, p3, p1

    #@24
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    #@27
    move-result p2

    #@28
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@2b
    move-result p1

    #@2c
    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    #@0
    .line 2379
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3

    #@0
    .line 2364
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@2
    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_d

    #@8
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@b
    move-result p1

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    :goto_e
    return p1
.end method

.method public onEdgeDragStarted(II)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    and-int/2addr p1, v0

    #@2
    if-ne p1, v0, :cond_c

    #@4
    .line 2352
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@6
    const/4 v0, 0x3

    #@7
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@a
    move-result-object p1

    #@b
    goto :goto_13

    #@c
    .line 2354
    :cond_c
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@e
    const/4 v0, 0x5

    #@f
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@12
    move-result-object p1

    #@13
    :goto_13
    if-eqz p1, :cond_22

    #@15
    .line 2357
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@17
    invoke-virtual {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_22

    #@1d
    .line 2358
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    #@1f
    invoke-virtual {v0, p1, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    #@22
    :cond_22
    return-void
.end method

.method public onEdgeLock(I)Z
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public onEdgeTouched(II)V
    .registers 5

    #@0
    .line 2306
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@2
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    #@4
    const-wide/16 v0, 0xa0

    #@6
    invoke-virtual {p1, p2, v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    #@9
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 3

    #@0
    .line 2271
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@6
    const/4 p2, 0x0

    #@7
    .line 2272
    iput-boolean p2, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@9
    .line 2274
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    #@c
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 4

    #@0
    .line 2249
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@2
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    #@4
    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateDrawerState(ILandroid/view/View;)V

    #@b
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    #@0
    .line 2255
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@3
    move-result p3

    #@4
    .line 2258
    iget-object p4, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@6
    const/4 p5, 0x3

    #@7
    invoke-virtual {p4, p1, p5}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@a
    move-result p4

    #@b
    if-eqz p4, :cond_10

    #@d
    add-int/2addr p2, p3

    #@e
    int-to-float p2, p2

    #@f
    goto :goto_18

    #@10
    .line 2261
    :cond_10
    iget-object p4, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@12
    invoke-virtual {p4}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    #@15
    move-result p4

    #@16
    sub-int/2addr p4, p2

    #@17
    int-to-float p2, p4

    #@18
    :goto_18
    int-to-float p3, p3

    #@19
    div-float/2addr p2, p3

    #@1a
    .line 2264
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@1c
    invoke-virtual {p3, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    #@1f
    const/4 p3, 0x0

    #@20
    cmpl-float p2, p2, p3

    #@22
    if-nez p2, :cond_26

    #@24
    const/4 p2, 0x4

    #@25
    goto :goto_27

    #@26
    :cond_26
    const/4 p2, 0x0

    #@27
    .line 2265
    :goto_27
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    #@2a
    .line 2266
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@2c
    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    #@2f
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 9

    #@0
    .line 2289
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@2
    invoke-virtual {p3, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    #@5
    move-result p3

    #@6
    .line 2290
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@9
    move-result v0

    #@a
    .line 2293
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@c
    const/4 v2, 0x3

    #@d
    invoke-virtual {v1, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@10
    move-result v1

    #@11
    const/high16 v2, 0x3f000000    # 0.5f

    #@13
    const/4 v3, 0x0

    #@14
    if-eqz v1, :cond_25

    #@16
    cmpl-float p2, p2, v3

    #@18
    if-gtz p2, :cond_23

    #@1a
    if-nez p2, :cond_21

    #@1c
    cmpl-float p2, p3, v2

    #@1e
    if-lez p2, :cond_21

    #@20
    goto :goto_23

    #@21
    :cond_21
    neg-int p2, v0

    #@22
    goto :goto_39

    #@23
    :cond_23
    :goto_23
    const/4 p2, 0x0

    #@24
    goto :goto_39

    #@25
    .line 2296
    :cond_25
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@27
    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    #@2a
    move-result v1

    #@2b
    cmpg-float v4, p2, v3

    #@2d
    if-ltz v4, :cond_37

    #@2f
    cmpl-float p2, p2, v3

    #@31
    if-nez p2, :cond_38

    #@33
    cmpl-float p2, p3, v2

    #@35
    if-lez p2, :cond_38

    #@37
    :cond_37
    sub-int/2addr v1, v0

    #@38
    :cond_38
    move p2, v1

    #@39
    .line 2300
    :goto_39
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    #@3b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3e
    move-result p1

    #@3f
    invoke-virtual {p3, p2, p1}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    #@42
    .line 2301
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@44
    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    #@47
    return-void
.end method

.method peekDrawer()V
    .registers 7

    #@0
    .line 2312
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    #@2
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    #@5
    move-result v0

    #@6
    .line 2313
    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    #@8
    const/4 v2, 0x1

    #@9
    const/4 v3, 0x0

    #@a
    const/4 v4, 0x3

    #@b
    if-ne v1, v4, :cond_f

    #@d
    move v1, v2

    #@e
    goto :goto_10

    #@f
    :cond_f
    move v1, v3

    #@10
    :goto_10
    if-eqz v1, :cond_21

    #@12
    .line 2315
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@14
    invoke-virtual {v5, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@17
    move-result-object v4

    #@18
    if-eqz v4, :cond_1f

    #@1a
    .line 2316
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    #@1d
    move-result v3

    #@1e
    neg-int v3, v3

    #@1f
    :cond_1f
    add-int/2addr v3, v0

    #@20
    goto :goto_2f

    #@21
    .line 2318
    :cond_21
    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@23
    const/4 v4, 0x5

    #@24
    invoke-virtual {v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@27
    move-result-object v4

    #@28
    .line 2319
    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@2a
    invoke-virtual {v3}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    #@2d
    move-result v3

    #@2e
    sub-int/2addr v3, v0

    #@2f
    :goto_2f
    if-eqz v4, :cond_67

    #@31
    if-eqz v1, :cond_39

    #@33
    .line 2322
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@36
    move-result v0

    #@37
    if-lt v0, v3, :cond_41

    #@39
    :cond_39
    if-nez v1, :cond_67

    #@3b
    .line 2323
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    #@3e
    move-result v0

    #@3f
    if-le v0, v3, :cond_67

    #@41
    :cond_41
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@43
    .line 2324
    invoke-virtual {v0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_67

    #@49
    .line 2325
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@4f
    .line 2326
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    #@51
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@54
    move-result v5

    #@55
    invoke-virtual {v1, v4, v3, v5}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@58
    .line 2327
    iput-boolean v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@5a
    .line 2328
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@5c
    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    #@5f
    .line 2330
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    #@62
    .line 2332
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@64
    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->cancelChildViewTouch()V

    #@67
    :cond_67
    return-void
.end method

.method public removeCallbacks()V
    .registers 3

    #@0
    .line 2236
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@2
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7
    return-void
.end method

.method public setDragger(Landroidx/customview/widget/ViewDragHelper;)V
    .registers 2

    #@0
    .line 2232
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    #@2
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 4

    #@0
    .line 2243
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@2
    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@5
    move-result p2

    #@6
    if-eqz p2, :cond_1c

    #@8
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@a
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    #@c
    invoke-virtual {p2, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@f
    move-result p2

    #@10
    if-eqz p2, :cond_1c

    #@12
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    #@14
    .line 2244
    invoke-virtual {p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@17
    move-result p1

    #@18
    if-nez p1, :cond_1c

    #@1a
    const/4 p1, 0x1

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    const/4 p1, 0x0

    #@1d
    :goto_1d
    return p1
.end method
