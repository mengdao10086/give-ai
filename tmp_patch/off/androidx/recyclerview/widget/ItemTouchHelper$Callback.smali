.class public abstract Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field static final RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mCachedMaxScrollSpeed:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 1401
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback$1;

    #@2
    invoke-direct {v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback$1;-><init>()V

    #@5
    sput-object v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    #@7
    .line 1408
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback$2;

    #@9
    invoke-direct {v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback$2;-><init>()V

    #@c
    sput-object v0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    #@e
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 1421
    iput v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    #@6
    return-void
.end method

.method public static convertToRelativeDirection(II)I
    .registers 5

    #@0
    const v0, 0xc0c0c

    #@3
    and-int v1, p0, v0

    #@5
    if-nez v1, :cond_8

    #@7
    return p0

    #@8
    :cond_8
    not-int v2, v1

    #@9
    and-int/2addr p0, v2

    #@a
    if-nez p1, :cond_10

    #@c
    shl-int/lit8 p1, v1, 0x2

    #@e
    :goto_e
    or-int/2addr p0, p1

    #@f
    return p0

    #@10
    :cond_10
    shl-int/lit8 p1, v1, 0x1

    #@12
    const v1, -0xc0c0d

    #@15
    and-int/2addr v1, p1

    #@16
    or-int/2addr p0, v1

    #@17
    and-int/2addr p1, v0

    #@18
    shl-int/lit8 p1, p1, 0x2

    #@1a
    goto :goto_e
.end method

.method public static getDefaultUIUtil()Landroidx/recyclerview/widget/ItemTouchUIUtil;
    .registers 1

    #@0
    .line 1466
    sget-object v0, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Landroidx/recyclerview/widget/ItemTouchUIUtil;

    #@2
    return-object v0
.end method

.method private getMaxDragScroll(Landroidx/recyclerview/widget/RecyclerView;)I
    .registers 4

    #@0
    .line 1901
    iget v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_11

    #@5
    .line 1902
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object p1

    #@9
    sget v0, Landroidx/recyclerview/R$dimen;->item_touch_helper_max_drag_scroll_per_frame:I

    #@b
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@e
    move-result p1

    #@f
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    #@11
    .line 1905
    :cond_11
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    #@13
    return p1
.end method

.method public static makeFlag(II)I
    .registers 2

    #@0
    mul-int/lit8 p0, p0, 0x8

    #@2
    shl-int p0, p1, p0

    #@4
    return p0
.end method

.method public static makeMovementFlags(II)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    or-int v1, p1, p0

    #@3
    .line 1512
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeFlag(II)I

    #@6
    move-result v0

    #@7
    const/4 v1, 0x1

    #@8
    .line 1513
    invoke-static {v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeFlag(II)I

    #@b
    move-result p1

    #@c
    or-int/2addr p1, v0

    #@d
    const/4 v0, 0x2

    #@e
    .line 1514
    invoke-static {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeFlag(II)I

    #@11
    move-result p0

    #@12
    or-int/2addr p0, p1

    #@13
    return p0
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    #@0
    const/4 p1, 0x1

    #@1
    return p1
.end method

.method public chooseDropTarget(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    #@0
    move-object v0, p1

    #@1
    .line 1802
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@6
    move-result v1

    #@7
    add-int v1, p3, v1

    #@9
    .line 1803
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@b
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    #@e
    move-result v2

    #@f
    add-int v2, p4, v2

    #@11
    .line 1806
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@13
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@16
    move-result v3

    #@17
    sub-int v3, p3, v3

    #@19
    .line 1807
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@1b
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@1e
    move-result v4

    #@1f
    sub-int v4, p4, v4

    #@21
    .line 1808
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    #@24
    move-result v5

    #@25
    const/4 v6, 0x0

    #@26
    const/4 v7, -0x1

    #@27
    const/4 v8, 0x0

    #@28
    :goto_28
    if-ge v8, v5, :cond_bc

    #@2a
    move-object/from16 v9, p2

    #@2c
    .line 1810
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v10

    #@30
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@32
    if-lez v3, :cond_53

    #@34
    .line 1812
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@36
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    #@39
    move-result v11

    #@3a
    sub-int/2addr v11, v1

    #@3b
    if-gez v11, :cond_53

    #@3d
    .line 1813
    iget-object v12, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@3f
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    #@42
    move-result v12

    #@43
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@45
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    #@48
    move-result v13

    #@49
    if-le v12, v13, :cond_53

    #@4b
    .line 1814
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    #@4e
    move-result v11

    #@4f
    if-le v11, v7, :cond_53

    #@51
    move-object v6, v10

    #@52
    move v7, v11

    #@53
    :cond_53
    if-gez v3, :cond_75

    #@55
    .line 1822
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@57
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    #@5a
    move-result v11

    #@5b
    sub-int v11, v11, p3

    #@5d
    if-lez v11, :cond_75

    #@5f
    .line 1823
    iget-object v12, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@61
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    #@64
    move-result v12

    #@65
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@67
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    #@6a
    move-result v13

    #@6b
    if-ge v12, v13, :cond_75

    #@6d
    .line 1824
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    #@70
    move-result v11

    #@71
    if-le v11, v7, :cond_75

    #@73
    move-object v6, v10

    #@74
    move v7, v11

    #@75
    :cond_75
    if-gez v4, :cond_97

    #@77
    .line 1832
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@79
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    #@7c
    move-result v11

    #@7d
    sub-int v11, v11, p4

    #@7f
    if-lez v11, :cond_97

    #@81
    .line 1833
    iget-object v12, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@83
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    #@86
    move-result v12

    #@87
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@89
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    #@8c
    move-result v13

    #@8d
    if-ge v12, v13, :cond_97

    #@8f
    .line 1834
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    #@92
    move-result v11

    #@93
    if-le v11, v7, :cond_97

    #@95
    move-object v6, v10

    #@96
    move v7, v11

    #@97
    :cond_97
    if-lez v4, :cond_b8

    #@99
    .line 1843
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@9b
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    #@9e
    move-result v11

    #@9f
    sub-int/2addr v11, v2

    #@a0
    if-gez v11, :cond_b8

    #@a2
    .line 1844
    iget-object v12, v10, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@a4
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    #@a7
    move-result v12

    #@a8
    iget-object v13, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@aa
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    #@ad
    move-result v13

    #@ae
    if-le v12, v13, :cond_b8

    #@b0
    .line 1845
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    #@b3
    move-result v11

    #@b4
    if-le v11, v7, :cond_b8

    #@b6
    move-object v6, v10

    #@b7
    move v7, v11

    #@b8
    :cond_b8
    add-int/lit8 v8, v8, 0x1

    #@ba
    goto/16 :goto_28

    #@bc
    :cond_bc
    return-object v6
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    #@0
    .line 2038
    sget-object p1, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Landroidx/recyclerview/widget/ItemTouchUIUtil;

    #@2
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@4
    invoke-interface {p1, p2}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    #@7
    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .registers 6

    #@0
    const v0, 0x303030

    #@3
    and-int v1, p1, v0

    #@5
    if-nez v1, :cond_8

    #@7
    return p1

    #@8
    :cond_8
    not-int v2, v1

    #@9
    and-int/2addr p1, v2

    #@a
    if-nez p2, :cond_10

    #@c
    shr-int/lit8 p2, v1, 0x2

    #@e
    :goto_e
    or-int/2addr p1, p2

    #@f
    return p1

    #@10
    :cond_10
    shr-int/lit8 p2, v1, 0x1

    #@12
    const v1, -0x303031

    #@15
    and-int/2addr v1, p2

    #@16
    or-int/2addr p1, v1

    #@17
    and-int/2addr p2, v0

    #@18
    shr-int/lit8 p2, p2, 0x2

    #@1a
    goto :goto_e
.end method

.method final getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 3

    #@0
    .line 1593
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    #@3
    move-result p2

    #@4
    .line 1594
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public getAnimationDuration(Landroidx/recyclerview/widget/RecyclerView;IFF)J
    .registers 5

    #@0
    .line 2132
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    #@3
    move-result-object p1

    #@4
    const/16 p3, 0x8

    #@6
    if-nez p1, :cond_10

    #@8
    if-ne p2, p3, :cond_d

    #@a
    const-wide/16 p1, 0xc8

    #@c
    goto :goto_f

    #@d
    :cond_d
    const-wide/16 p1, 0xfa

    #@f
    :goto_f
    return-wide p1

    #@10
    :cond_10
    if-ne p2, p3, :cond_17

    #@12
    .line 2137
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    #@15
    move-result-wide p1

    #@16
    goto :goto_1b

    #@17
    .line 2138
    :cond_17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    #@1a
    move-result-wide p1

    #@1b
    :goto_1b
    return-wide p1
.end method

.method public getBoundingBoxMargin()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMoveThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .registers 2

    #@0
    const/high16 p1, 0x3f000000    # 0.5f

    #@2
    return p1
.end method

.method public abstract getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
.end method

.method public getSwipeEscapeVelocity(F)F
    .registers 2

    #@0
    return p1
.end method

.method public getSwipeThreshold(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)F
    .registers 2

    #@0
    const/high16 p1, 0x3f000000    # 0.5f

    #@2
    return p1
.end method

.method public getSwipeVelocityThreshold(F)F
    .registers 2

    #@0
    return p1
.end method

.method hasDragFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    #@0
    .line 1598
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    #@3
    move-result p1

    #@4
    const/high16 p2, 0xff0000

    #@6
    and-int/2addr p1, p2

    #@7
    if-eqz p1, :cond_b

    #@9
    const/4 p1, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    return p1
.end method

.method hasSwipeFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    #@0
    .line 1604
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    #@3
    move-result p1

    #@4
    const p2, 0xff00

    #@7
    and-int/2addr p1, p2

    #@8
    if-eqz p1, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    :goto_d
    return p1
.end method

.method public interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .registers 11

    #@0
    .line 2166
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMaxDragScroll(Landroidx/recyclerview/widget/RecyclerView;)I

    #@3
    move-result p1

    #@4
    .line 2167
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@7
    move-result p4

    #@8
    int-to-float v0, p3

    #@9
    .line 2168
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    #@c
    move-result v0

    #@d
    float-to-int v0, v0

    #@e
    int-to-float p4, p4

    #@f
    const/high16 v1, 0x3f800000    # 1.0f

    #@11
    mul-float/2addr p4, v1

    #@12
    int-to-float p2, p2

    #@13
    div-float/2addr p4, p2

    #@14
    .line 2170
    invoke-static {v1, p4}, Ljava/lang/Math;->min(FF)F

    #@17
    move-result p2

    #@18
    mul-int/2addr v0, p1

    #@19
    int-to-float p1, v0

    #@1a
    .line 2171
    sget-object p4, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    #@1c
    .line 2172
    invoke-interface {p4, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@1f
    move-result p2

    #@20
    mul-float/2addr p1, p2

    #@21
    float-to-int p1, p1

    #@22
    const-wide/16 v2, 0x7d0

    #@24
    cmp-long p2, p5, v2

    #@26
    if-lez p2, :cond_29

    #@28
    goto :goto_2e

    #@29
    :cond_29
    long-to-float p2, p5

    #@2a
    const/high16 p4, 0x44fa0000    # 2000.0f

    #@2c
    div-float v1, p2, p4

    #@2e
    :goto_2e
    int-to-float p1, p1

    #@2f
    .line 2179
    sget-object p2, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    #@31
    .line 2180
    invoke-interface {p2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@34
    move-result p2

    #@35
    mul-float/2addr p1, p2

    #@36
    float-to-int p1, p1

    #@37
    if-nez p1, :cond_3e

    #@39
    if-lez p3, :cond_3d

    #@3b
    const/4 p1, 0x1

    #@3c
    goto :goto_3e

    #@3d
    :cond_3d
    const/4 p1, -0x1

    #@3e
    :cond_3e
    :goto_3e
    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 16

    #@0
    .line 2071
    sget-object v0, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Landroidx/recyclerview/widget/ItemTouchUIUtil;

    #@2
    iget-object v3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    move v6, p6

    #@9
    move v7, p7

    #@a
    invoke-interface/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V

    #@d
    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 16

    #@0
    .line 2105
    sget-object v0, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Landroidx/recyclerview/widget/ItemTouchUIUtil;

    #@2
    iget-object v3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    move v6, p6

    #@9
    move v7, p7

    #@a
    invoke-interface/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V

    #@d
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    #@0
    move-object v8, p1

    #@1
    .line 1978
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    #@4
    move-result v9

    #@5
    const/4 v0, 0x0

    #@6
    move v10, v0

    #@7
    :goto_7
    if-ge v10, v9, :cond_2d

    #@9
    move-object/from16 v11, p4

    #@b
    .line 1980
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    #@11
    .line 1981
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->update()V

    #@14
    .line 1982
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@17
    move-result v12

    #@18
    .line 1983
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@1a
    iget v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    #@1c
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    #@1e
    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    #@20
    const/4 v7, 0x0

    #@21
    move-object v0, p0

    #@22
    move-object v1, p1

    #@23
    move-object v2, p2

    #@24
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    #@27
    .line 1985
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@2a
    add-int/lit8 v10, v10, 0x1

    #@2c
    goto :goto_7

    #@2d
    :cond_2d
    if-eqz p3, :cond_45

    #@2f
    .line 1988
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@32
    move-result v9

    #@33
    const/4 v7, 0x1

    #@34
    move-object v0, p0

    #@35
    move-object v1, p1

    #@36
    move-object v2, p2

    #@37
    move-object/from16 v3, p3

    #@39
    move/from16 v4, p6

    #@3b
    move/from16 v5, p7

    #@3d
    move/from16 v6, p5

    #@3f
    .line 1989
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    #@42
    .line 1990
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@45
    :cond_45
    return-void
.end method

.method onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    #@0
    move-object v8, p1

    #@1
    move-object/from16 v9, p4

    #@3
    .line 1997
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    #@6
    move-result v10

    #@7
    const/4 v11, 0x0

    #@8
    move v12, v11

    #@9
    :goto_9
    if-ge v12, v10, :cond_2b

    #@b
    .line 1999
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    #@11
    .line 2000
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@14
    move-result v13

    #@15
    .line 2001
    iget-object v3, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@17
    iget v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    #@19
    iget v5, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    #@1b
    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    #@1d
    const/4 v7, 0x0

    #@1e
    move-object v0, p0

    #@1f
    move-object v1, p1

    #@20
    move-object/from16 v2, p2

    #@22
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    #@25
    .line 2003
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@28
    add-int/lit8 v12, v12, 0x1

    #@2a
    goto :goto_9

    #@2b
    :cond_2b
    if-eqz p3, :cond_44

    #@2d
    .line 2006
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@30
    move-result v12

    #@31
    const/4 v7, 0x1

    #@32
    move-object v0, p0

    #@33
    move-object v1, p1

    #@34
    move-object/from16 v2, p2

    #@36
    move-object/from16 v3, p3

    #@38
    move/from16 v4, p6

    #@3a
    move/from16 v5, p7

    #@3c
    move/from16 v6, p5

    #@3e
    .line 2007
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    #@41
    .line 2008
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@44
    :cond_44
    const/4 v0, 0x1

    #@45
    sub-int/2addr v10, v0

    #@46
    :goto_46
    if-ltz v10, :cond_62

    #@48
    .line 2012
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v1

    #@4c
    check-cast v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    #@4e
    .line 2013
    iget-boolean v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    #@50
    if-eqz v2, :cond_5a

    #@52
    iget-boolean v2, v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    #@54
    if-nez v2, :cond_5a

    #@56
    .line 2014
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@59
    goto :goto_5f

    #@5a
    .line 2015
    :cond_5a
    iget-boolean v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    #@5c
    if-nez v1, :cond_5f

    #@5e
    move v11, v0

    #@5f
    :cond_5f
    :goto_5f
    add-int/lit8 v10, v10, -0x1

    #@61
    goto :goto_46

    #@62
    :cond_62
    if-eqz v11, :cond_67

    #@64
    .line 2020
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    #@67
    :cond_67
    return-void
.end method

.method public abstract onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;III)V
    .registers 9

    #@0
    .line 1944
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@3
    move-result-object p3

    #@4
    .line 1945
    instance-of v0, p3, Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;

    #@6
    if-eqz v0, :cond_12

    #@8
    .line 1946
    check-cast p3, Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;

    #@a
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@c
    iget-object p2, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@e
    invoke-interface {p3, p1, p2, p6, p7}, Landroidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    #@11
    return-void

    #@12
    .line 1952
    :cond_12
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    #@15
    move-result p2

    #@16
    if-eqz p2, :cond_3b

    #@18
    .line 1953
    iget-object p2, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@1a
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    #@1d
    move-result p2

    #@1e
    .line 1954
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@21
    move-result p6

    #@22
    if-gt p2, p6, :cond_27

    #@24
    .line 1955
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    #@27
    .line 1957
    :cond_27
    iget-object p2, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@29
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    #@2c
    move-result p2

    #@2d
    .line 1958
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@30
    move-result p6

    #@31
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    #@34
    move-result p7

    #@35
    sub-int/2addr p6, p7

    #@36
    if-lt p2, p6, :cond_3b

    #@38
    .line 1959
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    #@3b
    .line 1963
    :cond_3b
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    #@3e
    move-result p2

    #@3f
    if-eqz p2, :cond_64

    #@41
    .line 1964
    iget-object p2, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@43
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    #@46
    move-result p2

    #@47
    .line 1965
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@4a
    move-result p6

    #@4b
    if-gt p2, p6, :cond_50

    #@4d
    .line 1966
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    #@50
    .line 1968
    :cond_50
    iget-object p2, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@52
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    #@55
    move-result p2

    #@56
    .line 1969
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@59
    move-result p3

    #@5a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    #@5d
    move-result p4

    #@5e
    sub-int/2addr p3, p4

    #@5f
    if-lt p2, p3, :cond_64

    #@61
    .line 1970
    invoke-virtual {p1, p5}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    #@64
    :cond_64
    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    #@0
    if-eqz p1, :cond_9

    #@2
    .line 1896
    sget-object p2, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Landroidx/recyclerview/widget/ItemTouchUIUtil;

    #@4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    #@6
    invoke-interface {p2, p1}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    #@9
    :cond_9
    return-void
.end method

.method public abstract onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end method
