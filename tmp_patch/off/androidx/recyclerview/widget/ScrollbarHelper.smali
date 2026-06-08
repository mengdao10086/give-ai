.class Landroidx/recyclerview/widget/ScrollbarHelper;
.super Ljava/lang/Object;
.source "ScrollbarHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I
    .registers 7

    #@0
    .line 63
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_35

    #@6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@9
    move-result p0

    #@a
    if-eqz p0, :cond_35

    #@c
    if-eqz p2, :cond_35

    #@e
    if-nez p3, :cond_11

    #@10
    goto :goto_35

    #@11
    :cond_11
    if-nez p5, :cond_23

    #@13
    .line 68
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@16
    move-result p0

    #@17
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@1a
    move-result p1

    #@1b
    sub-int/2addr p0, p1

    #@1c
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    #@1f
    move-result p0

    #@20
    add-int/lit8 p0, p0, 0x1

    #@22
    return p0

    #@23
    .line 70
    :cond_23
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@26
    move-result p0

    #@27
    .line 71
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@2a
    move-result p2

    #@2b
    sub-int/2addr p0, p2

    #@2c
    .line 72
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    #@2f
    move-result p1

    #@30
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    #@33
    move-result p0

    #@34
    return p0

    #@35
    :cond_35
    :goto_35
    const/4 p0, 0x0

    #@36
    return p0
.end method

.method static computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I
    .registers 11

    #@0
    .line 32
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_70

    #@7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_70

    #@d
    if-eqz p2, :cond_70

    #@f
    if-nez p3, :cond_12

    #@11
    goto :goto_70

    #@12
    .line 36
    :cond_12
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@15
    move-result v0

    #@16
    .line 37
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@19
    move-result v2

    #@1a
    .line 36
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    #@1d
    move-result v0

    #@1e
    .line 38
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@21
    move-result v2

    #@22
    .line 39
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@25
    move-result v3

    #@26
    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@29
    move-result v2

    #@2a
    if-eqz p6, :cond_38

    #@2c
    .line 41
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@2f
    move-result p0

    #@30
    sub-int/2addr p0, v2

    #@31
    add-int/lit8 p0, p0, -0x1

    #@33
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    #@36
    move-result p0

    #@37
    goto :goto_3c

    #@38
    .line 42
    :cond_38
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@3b
    move-result p0

    #@3c
    :goto_3c
    if-nez p5, :cond_3f

    #@3e
    return p0

    #@3f
    .line 46
    :cond_3f
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@42
    move-result p5

    #@43
    .line 47
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@46
    move-result p6

    #@47
    sub-int/2addr p5, p6

    #@48
    .line 46
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    #@4b
    move-result p5

    #@4c
    .line 48
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@4f
    move-result p6

    #@50
    .line 49
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@53
    move-result p3

    #@54
    sub-int/2addr p6, p3

    #@55
    .line 48
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    #@58
    move-result p3

    #@59
    add-int/lit8 p3, p3, 0x1

    #@5b
    int-to-float p4, p5

    #@5c
    int-to-float p3, p3

    #@5d
    div-float/2addr p4, p3

    #@5e
    int-to-float p0, p0

    #@5f
    mul-float/2addr p0, p4

    #@60
    .line 52
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    #@63
    move-result p3

    #@64
    .line 53
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@67
    move-result p1

    #@68
    sub-int/2addr p3, p1

    #@69
    int-to-float p1, p3

    #@6a
    add-float/2addr p0, p1

    #@6b
    .line 52
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    #@6e
    move-result p0

    #@6f
    return p0

    #@70
    :cond_70
    :goto_70
    return v1
.end method

.method static computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I
    .registers 7

    #@0
    .line 82
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_3b

    #@6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_3b

    #@c
    if-eqz p2, :cond_3b

    #@e
    if-nez p3, :cond_11

    #@10
    goto :goto_3b

    #@11
    :cond_11
    if-nez p5, :cond_18

    #@13
    .line 87
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@16
    move-result p0

    #@17
    return p0

    #@18
    .line 90
    :cond_18
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    #@1b
    move-result p5

    #@1c
    .line 91
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    #@1f
    move-result p1

    #@20
    sub-int/2addr p5, p1

    #@21
    .line 92
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@24
    move-result p1

    #@25
    .line 93
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    #@28
    move-result p2

    #@29
    sub-int/2addr p1, p2

    #@2a
    .line 92
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@2d
    move-result p1

    #@2e
    add-int/lit8 p1, p1, 0x1

    #@30
    int-to-float p2, p5

    #@31
    int-to-float p1, p1

    #@32
    div-float/2addr p2, p1

    #@33
    .line 96
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@36
    move-result p0

    #@37
    int-to-float p0, p0

    #@38
    mul-float/2addr p2, p0

    #@39
    float-to-int p0, p2

    #@3a
    return p0

    #@3b
    :cond_3b
    :goto_3b
    const/4 p0, 0x0

    #@3c
    return p0
.end method
