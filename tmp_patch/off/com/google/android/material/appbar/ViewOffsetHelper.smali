.class Lcom/google/android/material/appbar/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private horizontalOffsetEnabled:Z

.field private layoutLeft:I

.field private layoutTop:I

.field private offsetLeft:I

.field private offsetTop:I

.field private verticalOffsetEnabled:Z

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    #@0
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 37
    iput-boolean v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->verticalOffsetEnabled:Z

    #@6
    .line 38
    iput-boolean v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->horizontalOffsetEnabled:Z

    #@8
    .line 41
    iput-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    #@a
    return-void
.end method


# virtual methods
.method applyOffsets()V
    .registers 5

    #@0
    .line 51
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    #@2
    iget v1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    #@4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@7
    move-result v2

    #@8
    iget v3, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    #@a
    sub-int/2addr v2, v3

    #@b
    sub-int/2addr v1, v2

    #@c
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@f
    .line 52
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    #@11
    iget v1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    #@13
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@16
    move-result v2

    #@17
    iget v3, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutLeft:I

    #@19
    sub-int/2addr v2, v3

    #@1a
    sub-int/2addr v1, v2

    #@1b
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    #@1e
    return-void
.end method

.method public getLayoutLeft()I
    .registers 2

    #@0
    .line 98
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutLeft:I

    #@2
    return v0
.end method

.method public getLayoutTop()I
    .registers 2

    #@0
    .line 94
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    #@2
    return v0
.end method

.method public getLeftAndRightOffset()I
    .registers 2

    #@0
    .line 90
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    #@2
    return v0
.end method

.method public getTopAndBottomOffset()I
    .registers 2

    #@0
    .line 86
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    #@2
    return v0
.end method

.method public isHorizontalOffsetEnabled()Z
    .registers 2

    #@0
    .line 114
    iget-boolean v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->horizontalOffsetEnabled:Z

    #@2
    return v0
.end method

.method public isVerticalOffsetEnabled()Z
    .registers 2

    #@0
    .line 106
    iget-boolean v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->verticalOffsetEnabled:Z

    #@2
    return v0
.end method

.method onViewLayout()V
    .registers 2

    #@0
    .line 46
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    #@2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    #@8
    .line 47
    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->view:Landroid/view/View;

    #@a
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutLeft:I

    #@10
    return-void
.end method

.method public setHorizontalOffsetEnabled(Z)V
    .registers 2

    #@0
    .line 110
    iput-boolean p1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->horizontalOffsetEnabled:Z

    #@2
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .registers 3

    #@0
    .line 77
    iget-boolean v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->horizontalOffsetEnabled:Z

    #@2
    if-eqz v0, :cond_f

    #@4
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    #@6
    if-eq v0, p1, :cond_f

    #@8
    .line 78
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetLeft:I

    #@a
    .line 79
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->applyOffsets()V

    #@d
    const/4 p1, 0x1

    #@e
    return p1

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    return p1
.end method

.method public setTopAndBottomOffset(I)Z
    .registers 3

    #@0
    .line 62
    iget-boolean v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->verticalOffsetEnabled:Z

    #@2
    if-eqz v0, :cond_f

    #@4
    iget v0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    #@6
    if-eq v0, p1, :cond_f

    #@8
    .line 63
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->offsetTop:I

    #@a
    .line 64
    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->applyOffsets()V

    #@d
    const/4 p1, 0x1

    #@e
    return p1

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    return p1
.end method

.method public setVerticalOffsetEnabled(Z)V
    .registers 2

    #@0
    .line 102
    iput-boolean p1, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->verticalOffsetEnabled:Z

    #@2
    return-void
.end method
