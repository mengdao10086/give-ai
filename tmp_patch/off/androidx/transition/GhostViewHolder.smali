.class Landroidx/transition/GhostViewHolder;
.super Landroid/widget/FrameLayout;
.source "GhostViewHolder.java"


# instance fields
.field private mAttached:Z

.field private mParent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    #@0
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@7
    const/4 v0, 0x0

    #@8
    .line 39
    invoke-virtual {p0, v0}, Landroidx/transition/GhostViewHolder;->setClipChildren(Z)V

    #@b
    .line 40
    iput-object p1, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    #@d
    .line 41
    sget v0, Landroidx/transition/R$id;->ghost_view_holder:I

    #@f
    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    #@12
    .line 42
    iget-object p1, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    #@14
    invoke-static {p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    #@17
    move-result-object p1

    #@18
    invoke-interface {p1, p0}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    #@1b
    const/4 p1, 0x1

    #@1c
    .line 43
    iput-boolean p1, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    #@1e
    return-void
.end method

.method static getHolder(Landroid/view/ViewGroup;)Landroidx/transition/GhostViewHolder;
    .registers 2

    #@0
    .line 69
    sget v0, Landroidx/transition/R$id;->ghost_view_holder:I

    #@2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/transition/GhostViewHolder;

    #@8
    return-object p0
.end method

.method private getInsertIndex(Ljava/util/ArrayList;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    #@0
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 107
    invoke-virtual {p0}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    #@8
    move-result v1

    #@9
    add-int/lit8 v1, v1, -0x1

    #@b
    const/4 v2, 0x0

    #@c
    :goto_c
    if-gt v2, v1, :cond_2e

    #@e
    add-int v3, v2, v1

    #@10
    .line 110
    div-int/lit8 v3, v3, 0x2

    #@12
    .line 111
    invoke-virtual {p0, v3}, Landroidx/transition/GhostViewHolder;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Landroidx/transition/GhostViewPort;

    #@18
    .line 112
    iget-object v4, v4, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@1a
    invoke-static {v4, v0}, Landroidx/transition/GhostViewHolder;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    #@1d
    .line 113
    invoke-static {p1, v0}, Landroidx/transition/GhostViewHolder;->isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_27

    #@23
    add-int/lit8 v3, v3, 0x1

    #@25
    move v2, v3

    #@26
    goto :goto_2a

    #@27
    :cond_27
    add-int/lit8 v3, v3, -0x1

    #@29
    move v1, v3

    #@2a
    .line 118
    :goto_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@2d
    goto :goto_c

    #@2e
    :cond_2e
    return v2
.end method

.method private static getParents(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    .line 157
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@6
    if-eqz v1, :cond_d

    #@8
    .line 158
    check-cast v0, Landroid/view/View;

    #@a
    invoke-static {v0, p1}, Landroidx/transition/GhostViewHolder;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    #@d
    .line 160
    :cond_d
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method private static isOnTop(Landroid/view/View;Landroid/view/View;)Z
    .registers 8

    #@0
    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/ViewGroup;

    #@6
    .line 171
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    #@9
    move-result v1

    #@a
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    #@d
    move-result v2

    #@e
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    #@11
    move-result v3

    #@12
    cmpl-float v2, v2, v3

    #@14
    const/4 v3, 0x0

    #@15
    const/4 v4, 0x1

    #@16
    if-eqz v2, :cond_26

    #@18
    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    #@1b
    move-result p0

    #@1c
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    #@1f
    move-result p1

    #@20
    cmpl-float p0, p0, p1

    #@22
    if-lez p0, :cond_25

    #@24
    move v3, v4

    #@25
    :cond_25
    return v3

    #@26
    :cond_26
    move v2, v3

    #@27
    :goto_27
    if-ge v2, v1, :cond_3a

    #@29
    .line 186
    invoke-static {v0, v2}, Landroidx/transition/ViewGroupUtils;->getChildDrawingOrder(Landroid/view/ViewGroup;I)I

    #@2c
    move-result v5

    #@2d
    .line 187
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@30
    move-result-object v5

    #@31
    if-ne v5, p0, :cond_34

    #@33
    goto :goto_3b

    #@34
    :cond_34
    if-ne v5, p1, :cond_37

    #@36
    goto :goto_3a

    #@37
    :cond_37
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_27

    #@3a
    :cond_3a
    :goto_3a
    move v3, v4

    #@3b
    :goto_3b
    return v3
.end method

.method private static isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    #@0
    .line 132
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-nez v0, :cond_46

    #@7
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_46

    #@d
    const/4 v0, 0x0

    #@e
    .line 133
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    if-eq v2, v3, :cond_19

    #@18
    goto :goto_46

    #@19
    .line 137
    :cond_19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v3

    #@21
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@24
    move-result v2

    #@25
    move v3, v1

    #@26
    :goto_26
    if-ge v3, v2, :cond_3e

    #@28
    .line 139
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v4

    #@2c
    check-cast v4, Landroid/view/View;

    #@2e
    .line 140
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v5

    #@32
    check-cast v5, Landroid/view/View;

    #@34
    if-eq v4, v5, :cond_3b

    #@36
    .line 144
    invoke-static {v4, v5}, Landroidx/transition/GhostViewHolder;->isOnTop(Landroid/view/View;Landroid/view/View;)Z

    #@39
    move-result p0

    #@3a
    return p0

    #@3b
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_26

    #@3e
    .line 149
    :cond_3e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@41
    move-result p0

    #@42
    if-ne p0, v2, :cond_45

    #@44
    goto :goto_46

    #@45
    :cond_45
    move v1, v0

    #@46
    :cond_46
    :goto_46
    return v1
.end method


# virtual methods
.method addGhostView(Landroidx/transition/GhostViewPort;)V
    .registers 4

    #@0
    .line 88
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 89
    iget-object v1, p1, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    #@7
    invoke-static {v1, v0}, Landroidx/transition/GhostViewHolder;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    #@a
    .line 91
    invoke-direct {p0, v0}, Landroidx/transition/GhostViewHolder;->getInsertIndex(Ljava/util/ArrayList;)I

    #@d
    move-result v0

    #@e
    if-ltz v0, :cond_1b

    #@10
    .line 92
    invoke-virtual {p0}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    #@13
    move-result v1

    #@14
    if-lt v0, v1, :cond_17

    #@16
    goto :goto_1b

    #@17
    .line 95
    :cond_17
    invoke-virtual {p0, p1, v0}, Landroidx/transition/GhostViewHolder;->addView(Landroid/view/View;I)V

    #@1a
    goto :goto_1e

    #@1b
    .line 93
    :cond_1b
    :goto_1b
    invoke-virtual {p0, p1}, Landroidx/transition/GhostViewHolder;->addView(Landroid/view/View;)V

    #@1e
    :goto_1e
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 3

    #@0
    .line 48
    iget-boolean v0, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 51
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    #@7
    return-void

    #@8
    .line 49
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    #@a
    const-string v0, "This GhostViewHolder is detached!"

    #@c
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw p1
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 5

    #@0
    .line 56
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    #@3
    .line 60
    invoke-virtual {p0}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x1

    #@8
    const/4 v2, 0x0

    #@9
    if-ne v0, v1, :cond_11

    #@b
    invoke-virtual {p0, v2}, Landroidx/transition/GhostViewHolder;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    if-eq v0, p1, :cond_17

    #@11
    .line 61
    :cond_11
    invoke-virtual {p0}, Landroidx/transition/GhostViewHolder;->getChildCount()I

    #@14
    move-result p1

    #@15
    if-nez p1, :cond_2a

    #@17
    .line 62
    :cond_17
    iget-object p1, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    #@19
    sget v0, Landroidx/transition/R$id;->ghost_view_holder:I

    #@1b
    const/4 v1, 0x0

    #@1c
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    #@1f
    .line 63
    iget-object p1, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    #@21
    invoke-static {p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    #@24
    move-result-object p1

    #@25
    invoke-interface {p1, p0}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    #@28
    .line 64
    iput-boolean v2, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    #@2a
    :cond_2a
    return-void
.end method

.method popToOverlayTop()V
    .registers 3

    #@0
    .line 73
    iget-boolean v0, p0, Landroidx/transition/GhostViewHolder;->mAttached:Z

    #@2
    if-eqz v0, :cond_17

    #@4
    .line 78
    iget-object v0, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    #@6
    invoke-static {v0}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0, p0}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    #@d
    .line 79
    iget-object v0, p0, Landroidx/transition/GhostViewHolder;->mParent:Landroid/view/ViewGroup;

    #@f
    invoke-static {v0}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0, p0}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    #@16
    return-void

    #@17
    .line 74
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    #@19
    const-string v1, "This GhostViewHolder is detached!"

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0
.end method
