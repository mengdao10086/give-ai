.class public Lcom/google/android/material/internal/BaselineLayout;
.super Landroid/view/ViewGroup;
.source "BaselineLayout.java"


# instance fields
.field private baseline:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 34
    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    const/4 p1, -0x1

    #@6
    .line 31
    iput p1, p0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 38
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    const/4 p1, -0x1

    #@5
    .line 31
    iput p1, p0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    #@0
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/4 p1, -0x1

    #@4
    .line 31
    iput p1, p0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    #@6
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .registers 2

    #@0
    .line 114
    iget v0, p0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    #@2
    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    #@0
    .line 85
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getChildCount()I

    #@3
    move-result p1

    #@4
    .line 86
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingLeft()I

    #@7
    move-result p3

    #@8
    sub-int/2addr p4, p2

    #@9
    .line 87
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingRight()I

    #@c
    move-result p2

    #@d
    sub-int/2addr p4, p2

    #@e
    sub-int/2addr p4, p3

    #@f
    .line 89
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingTop()I

    #@12
    move-result p2

    #@13
    const/4 p5, 0x0

    #@14
    :goto_14
    if-ge p5, p1, :cond_4d

    #@16
    .line 92
    invoke-virtual {p0, p5}, Lcom/google/android/material/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v0

    #@1a
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@1d
    move-result v1

    #@1e
    const/16 v2, 0x8

    #@20
    if-ne v1, v2, :cond_23

    #@22
    goto :goto_4a

    #@23
    .line 97
    :cond_23
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    #@26
    move-result v1

    #@27
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    #@2a
    move-result v2

    #@2b
    sub-int v3, p4, v1

    #@2d
    .line 100
    div-int/lit8 v3, v3, 0x2

    #@2f
    add-int/2addr v3, p3

    #@30
    .line 102
    iget v4, p0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    #@32
    const/4 v5, -0x1

    #@33
    if-eq v4, v5, :cond_44

    #@35
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    #@38
    move-result v4

    #@39
    if-eq v4, v5, :cond_44

    #@3b
    .line 103
    iget v4, p0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    #@3d
    add-int/2addr v4, p2

    #@3e
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    #@41
    move-result v5

    #@42
    sub-int/2addr v4, v5

    #@43
    goto :goto_45

    #@44
    :cond_44
    move v4, p2

    #@45
    :goto_45
    add-int/2addr v1, v3

    #@46
    add-int/2addr v2, v4

    #@47
    .line 108
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    #@4a
    :goto_4a
    add-int/lit8 p5, p5, 0x1

    #@4c
    goto :goto_14

    #@4d
    :cond_4d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14

    #@0
    .line 47
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, -0x1

    #@6
    move v3, v1

    #@7
    move v4, v3

    #@8
    move v5, v4

    #@9
    move v6, v2

    #@a
    move v7, v6

    #@b
    :goto_b
    if-ge v1, v0, :cond_4b

    #@d
    .line 55
    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    #@10
    move-result-object v8

    #@11
    .line 56
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    #@14
    move-result v9

    #@15
    const/16 v10, 0x8

    #@17
    if-ne v9, v10, :cond_1a

    #@19
    goto :goto_48

    #@1a
    .line 60
    :cond_1a
    invoke-virtual {p0, v8, p1, p2}, Lcom/google/android/material/internal/BaselineLayout;->measureChild(Landroid/view/View;II)V

    #@1d
    .line 61
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    #@20
    move-result v9

    #@21
    if-eq v9, v2, :cond_30

    #@23
    .line 63
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    #@26
    move-result v6

    #@27
    .line 64
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    #@2a
    move-result v10

    #@2b
    sub-int/2addr v10, v9

    #@2c
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    #@2f
    move-result v7

    #@30
    .line 66
    :cond_30
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    #@33
    move-result v9

    #@34
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    #@37
    move-result v4

    #@38
    .line 67
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    #@3b
    move-result v9

    #@3c
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v3

    #@40
    .line 68
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    #@43
    move-result v8

    #@44
    invoke-static {v5, v8}, Landroid/view/View;->combineMeasuredStates(II)I

    #@47
    move-result v5

    #@48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_b

    #@4b
    :cond_4b
    if-eq v6, v2, :cond_5c

    #@4d
    .line 71
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getPaddingBottom()I

    #@50
    move-result v0

    #@51
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    #@54
    move-result v0

    #@55
    add-int/2addr v0, v6

    #@56
    .line 72
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    #@59
    move-result v3

    #@5a
    .line 73
    iput v6, p0, Lcom/google/android/material/internal/BaselineLayout;->baseline:I

    #@5c
    .line 75
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getSuggestedMinimumHeight()I

    #@5f
    move-result v0

    #@60
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    #@63
    move-result v0

    #@64
    .line 76
    invoke-virtual {p0}, Lcom/google/android/material/internal/BaselineLayout;->getSuggestedMinimumWidth()I

    #@67
    move-result v1

    #@68
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    #@6b
    move-result v1

    #@6c
    .line 78
    invoke-static {v1, p1, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    #@6f
    move-result p1

    #@70
    shl-int/lit8 v1, v5, 0x10

    #@72
    .line 79
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    #@75
    move-result p2

    #@76
    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/BaselineLayout;->setMeasuredDimension(II)V

    #@79
    return-void
.end method
