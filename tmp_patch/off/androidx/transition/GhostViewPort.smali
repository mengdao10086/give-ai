.class Landroidx/transition/GhostViewPort;
.super Landroid/view/ViewGroup;
.source "GhostViewPort.java"

# interfaces
.implements Landroidx/transition/GhostView;


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;

.field private final mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mReferences:I

.field mStartParent:Landroid/view/ViewGroup;

.field mStartView:Landroid/view/View;

.field final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    #@0
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@7
    .line 51
    new-instance v0, Landroidx/transition/GhostViewPort$1;

    #@9
    invoke-direct {v0, p0}, Landroidx/transition/GhostViewPort$1;-><init>(Landroidx/transition/GhostViewPort;)V

    #@c
    iput-object v0, p0, Landroidx/transition/GhostViewPort;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@e
    .line 69
    iput-object p1, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@10
    const/4 p1, 0x0

    #@11
    .line 70
    invoke-virtual {p0, p1}, Landroidx/transition/GhostViewPort;->setWillNotDraw(Z)V

    #@14
    const/4 p1, 0x2

    #@15
    const/4 v0, 0x0

    #@16
    .line 71
    invoke-virtual {p0, p1, v0}, Landroidx/transition/GhostViewPort;->setLayerType(ILandroid/graphics/Paint;)V

    #@19
    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewPort;
    .registers 7

    #@0
    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Landroid/view/ViewGroup;

    #@6
    if-eqz v0, :cond_59

    #@8
    .line 166
    invoke-static {p1}, Landroidx/transition/GhostViewHolder;->getHolder(Landroid/view/ViewGroup;)Landroidx/transition/GhostViewHolder;

    #@b
    move-result-object v0

    #@c
    .line 167
    invoke-static {p0}, Landroidx/transition/GhostViewPort;->getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewPort;

    #@f
    move-result-object v1

    #@10
    if-eqz v1, :cond_21

    #@12
    .line 170
    invoke-virtual {v1}, Landroidx/transition/GhostViewPort;->getParent()Landroid/view/ViewParent;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroidx/transition/GhostViewHolder;

    #@18
    if-eq v2, v0, :cond_21

    #@1a
    .line 172
    iget v3, v1, Landroidx/transition/GhostViewPort;->mReferences:I

    #@1c
    .line 173
    invoke-virtual {v2, v1}, Landroidx/transition/GhostViewHolder;->removeView(Landroid/view/View;)V

    #@1f
    const/4 v1, 0x0

    #@20
    goto :goto_22

    #@21
    :cond_21
    const/4 v3, 0x0

    #@22
    :goto_22
    if-nez v1, :cond_4d

    #@24
    if-nez p2, :cond_2e

    #@26
    .line 179
    new-instance p2, Landroid/graphics/Matrix;

    #@28
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    #@2b
    .line 180
    invoke-static {p0, p1, p2}, Landroidx/transition/GhostViewPort;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    #@2e
    .line 182
    :cond_2e
    new-instance v1, Landroidx/transition/GhostViewPort;

    #@30
    invoke-direct {v1, p0}, Landroidx/transition/GhostViewPort;-><init>(Landroid/view/View;)V

    #@33
    .line 183
    invoke-virtual {v1, p2}, Landroidx/transition/GhostViewPort;->setMatrix(Landroid/graphics/Matrix;)V

    #@36
    if-nez v0, :cond_3e

    #@38
    .line 185
    new-instance v0, Landroidx/transition/GhostViewHolder;

    #@3a
    invoke-direct {v0, p1}, Landroidx/transition/GhostViewHolder;-><init>(Landroid/view/ViewGroup;)V

    #@3d
    goto :goto_41

    #@3e
    .line 187
    :cond_3e
    invoke-virtual {v0}, Landroidx/transition/GhostViewHolder;->popToOverlayTop()V

    #@41
    .line 189
    :goto_41
    invoke-static {p1, v0}, Landroidx/transition/GhostViewPort;->copySize(Landroid/view/View;Landroid/view/View;)V

    #@44
    .line 190
    invoke-static {p1, v1}, Landroidx/transition/GhostViewPort;->copySize(Landroid/view/View;Landroid/view/View;)V

    #@47
    .line 191
    invoke-virtual {v0, v1}, Landroidx/transition/GhostViewHolder;->addGhostView(Landroidx/transition/GhostViewPort;)V

    #@4a
    .line 192
    iput v3, v1, Landroidx/transition/GhostViewPort;->mReferences:I

    #@4c
    goto :goto_52

    #@4d
    :cond_4d
    if-eqz p2, :cond_52

    #@4f
    .line 194
    invoke-virtual {v1, p2}, Landroidx/transition/GhostViewPort;->setMatrix(Landroid/graphics/Matrix;)V

    #@52
    .line 196
    :cond_52
    :goto_52
    iget p0, v1, Landroidx/transition/GhostViewPort;->mReferences:I

    #@54
    add-int/lit8 p0, p0, 0x1

    #@56
    iput p0, v1, Landroidx/transition/GhostViewPort;->mReferences:I

    #@58
    return-object v1

    #@59
    .line 164
    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@5b
    const-string p1, "Ghosted views must be parented by a ViewGroup"

    #@5d
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@60
    throw p0
.end method

