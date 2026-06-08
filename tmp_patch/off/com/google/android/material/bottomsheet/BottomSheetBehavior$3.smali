.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setWindowInsetsListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field final synthetic val$shouldHandleGestureInsets:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .registers 3

    #@0
    .line 1586
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@2
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .registers 14

    #@0
    .line 1591
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@7
    move-result-object v0

    #@8
    .line 1593
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->mandatorySystemGestures()I

    #@b
    move-result v1

    #@c
    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@f
    move-result-object v1

    #@10
    .line 1595
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@12
    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    #@14
    # setter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetTop:I
    invoke-static {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$302(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    #@17
    .line 1597
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@1a
    move-result v2

    #@1b
    .line 1599
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    #@1e
    move-result v3

    #@1f
    .line 1600
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    #@22
    move-result v4

    #@23
    .line 1601
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    #@26
    move-result v5

    #@27
    .line 1603
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@29
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z
    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_41

    #@2f
    .line 1606
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@31
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    #@34
    move-result v6

    #@35
    # setter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I
    invoke-static {v3, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$502(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    #@38
    .line 1607
    iget v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->bottom:I

    #@3a
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@3c
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->insetBottom:I
    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$500(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I

    #@3f
    move-result v6

    #@40
    add-int/2addr v3, v6

    #@41
    .line 1610
    :cond_41
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@43
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingLeftSystemWindowInsets:Z
    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$600(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@46
    move-result v6

    #@47
    if-eqz v6, :cond_53

    #@49
    if-eqz v2, :cond_4e

    #@4b
    .line 1611
    iget v4, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    #@4d
    goto :goto_50

    #@4e
    :cond_4e
    iget v4, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@50
    .line 1612
    :goto_50
    iget v6, v0, Landroidx/core/graphics/Insets;->left:I

    #@52
    add-int/2addr v4, v6

    #@53
    .line 1615
    :cond_53
    iget-object v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@55
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingRightSystemWindowInsets:Z
    invoke-static {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$700(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@58
    move-result v6

    #@59
    if-eqz v6, :cond_66

    #@5b
    if-eqz v2, :cond_60

    #@5d
    .line 1616
    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->start:I

    #@5f
    goto :goto_62

    #@60
    :cond_60
    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->end:I

    #@62
    .line 1617
    :goto_62
    iget v2, v0, Landroidx/core/graphics/Insets;->right:I

    #@64
    add-int v5, p3, v2

    #@66
    .line 1620
    :cond_66
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@69
    move-result-object p3

    #@6a
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6c
    .line 1623
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@6e
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginLeftSystemWindowInsets:Z
    invoke-static {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$800(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@71
    move-result v2

    #@72
    const/4 v6, 0x0

    #@73
    const/4 v7, 0x1

    #@74
    if-eqz v2, :cond_82

    #@76
    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@78
    iget v8, v0, Landroidx/core/graphics/Insets;->left:I

    #@7a
    if-eq v2, v8, :cond_82

    #@7c
    .line 1624
    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    #@7e
    iput v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@80
    move v2, v7

    #@81
    goto :goto_83

    #@82
    :cond_82
    move v2, v6

    #@83
    .line 1628
    :goto_83
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@85
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginRightSystemWindowInsets:Z
    invoke-static {v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$900(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@88
    move-result v8

    #@89
    if-eqz v8, :cond_96

    #@8b
    iget v8, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@8d
    iget v9, v0, Landroidx/core/graphics/Insets;->right:I

    #@8f
    if-eq v8, v9, :cond_96

    #@91
    .line 1629
    iget v2, v0, Landroidx/core/graphics/Insets;->right:I

    #@93
    iput v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@95
    move v2, v7

    #@96
    .line 1633
    :cond_96
    iget-object v8, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@98
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->marginTopSystemWindowInsets:Z
    invoke-static {v8}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1000(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@9b
    move-result v8

    #@9c
    if-eqz v8, :cond_a9

    #@9e
    iget v8, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@a0
    iget v9, v0, Landroidx/core/graphics/Insets;->top:I

    #@a2
    if-eq v8, v9, :cond_a9

    #@a4
    .line 1634
    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    #@a6
    iput v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@a8
    goto :goto_aa

    #@a9
    :cond_a9
    move v7, v2

    #@aa
    :goto_aa
    if-eqz v7, :cond_af

    #@ac
    .line 1639
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@af
    .line 1641
    :cond_af
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    #@b2
    move-result p3

    #@b3
    invoke-virtual {p1, v4, p3, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    #@b6
    .line 1643
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    #@b8
    if-eqz p1, :cond_c1

    #@ba
    .line 1644
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@bc
    iget p3, v1, Landroidx/core/graphics/Insets;->bottom:I

    #@be
    # setter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->gestureInsetBottom:I
    invoke-static {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1102(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    #@c1
    .line 1649
    :cond_c1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@c3
    # getter for: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->paddingBottomSystemWindowInsets:Z
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$400(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    #@c6
    move-result p1

    #@c7
    if-nez p1, :cond_cd

    #@c9
    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->val$shouldHandleGestureInsets:Z

    #@cb
    if-eqz p1, :cond_d2

    #@cd
    .line 1650
    :cond_cd
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    #@cf
    # invokes: Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->updatePeekHeight(Z)V
    invoke-static {p1, v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->access$1200(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    #@d2
    :cond_d2
    return-object p2
.end method
