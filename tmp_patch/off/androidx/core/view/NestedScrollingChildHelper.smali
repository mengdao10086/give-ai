.class public Landroidx/core/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field private mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    #@0
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@5
    return-void
.end method

.method private dispatchNestedScrollInternal(IIII[II[I)Z
    .registers 23

    #@0
    move-object v0, p0

    #@1
    move-object/from16 v1, p5

    #@3
    .line 238
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    #@6
    move-result v2

    #@7
    const/4 v3, 0x0

    #@8
    if-eqz v2, :cond_63

    #@a
    move/from16 v2, p6

    #@c
    .line 239
    invoke-direct {p0, v2}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    #@f
    move-result-object v4

    #@10
    if-nez v4, :cond_13

    #@12
    return v3

    #@13
    :cond_13
    const/4 v12, 0x1

    #@14
    if-nez p1, :cond_24

    #@16
    if-nez p2, :cond_24

    #@18
    if-nez p3, :cond_24

    #@1a
    if-eqz p4, :cond_1d

    #@1c
    goto :goto_24

    #@1d
    :cond_1d
    if-eqz v1, :cond_63

    #@1f
    .line 270
    aput v3, v1, v3

    #@21
    .line 271
    aput v3, v1, v12

    #@23
    goto :goto_63

    #@24
    :cond_24
    :goto_24
    if-eqz v1, :cond_32

    #@26
    .line 248
    iget-object v5, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@28
    invoke-virtual {v5, v1}, Landroid/view/View;->getLocationInWindow([I)V

    #@2b
    .line 249
    aget v5, v1, v3

    #@2d
    .line 250
    aget v6, v1, v12

    #@2f
    move v13, v5

    #@30
    move v14, v6

    #@31
    goto :goto_34

    #@32
    :cond_32
    move v13, v3

    #@33
    move v14, v13

    #@34
    :goto_34
    if-nez p7, :cond_40

    #@36
    .line 254
    invoke-direct {p0}, Landroidx/core/view/NestedScrollingChildHelper;->getTempNestedScrollConsumed()[I

    #@39
    move-result-object v5

    #@3a
    .line 255
    aput v3, v5, v3

    #@3c
    .line 256
    aput v3, v5, v12

    #@3e
    move-object v11, v5

    #@3f
    goto :goto_42

    #@40
    :cond_40
    move-object/from16 v11, p7

    #@42
    .line 259
    :goto_42
    iget-object v5, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@44
    move/from16 v6, p1

    #@46
    move/from16 v7, p2

    #@48
    move/from16 v8, p3

    #@4a
    move/from16 v9, p4

    #@4c
    move/from16 v10, p6

    #@4e
    invoke-static/range {v4 .. v11}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    #@51
    if-eqz v1, :cond_62

    #@53
    .line 263
    iget-object v2, v0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@55
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    #@58
    .line 264
    aget v2, v1, v3

    #@5a
    sub-int/2addr v2, v13

    #@5b
    aput v2, v1, v3

    #@5d
    .line 265
    aget v2, v1, v12

    #@5f
    sub-int/2addr v2, v14

    #@60
    aput v2, v1, v12

    #@62
    :cond_62
    return v12

    #@63
    :cond_63
    :goto_63
    return v3
.end method

.method private getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .registers 3

    #@0
    if-eqz p1, :cond_a

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p1, v0, :cond_7

    #@5
    const/4 p1, 0x0

    #@6
    return-object p1

    #@7
    .line 408
    :cond_7
    iget-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    #@9
    return-object p1

    #@a
    .line 406
    :cond_a
    iget-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    #@c
    return-object p1
.end method

.method private getTempNestedScrollConsumed()[I
    .registers 2

    #@0
    .line 425
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    #@2
    if-nez v0, :cond_9

    #@4
    const/4 v0, 0x2

    #@5
    new-array v0, v0, [I

    #@7
    .line 426
    iput-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    #@9
    .line 428
    :cond_9
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    #@b
    return-object v0
.end method

.method private setNestedScrollingParentForType(ILandroid/view/ViewParent;)V
    .registers 4

    #@0
    if-eqz p1, :cond_9

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p1, v0, :cond_6

    #@5
    goto :goto_b

    #@6
    .line 419
    :cond_6
    iput-object p2, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    #@8
    goto :goto_b

    #@9
    .line 416
    :cond_9
    iput-object p2, p0, Landroidx/core/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    #@b
    :goto_b
    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .registers 6

    #@0
    .line 348
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_14

    #@7
    .line 349
    invoke-direct {p0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_14

    #@d
    .line 351
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@f
    invoke-static {v0, v1, p1, p2, p3}, Landroidx/core/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    #@12
    move-result p1

    #@13
    return p1

    #@14
    :cond_14
    return v1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 5

    #@0
    .line 368
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_14

    #@7
    .line 369
    invoke-direct {p0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_14

    #@d
    .line 371
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@f
    invoke-static {v0, v1, p1, p2}, Landroidx/core/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    #@12
    move-result p1

    #@13
    return p1

    #@14
    :cond_14
    return v1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    .line 288
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    #@9
    move-result p1

    #@a
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 16

    #@0
    .line 302
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_58

    #@7
    .line 303
    invoke-direct {p0, p5}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    #@a
    move-result-object v2

    #@b
    if-nez v2, :cond_e

    #@d
    return v1

    #@e
    :cond_e
    const/4 v0, 0x1

    #@f
    if-nez p1, :cond_1b

    #@11
    if-eqz p2, :cond_14

    #@13
    goto :goto_1b

    #@14
    :cond_14
    if-eqz p4, :cond_58

    #@16
    .line 331
    aput v1, p4, v1

    #@18
    .line 332
    aput v1, p4, v0

    #@1a
    goto :goto_58

    #@1b
    :cond_1b
    :goto_1b
    if-eqz p4, :cond_29

    #@1d
    .line 312
    iget-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@1f
    invoke-virtual {v3, p4}, Landroid/view/View;->getLocationInWindow([I)V

    #@22
    .line 313
    aget v3, p4, v1

    #@24
    .line 314
    aget v4, p4, v0

    #@26
    move v8, v3

    #@27
    move v9, v4

    #@28
    goto :goto_2b

    #@29
    :cond_29
    move v8, v1

    #@2a
    move v9, v8

    #@2b
    :goto_2b
    if-nez p3, :cond_31

    #@2d
    .line 318
    invoke-direct {p0}, Landroidx/core/view/NestedScrollingChildHelper;->getTempNestedScrollConsumed()[I

    #@30
    move-result-object p3

    #@31
    .line 320
    :cond_31
    aput v1, p3, v1

    #@33
    .line 321
    aput v1, p3, v0

    #@35
    .line 322
    iget-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@37
    move v4, p1

    #@38
    move v5, p2

    #@39
    move-object v6, p3

    #@3a
    move v7, p5

    #@3b
    invoke-static/range {v2 .. v7}, Landroidx/core/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    #@3e
    if-eqz p4, :cond_4f

    #@40
    .line 325
    iget-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@42
    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    #@45
    .line 326
    aget p1, p4, v1

    #@47
    sub-int/2addr p1, v8

    #@48
    aput p1, p4, v1

    #@4a
    .line 327
    aget p1, p4, v0

    #@4c
    sub-int/2addr p1, v9

    #@4d
    aput p1, p4, v0

    #@4f
    .line 329
    :cond_4f
    aget p1, p3, v1

    #@51
    if-nez p1, :cond_57

    #@53
    aget p1, p3, v0

    #@55
    if-eqz p1, :cond_58

    #@57
    :cond_57
    move v1, v0

    #@58
    :cond_58
    :goto_58
    return v1
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .registers 8

    #@0
    .line 231
    invoke-direct/range {p0 .. p7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    #@3
    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 14

    #@0
    const/4 v6, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move-object v5, p5

    #@8
    .line 204
    invoke-direct/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 15

    #@0
    const/4 v7, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    move v6, p6

    #@8
    .line 218
    invoke-direct/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScrollInternal(IIII[II[I)Z

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 100
    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 2

    #@0
    .line 114
    invoke-direct {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_8

    #@6
    const/4 p1, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p1, 0x0

    #@9
    :goto_9
    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    #@0
    .line 86
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    #@2
    return v0
.end method

.method public onDetachedFromWindow()V
    .registers 2

    #@0
    .line 387
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 2

    #@0
    .line 400
    iget-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@2
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    #@0
    .line 70
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 71
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@6
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    #@9
    .line 73
    :cond_9
    iput-boolean p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    #@b
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 129
    invoke-virtual {p0, p1, v0}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public startNestedScroll(II)Z
    .registers 7

    #@0
    .line 145
    invoke-virtual {p0, p2}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 149
    :cond_8
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_35

    #@e
    .line 150
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@10
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@13
    move-result-object v0

    #@14
    .line 151
    iget-object v2, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@16
    :goto_16
    if-eqz v0, :cond_35

    #@18
    .line 153
    iget-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@1a
    invoke-static {v0, v2, v3, p1, p2}, Landroidx/core/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_29

    #@20
    .line 154
    invoke-direct {p0, p2, v0}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    #@23
    .line 155
    iget-object v3, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@25
    invoke-static {v0, v2, v3, p1, p2}, Landroidx/core/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    #@28
    return v1

    #@29
    .line 158
    :cond_29
    instance-of v3, v0, Landroid/view/View;

    #@2b
    if-eqz v3, :cond_30

    #@2d
    .line 159
    move-object v2, v0

    #@2e
    check-cast v2, Landroid/view/View;

    #@30
    .line 161
    :cond_30
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@33
    move-result-object v0

    #@34
    goto :goto_16

    #@35
    :cond_35
    const/4 p1, 0x0

    #@36
    return p1
.end method

.method public stopNestedScroll()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 175
    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    #@4
    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 4

    #@0
    .line 186
    invoke-direct {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 188
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    #@8
    invoke-static {v0, v1, p1}, Landroidx/core/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    #@b
    const/4 v0, 0x0

    #@c
    .line 189
    invoke-direct {p0, p1, v0}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    #@f
    :cond_f
    return-void
.end method