.method static calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V
    .registers 4

    #@0
    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object p0

    #@4
    check-cast p0, Landroid/view/ViewGroup;

    #@6
    .line 156
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    #@9
    .line 157
    invoke-static {p0, p2}, Landroidx/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    #@c
    .line 158
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    #@f
    move-result v0

    #@10
    neg-int v0, v0

    #@11
    int-to-float v0, v0

    #@12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    #@15
    move-result p0

    #@16
    neg-int p0, p0

    #@17
    int-to-float p0, p0

    #@18
    invoke-virtual {p2, v0, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    #@1b
    .line 159
    invoke-static {p1, p2}, Landroidx/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    #@1e
    return-void
.end method

.method static copySize(Landroid/view/View;Landroid/view/View;)V
    .registers 6

    #@0
    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@3
    move-result v0

    #@4
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@7
    move-result v1

    #@8
    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@b
    move-result v2

    #@c
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@f
    move-result v3

    #@10
    add-int/2addr v2, v3

    #@11
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@14
    move-result v3

    #@15
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    #@18
    move-result p0

    #@19
    add-int/2addr v3, p0

    #@1a
    .line 139
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    #@1d
    return-void
.end method

.method static getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewPort;
    .registers 2

    #@0
    .line 147
    sget v0, Landroidx/transition/R$id;->ghost_view:I

    #@2
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/transition/GhostViewPort;

    #@8
    return-object p0
.end method

.method static removeGhost(Landroid/view/View;)V
    .registers 2

    #@0
    .line 201
    invoke-static {p0}, Landroidx/transition/GhostViewPort;->getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewPort;

    #@3
    move-result-object p0

    #@4
    if-eqz p0, :cond_17

    #@6
    .line 203
    iget v0, p0, Landroidx/transition/GhostViewPort;->mReferences:I

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    iput v0, p0, Landroidx/transition/GhostViewPort;->mReferences:I

    #@c
    if-gtz v0, :cond_17

    #@e
    .line 205
    invoke-virtual {p0}, Landroidx/transition/GhostViewPort;->getParent()Landroid/view/ViewParent;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroidx/transition/GhostViewHolder;

    #@14
    .line 206
    invoke-virtual {v0, p0}, Landroidx/transition/GhostViewHolder;->removeView(Landroid/view/View;)V

    #@17
    :cond_17
    return-void
.end method

.method static setGhostView(Landroid/view/View;Landroidx/transition/GhostViewPort;)V
    .registers 3

    #@0
    .line 151
    sget v0, Landroidx/transition/R$id;->ghost_view:I

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@5
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    #@0
    .line 100
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    .line 101
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@5
    invoke-static {v0, p0}, Landroidx/transition/GhostViewPort;->setGhostView(Landroid/view/View;Landroidx/transition/GhostViewPort;)V

    #@8
    .line 103
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@a
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroidx/transition/GhostViewPort;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@13
    .line 105
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@15
    const/4 v1, 0x4

    #@16
    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    #@19
    .line 106
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@1b
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_2c

    #@21
    .line 107
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@23
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/view/View;

    #@29
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@2c
    :cond_2c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    #@0
    .line 113
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroidx/transition/GhostViewPort;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@b
    .line 114
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    #@11
    .line 115
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-static {v0, v1}, Landroidx/transition/GhostViewPort;->setGhostView(Landroid/view/View;Landroidx/transition/GhostViewPort;)V

    #@17
    .line 116
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1c
    move-result-object v0

    #@1d
    if-eqz v0, :cond_2a

    #@1f
    .line 117
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@21
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/view/View;

    #@27
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@2a
    .line 119
    :cond_2a
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@2d
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    .line 124
    invoke-static {p1, v0}, Landroidx/transition/CanvasUtils;->enableZ(Landroid/graphics/Canvas;Z)V

    #@4
    .line 125
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    #@6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    #@9
    .line 130
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@b
    const/4 v1, 0x0

    #@c
    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    #@f
    .line 131
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@11
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    #@14
    .line 132
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@16
    const/4 v2, 0x4

    #@17
    invoke-static {v0, v2}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    #@1a
    .line 134
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@1c
    invoke-virtual {p0}, Landroidx/transition/GhostViewPort;->getDrawingTime()J

    #@1f
    move-result-wide v2

    #@20
    invoke-virtual {p0, p1, v0, v2, v3}, Landroidx/transition/GhostViewPort;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@23
    .line 135
    invoke-static {p1, v1}, Landroidx/transition/CanvasUtils;->enableZ(Landroid/graphics/Canvas;Z)V

    #@26
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    return-void
.end method

.method public reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 3

    #@0
    .line 94
    iput-object p1, p0, Landroidx/transition/GhostViewPort;->mStartParent:Landroid/view/ViewGroup;

    #@2
    .line 95
    iput-object p2, p0, Landroidx/transition/GhostViewPort;->mStartView:Landroid/view/View;

    #@4
    return-void
.end method

.method setMatrix(Landroid/graphics/Matrix;)V
    .registers 2

    #@0
    .line 89
    iput-object p1, p0, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    #@2
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    #@0
    .line 76
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    #@3
    .line 77
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@5
    invoke-static {v0}, Landroidx/transition/GhostViewPort;->getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewPort;

    #@8
    move-result-object v0

    #@9
    if-ne v0, p0, :cond_15

    #@b
    if-nez p1, :cond_f

    #@d
    const/4 p1, 0x4

    #@e
    goto :goto_10

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    .line 79
    :goto_10
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@12
    invoke-static {v0, p1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    #@15
    :cond_15
    return-void
.end method
