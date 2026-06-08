.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private viewCapturedMillis:J


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .registers 2

    #@0
    .line 1699
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@2
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    #@5
    return-void
.end method

.method private releasedLow(Landroid/view/View;)Z
    .registers 4

    #@0
    .line 1737
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3
    move-result p1

    #@4
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@6
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    #@8
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@a
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    #@d
    move-result v1

    #@e
    add-int/2addr v0, v1

    #@f
    div-int/lit8 v0, v0, 0x2

    #@11
    if-le p1, v0, :cond_15

    #@13
    const/4 p1, 0x1

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 p1, 0x0

    #@16
    :goto_16
    return p1
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 4

    #@0
    .line 1846
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    #@0
    .line 1838
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@2
    .line 1840
    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    #@5
    move-result p3

    #@6
    .line 1841
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->getViewVerticalDragRange(Landroid/view/View;)I

    #@9
    move-result p1

    #@a
    .line 1838
    invoke-static {p2, p3, p1}, Landroidx/core/math/MathUtils;->clamp(III)I

    #@d
    move-result p1

    #@e
    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 2

    #@0
    .line 1851
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@2
    # invokes: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->canBeHiddenByDragging()Z
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1600(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@5
    move-result p1

    #@6
    if-eqz p1, :cond_d

    #@8
    .line 1852
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@a
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    #@c
    return p1

    #@d
    .line 1854
    :cond_d
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@f
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@11
    return p1
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_10

    #@3
    .line 1730
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@5
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->draggable:Z
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1300(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@8
    move-result p1

    #@9
    if-eqz p1, :cond_10

    #@b
    .line 1731
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@d
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    #@10
    :cond_10
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 6

    #@0
    .line 1725
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@2
    invoke-virtual {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->dispatchOnSlide(I)V

    #@5
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v1, p3, v0

    #@3
    const/4 v2, 0x6

    #@4
    const/4 v3, 0x3

    #@5
    const/4 v4, 0x4

    #@6
    if-gez v1, :cond_41

    #@8
    .line 1744
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@a
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@d
    move-result p2

    #@e
    if-eqz p2, :cond_13

    #@10
    :cond_10
    :goto_10
    move v2, v3

    #@11
    goto/16 :goto_135

    #@13
    .line 1747
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@16
    move-result p2

    #@17
    .line 1748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1a
    move-result-wide v0

    #@1b
    iget-wide v5, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->viewCapturedMillis:J

    #@1d
    sub-long/2addr v0, v5

    #@1e
    .line 1750
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@20
    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    #@23
    move-result p3

    #@24
    if-eqz p3, :cond_39

    #@26
    int-to-float p2, p2

    #@27
    const/high16 p3, 0x42c80000    # 100.0f

    #@29
    mul-float/2addr p2, p3

    #@2a
    .line 1751
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@2c
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->parentHeight:I

    #@2e
    int-to-float p3, p3

    #@2f
    div-float/2addr p2, p3

    #@30
    .line 1753
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@32
    invoke-virtual {p3, v0, v1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldExpandOnUpwardDrag(JF)Z

    #@35
    move-result p2

    #@36
    if-eqz p2, :cond_b1

    #@38
    goto :goto_10

    #@39
    .line 1759
    :cond_39
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@3b
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    #@3d
    if-le p2, p3, :cond_10

    #@3f
    goto/16 :goto_135

    #@41
    .line 1766
    :cond_41
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@43
    iget-boolean v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->hideable:Z

    #@45
    if-eqz v1, :cond_98

    #@47
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@49
    invoke-virtual {v1, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    #@4c
    move-result v1

    #@4d
    if-eqz v1, :cond_98

    #@4f
    .line 1769
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@52
    move-result p2

    #@53
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    #@56
    move-result v0

    #@57
    cmpg-float p2, p2, v0

    #@59
    if-gez p2, :cond_66

    #@5b
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@5d
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->significantVelocityThreshold:I
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I

    #@60
    move-result p2

    #@61
    int-to-float p2, p2

    #@62
    cmpl-float p2, p3, p2

    #@64
    if-gtz p2, :cond_6c

    #@66
    .line 1770
    :cond_66
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->releasedLow(Landroid/view/View;)Z

    #@69
    move-result p2

    #@6a
    if-eqz p2, :cond_6f

    #@6c
    :cond_6c
    const/4 v2, 0x5

    #@6d
    goto/16 :goto_135

    #@6f
    .line 1772
    :cond_6f
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@71
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@74
    move-result p2

    #@75
    if-eqz p2, :cond_78

    #@77
    goto :goto_10

    #@78
    .line 1774
    :cond_78
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@7b
    move-result p2

    #@7c
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@7e
    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    #@81
    move-result p3

    #@82
    sub-int/2addr p2, p3

    #@83
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@86
    move-result p2

    #@87
    .line 1775
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@8a
    move-result p3

    #@8b
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@8d
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    #@8f
    sub-int/2addr p3, v0

    #@90
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@93
    move-result p3

    #@94
    if-ge p2, p3, :cond_135

    #@96
    goto/16 :goto_10

    #@98
    :cond_98
    cmpl-float v0, p3, v0

    #@9a
    if-eqz v0, :cond_d6

    #@9c
    .line 1780
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    #@9f
    move-result p2

    #@a0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    #@a3
    move-result p3

    #@a4
    cmpl-float p2, p2, p3

    #@a6
    if-lez p2, :cond_a9

    #@a8
    goto :goto_d6

    #@a9
    .line 1816
    :cond_a9
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@ab
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z
    invoke-static {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@ae
    move-result p2

    #@af
    if-eqz p2, :cond_b4

    #@b1
    :cond_b1
    :goto_b1
    move v2, v4

    #@b2
    goto/16 :goto_135

    #@b4
    .line 1820
    :cond_b4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@b7
    move-result p2

    #@b8
    .line 1821
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@ba
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    #@bc
    sub-int p3, p2, p3

    #@be
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@c1
    move-result p3

    #@c2
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@c4
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@c6
    sub-int/2addr p2, v0

    #@c7
    .line 1822
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@ca
    move-result p2

    #@cb
    if-ge p3, p2, :cond_b1

    #@cd
    .line 1823
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@cf
    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    #@d2
    move-result p2

    #@d3
    if-eqz p2, :cond_135

    #@d5
    goto :goto_b1

    #@d6
    .line 1783
    :cond_d6
    :goto_d6
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@d9
    move-result p2

    #@da
    .line 1784
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@dc
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContents:Z
    invoke-static {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@df
    move-result p3

    #@e0
    if-eqz p3, :cond_f9

    #@e2
    .line 1785
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@e4
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->fitToContentsOffset:I

    #@e6
    sub-int p3, p2, p3

    #@e8
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@eb
    move-result p3

    #@ec
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@ee
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@f0
    sub-int/2addr p2, v0

    #@f1
    .line 1786
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@f4
    move-result p2

    #@f5
    if-ge p3, p2, :cond_b1

    #@f7
    goto/16 :goto_10

    #@f9
    .line 1792
    :cond_f9
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@fb
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    #@fd
    if-ge p2, p3, :cond_116

    #@ff
    .line 1793
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@101
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@103
    sub-int p3, p2, p3

    #@105
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@108
    move-result p3

    #@109
    if-ge p2, p3, :cond_10d

    #@10b
    goto/16 :goto_10

    #@10d
    .line 1796
    :cond_10d
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@10f
    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    #@112
    move-result p2

    #@113
    if-eqz p2, :cond_135

    #@115
    goto :goto_b1

    #@116
    .line 1803
    :cond_116
    iget-object p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@118
    iget p3, p3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->halfExpandedOffset:I

    #@11a
    sub-int p3, p2, p3

    #@11c
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@11f
    move-result p3

    #@120
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@122
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->collapsedOffset:I

    #@124
    sub-int/2addr p2, v0

    #@125
    .line 1804
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    #@128
    move-result p2

    #@129
    if-ge p3, p2, :cond_b1

    #@12b
    .line 1805
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@12d
    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    #@130
    move-result p2

    #@131
    if-eqz p2, :cond_135

    #@133
    goto/16 :goto_b1

    #@135
    .line 1833
    :cond_135
    :goto_135
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@137
    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipSmoothAnimation()Z

    #@13a
    move-result p3

    #@13b
    # invokes: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->startSettling(Landroid/view/View;IZ)V
    invoke-static {p2, p1, v2, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$100(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;IZ)V

    #@13e
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 8

    #@0
    .line 1705
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@2
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x1

    #@6
    if-ne v0, v2, :cond_9

    #@8
    return v1

    #@9
    .line 1708
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@b
    iget-boolean v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->touchingScrollingChild:Z

    #@d
    if-eqz v0, :cond_10

    #@f
    return v1

    #@10
    .line 1711
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@12
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    #@14
    const/4 v3, 0x3

    #@15
    if-ne v0, v3, :cond_39

    #@17
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@19
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->activePointerId:I

    #@1b
    if-ne v0, p2, :cond_39

    #@1d
    .line 1712
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@1f
    iget-object p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    #@21
    if-eqz p2, :cond_2e

    #@23
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@25
    iget-object p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    #@27
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@2a
    move-result-object p2

    #@2b
    check-cast p2, Landroid/view/View;

    #@2d
    goto :goto_2f

    #@2e
    :cond_2e
    const/4 p2, 0x0

    #@2f
    :goto_2f
    if-eqz p2, :cond_39

    #@31
    const/4 v0, -0x1

    #@32
    .line 1713
    invoke-virtual {p2, v0}, Landroid/view/View;->canScrollVertically(I)Z

    #@35
    move-result p2

    #@36
    if-eqz p2, :cond_39

    #@38
    return v1

    #@39
    .line 1718
    :cond_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3c
    move-result-wide v3

    #@3d
    iput-wide v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->viewCapturedMillis:J

    #@3f
    .line 1719
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@41
    iget-object p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@43
    if-eqz p2, :cond_50

    #@45
    iget-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@47
    iget-object p2, p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    #@49
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@4c
    move-result-object p2

    #@4d
    if-ne p2, p1, :cond_50

    #@4f
    move v1, v2

    #@50
    :cond_50
    return v1
.end method
