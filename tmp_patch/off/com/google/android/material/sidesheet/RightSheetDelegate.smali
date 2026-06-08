.class final Lcom/google/android/material/sidesheet/RightSheetDelegate;
.super Lcom/google/android/material/sidesheet/SheetDelegate;
.source "RightSheetDelegate.java"


# instance fields
.field final sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 38
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SheetDelegate;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@5
    return-void
.end method

.method private isReleasedCloseToOriginEdge(Landroid/view/View;)Z
    .registers 4

    #@0
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@3
    move-result p1

    #@4
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getHiddenOffset()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getExpandedOffset()I

    #@b
    move-result v1

    #@c
    sub-int/2addr v0, v1

    #@d
    div-int/lit8 v0, v0, 0x2

    #@f
    if-le p1, v0, :cond_13

    #@11
    const/4 p1, 0x1

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 p1, 0x0

    #@14
    :goto_14
    return p1
.end method

.method private isSwipeSignificant(FF)Z
    .registers 3

    #@0
    .line 102
    invoke-static {p1, p2}, Lcom/google/android/material/sidesheet/SheetUtils;->isSwipeMostlyHorizontal(FF)Z

    #@3
    move-result p1

    #@4
    if-eqz p1, :cond_13

    #@6
    iget-object p1, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@8
    .line 103
    invoke-virtual {p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getSignificantVelocityThreshold()I

    #@b
    move-result p1

    #@c
    int-to-float p1, p1

    #@d
    cmpl-float p1, p2, p1

    #@f
    if-lez p1, :cond_13

    #@11
    const/4 p1, 0x1

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 p1, 0x0

    #@14
    :goto_14
    return p1
.end method


# virtual methods
.method calculateSlideOffsetBasedOnOutwardEdge(I)F
    .registers 4

    #@0
    .line 129
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getHiddenOffset()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    .line 130
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getExpandedOffset()I

    #@8
    move-result v1

    #@9
    int-to-float v1, v1

    #@a
    sub-float v1, v0, v1

    #@c
    int-to-float p1, p1

    #@d
    sub-float/2addr v0, p1

    #@e
    div-float/2addr v0, v1

    #@f
    return v0
.end method

.method calculateTargetStateOnViewReleased(Landroid/view/View;FF)I
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v1, p2, v0

    #@3
    const/4 v2, 0x3

    #@4
    if-gez v1, :cond_7

    #@6
    goto :goto_3f

    #@7
    .line 78
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->shouldHide(Landroid/view/View;F)Z

    #@a
    move-result v1

    #@b
    const/4 v3, 0x5

    #@c
    if-eqz v1, :cond_1c

    #@e
    .line 81
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->isSwipeSignificant(FF)Z

    #@11
    move-result p2

    #@12
    if-nez p2, :cond_1a

    #@14
    invoke-direct {p0, p1}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->isReleasedCloseToOriginEdge(Landroid/view/View;)Z

    #@17
    move-result p1

    #@18
    if-eqz p1, :cond_3f

    #@1a
    :cond_1a
    move v2, v3

    #@1b
    goto :goto_3f

    #@1c
    :cond_1c
    cmpl-float v0, p2, v0

    #@1e
    if-eqz v0, :cond_26

    #@20
    .line 86
    invoke-static {p2, p3}, Lcom/google/android/material/sidesheet/SheetUtils;->isSwipeMostlyHorizontal(FF)Z

    #@23
    move-result p2

    #@24
    if-nez p2, :cond_1a

    #@26
    .line 89
    :cond_26
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@29
    move-result p1

    #@2a
    .line 90
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getExpandedOffset()I

    #@2d
    move-result p2

    #@2e
    sub-int p2, p1, p2

    #@30
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@33
    move-result p2

    #@34
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getHiddenOffset()I

    #@37
    move-result p3

    #@38
    sub-int/2addr p1, p3

    #@39
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@3c
    move-result p1

    #@3d
    if-ge p2, p1, :cond_1a

    #@3f
    :cond_3f
    :goto_3f
    return v2
.end method

.method getExpandedOffset()I
    .registers 3

    #@0
    .line 60
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/RightSheetDelegate;->getHiddenOffset()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@6
    invoke-virtual {v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getChildWidth()I

    #@9
    move-result v1

    #@a
    sub-int/2addr v0, v1

    #@b
    const/4 v1, 0x0

    #@c
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method getHiddenOffset()I
    .registers 2

    #@0
    .line 53
    iget-object v0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getParentWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getOutwardEdge(Landroid/view/View;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)I"
        }
    .end annotation

    #@0
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method getSheetEdge()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method isSettling(Landroid/view/View;IZ)Z
    .registers 5

    #@0
    .line 114
    iget-object v0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@2
    invoke-virtual {v0, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getOutwardEdgeOffsetForState(I)I

    #@5
    move-result p2

    #@6
    .line 115
    iget-object v0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@8
    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getViewDragHelper()Landroidx/customview/widget/ViewDragHelper;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_27

    #@e
    if-eqz p3, :cond_1b

    #@10
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@13
    move-result p1

    #@14
    invoke-virtual {v0, p2, p1}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    #@17
    move-result p1

    #@18
    if-eqz p1, :cond_27

    #@1a
    goto :goto_25

    #@1b
    .line 119
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@1e
    move-result p3

    #@1f
    invoke-virtual {v0, p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@22
    move-result p1

    #@23
    if-eqz p1, :cond_27

    #@25
    :goto_25
    const/4 p1, 0x1

    #@26
    goto :goto_28

    #@27
    :cond_27
    const/4 p1, 0x0

    #@28
    :goto_28
    return p1
.end method

.method shouldHide(Landroid/view/View;F)Z
    .registers 4

    #@0
    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@3
    move-result p1

    #@4
    int-to-float p1, p1

    #@5
    iget-object v0, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@7
    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getHideFriction()F

    #@a
    move-result v0

    #@b
    mul-float/2addr p2, v0

    #@c
    add-float/2addr p1, p2

    #@d
    .line 109
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@10
    move-result p1

    #@11
    iget-object p2, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@13
    invoke-virtual {p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getHideThreshold()F

    #@16
    move-result p2

    #@17
    cmpl-float p1, p1, p2

    #@19
    if-lez p1, :cond_1d

    #@1b
    const/4 p1, 0x1

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 p1, 0x0

    #@1e
    :goto_1e
    return p1
.end method

.method updateCoplanarSiblingLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .registers 4

    #@0
    .line 138
    iget-object p3, p0, Lcom/google/android/material/sidesheet/RightSheetDelegate;->sheetBehavior:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@2
    invoke-virtual {p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getParentWidth()I

    #@5
    move-result p3

    #@6
    if-gt p2, p3, :cond_b

    #@8
    sub-int/2addr p3, p2

    #@9
    .line 143
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@b
    :cond_b
    return-void
.end method
