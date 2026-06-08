.class Lcom/google/android/material/behavior/SwipeDismissBehavior$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private activePointerId:I

.field private originalCapturedViewLeft:I

.field final synthetic this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .registers 2

    #@0
    .line 238
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@2
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    #@5
    const/4 p1, -0x1

    #@6
    .line 242
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    #@8
    return-void
.end method

.method private shouldDismiss(Landroid/view/View;F)Z
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v1, p2, v0

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    if-eqz v1, :cond_3a

    #@7
    .line 306
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@a
    move-result p1

    #@b
    if-ne p1, v3, :cond_f

    #@d
    move p1, v3

    #@e
    goto :goto_10

    #@f
    :cond_f
    move p1, v2

    #@10
    .line 308
    :goto_10
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@12
    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    #@14
    const/4 v5, 0x2

    #@15
    if-ne v4, v5, :cond_18

    #@17
    return v3

    #@18
    .line 311
    :cond_18
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@1a
    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    #@1c
    if-nez v4, :cond_29

    #@1e
    if-eqz p1, :cond_25

    #@20
    cmpg-float p1, p2, v0

    #@22
    if-gez p1, :cond_28

    #@24
    goto :goto_27

    #@25
    :cond_25
    if-lez v1, :cond_28

    #@27
    :goto_27
    move v2, v3

    #@28
    :cond_28
    return v2

    #@29
    .line 315
    :cond_29
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@2b
    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    #@2d
    if-ne v4, v3, :cond_39

    #@2f
    if-eqz p1, :cond_34

    #@31
    if-lez v1, :cond_39

    #@33
    goto :goto_38

    #@34
    :cond_34
    cmpg-float p1, p2, v0

    #@36
    if-gez p1, :cond_39

    #@38
    :goto_38
    move v2, v3

    #@39
    :cond_39
    return v2

    #@3a
    .line 321
    :cond_3a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@3d
    move-result p2

    #@3e
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    #@40
    sub-int/2addr p2, v0

    #@41
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@44
    move-result p1

    #@45
    int-to-float p1, p1

    #@46
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@48
    iget v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    #@4a
    mul-float/2addr p1, v0

    #@4b
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    #@4e
    move-result p1

    #@4f
    .line 323
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@52
    move-result p2

    #@53
    if-lt p2, p1, :cond_56

    #@55
    move v2, v3

    #@56
    :cond_56
    return v2
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 6

    #@0
    .line 337
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result p3

    #@4
    const/4 v0, 0x1

    #@5
    if-ne p3, v0, :cond_9

    #@7
    move p3, v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p3, 0x0

    #@a
    .line 341
    :goto_a
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@c
    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    #@e
    if-nez v1, :cond_24

    #@10
    if-eqz p3, :cond_1c

    #@12
    .line 343
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    #@14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@17
    move-result p1

    #@18
    sub-int/2addr p3, p1

    #@19
    .line 344
    iget p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    #@1b
    goto :goto_4b

    #@1c
    .line 346
    :cond_1c
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    #@1e
    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@21
    move-result p1

    #@22
    :goto_22
    add-int/2addr p1, p3

    #@23
    goto :goto_4b

    #@24
    .line 349
    :cond_24
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@26
    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    #@28
    if-ne v1, v0, :cond_3d

    #@2a
    if-eqz p3, :cond_33

    #@2c
    .line 351
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    #@2e
    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@31
    move-result p1

    #@32
    goto :goto_22

    #@33
    .line 354
    :cond_33
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    #@35
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@38
    move-result p1

    #@39
    sub-int/2addr p3, p1

    #@3a
    .line 355
    iget p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    #@3c
    goto :goto_4b

    #@3d
    .line 358
    :cond_3d
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    #@3f
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@42
    move-result v0

    #@43
    sub-int/2addr p3, v0

    #@44
    .line 359
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    #@46
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@49
    move-result p1

    #@4a
    add-int/2addr p1, v0

    #@4b
    .line 362
    :goto_4b
    invoke-static {p3, p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(III)I

    #@4e
    move-result p1

    #@4f
    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    #@0
    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 2

    #@0
    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 4

    #@0
    .line 253
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    #@2
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@5
    move-result p2

    #@6
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    #@8
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@b
    move-result-object p1

    #@c
    if-eqz p1, :cond_1d

    #@e
    .line 263
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@10
    const/4 v0, 0x1

    #@11
    # setter for: Lcom/google/android/material/behavior/SwipeDismissBehavior;->requestingDisallowInterceptTouchEvent:Z
    invoke-static {p2, v0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->access$002(Lcom/google/android/material/behavior/SwipeDismissBehavior;Z)Z

    #@14
    .line 264
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@17
    .line 265
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@19
    const/4 p2, 0x0

    #@1a
    # setter for: Lcom/google/android/material/behavior/SwipeDismissBehavior;->requestingDisallowInterceptTouchEvent:Z
    invoke-static {p1, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->access$002(Lcom/google/android/material/behavior/SwipeDismissBehavior;Z)Z

    #@1d
    :cond_1d
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    #@0
    .line 271
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@2
    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    #@4
    if-eqz v0, :cond_d

    #@6
    .line 272
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@8
    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    #@a
    invoke-interface {v0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDragStateChanged(I)V

    #@d
    :cond_d
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 8

    #@0
    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@3
    move-result p3

    #@4
    int-to-float p3, p3

    #@5
    iget-object p4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@7
    iget p4, p4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    #@9
    mul-float/2addr p3, p4

    #@a
    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@d
    move-result p4

    #@e
    int-to-float p4, p4

    #@f
    iget-object p5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@11
    iget p5, p5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    #@13
    mul-float/2addr p4, p5

    #@14
    .line 376
    iget p5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    #@16
    sub-int/2addr p2, p5

    #@17
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@1a
    move-result p2

    #@1b
    int-to-float p2, p2

    #@1c
    cmpg-float p5, p2, p3

    #@1e
    const/high16 v0, 0x3f800000    # 1.0f

    #@20
    if-gtz p5, :cond_26

    #@22
    .line 379
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    #@25
    goto :goto_3c

    #@26
    :cond_26
    cmpl-float p5, p2, p4

    #@28
    const/4 v1, 0x0

    #@29
    if-ltz p5, :cond_2f

    #@2b
    .line 381
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    #@2e
    goto :goto_3c

    #@2f
    .line 384
    :cond_2f
    invoke-static {p3, p4, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->fraction(FFF)F

    #@32
    move-result p2

    #@33
    sub-float p2, v0, p2

    #@35
    .line 385
    invoke-static {v1, p2, v0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    #@38
    move-result p2

    #@39
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    #@3c
    :goto_3c
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 6

    #@0
    const/4 p3, -0x1

    #@1
    .line 279
    iput p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    #@3
    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@6
    move-result p3

    #@7
    .line 285
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->shouldDismiss(Landroid/view/View;F)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_23

    #@d
    const/4 v0, 0x0

    #@e
    cmpg-float p2, p2, v0

    #@10
    if-ltz p2, :cond_1d

    #@12
    .line 287
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@15
    move-result p2

    #@16
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    #@18
    if-ge p2, v0, :cond_1b

    #@1a
    goto :goto_1d

    #@1b
    :cond_1b
    add-int/2addr v0, p3

    #@1c
    goto :goto_21

    #@1d
    .line 288
    :cond_1d
    :goto_1d
    iget p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    #@1f
    sub-int v0, p2, p3

    #@21
    :goto_21
    const/4 p2, 0x1

    #@22
    goto :goto_26

    #@23
    .line 293
    :cond_23
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    #@25
    const/4 p2, 0x0

    #@26
    .line 296
    :goto_26
    iget-object p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@28
    iget-object p3, p3, Lcom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    #@2a
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@2d
    move-result v1

    #@2e
    invoke-virtual {p3, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    #@31
    move-result p3

    #@32
    if-eqz p3, :cond_3f

    #@34
    .line 297
    new-instance p3, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;

    #@36
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@38
    invoke-direct {p3, v0, p1, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    #@3b
    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    #@3e
    goto :goto_4e

    #@3f
    :cond_3f
    if-eqz p2, :cond_4e

    #@41
    .line 298
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@43
    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    #@45
    if-eqz p2, :cond_4e

    #@47
    .line 299
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@49
    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    #@4b
    invoke-interface {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    #@4e
    :cond_4e
    :goto_4e
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 5

    #@0
    .line 247
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->activePointerId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_7

    #@5
    if-ne v0, p2, :cond_11

    #@7
    :cond_7
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->this$0:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    #@9
    .line 248
    invoke-virtual {p2, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    #@c
    move-result p1

    #@d
    if-eqz p1, :cond_11

    #@f
    const/4 p1, 0x1

    #@10
    goto :goto_12

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    :goto_12
    return p1
.end method
