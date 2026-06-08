.class Lcom/google/android/material/sidesheet/SideSheetBehavior$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SideSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/sidesheet/SideSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .registers 2

    #@0
    .line 686
    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@2
    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 4

    #@0
    .line 735
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@2
    invoke-virtual {p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getExpandedOffset()I

    #@5
    move-result p1

    #@6
    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@8
    # getter for: Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I
    invoke-static {p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$600(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I

    #@b
    move-result p3

    #@c
    invoke-static {p2, p1, p3}, Landroidx/core/math/MathUtils;->clamp(III)I

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    #@0
    .line 730
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 2

    #@0
    .line 740
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@2
    # getter for: Lcom/google/android/material/sidesheet/SideSheetBehavior;->parentWidth:I
    invoke-static {p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$600(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_10

    #@3
    .line 715
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@5
    # getter for: Lcom/google/android/material/sidesheet/SideSheetBehavior;->draggable:Z
    invoke-static {p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$400(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Z

    #@8
    move-result p1

    #@9
    if-eqz p1, :cond_10

    #@b
    .line 716
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@d
    invoke-virtual {p1, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    #@10
    :cond_10
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 8

    #@0
    .line 699
    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@2
    invoke-virtual {p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getCoplanarSiblingView()Landroid/view/View;

    #@5
    move-result-object p3

    #@6
    if-eqz p3, :cond_24

    #@8
    .line 702
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@b
    move-result-object p4

    #@c
    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    if-eqz p4, :cond_24

    #@10
    .line 704
    iget-object p5, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@12
    # getter for: Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;
    invoke-static {p5}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$200(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Lcom/google/android/material/sidesheet/SheetDelegate;

    #@15
    move-result-object p5

    #@16
    .line 705
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@19
    move-result v0

    #@1a
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@1d
    move-result v1

    #@1e
    .line 704
    invoke-virtual {p5, p4, v0, v1}, Lcom/google/android/material/sidesheet/SheetDelegate;->updateCoplanarSiblingLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V

    #@21
    .line 706
    invoke-virtual {p3, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@24
    .line 710
    :cond_24
    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@26
    # invokes: Lcom/google/android/material/sidesheet/SideSheetBehavior;->dispatchOnSlide(Landroid/view/View;I)V
    invoke-static {p3, p1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$300(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/View;I)V

    #@29
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 5

    #@0
    .line 723
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@2
    .line 724
    # getter for: Lcom/google/android/material/sidesheet/SideSheetBehavior;->sheetDelegate:Lcom/google/android/material/sidesheet/SheetDelegate;
    invoke-static {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$200(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Lcom/google/android/material/sidesheet/SheetDelegate;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/material/sidesheet/SheetDelegate;->calculateTargetStateOnViewReleased(Landroid/view/View;FF)I

    #@9
    move-result p2

    #@a
    .line 725
    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@c
    invoke-virtual {p3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->shouldSkipSmoothAnimation()Z

    #@f
    move-result v0

    #@10
    # invokes: Lcom/google/android/material/sidesheet/SideSheetBehavior;->startSettling(Landroid/view/View;IZ)V
    invoke-static {p3, p1, p2, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$500(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/View;IZ)V

    #@13
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 5

    #@0
    .line 690
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@2
    # getter for: Lcom/google/android/material/sidesheet/SideSheetBehavior;->state:I
    invoke-static {p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$000(Lcom/google/android/material/sidesheet/SideSheetBehavior;)I

    #@5
    move-result p2

    #@6
    const/4 v0, 0x0

    #@7
    const/4 v1, 0x1

    #@8
    if-ne p2, v1, :cond_b

    #@a
    return v0

    #@b
    .line 693
    :cond_b
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@d
    # getter for: Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;
    invoke-static {p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$100(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Ljava/lang/ref/WeakReference;

    #@10
    move-result-object p2

    #@11
    if-eqz p2, :cond_20

    #@13
    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@15
    # getter for: Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;
    invoke-static {p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->access$100(Lcom/google/android/material/sidesheet/SideSheetBehavior;)Ljava/lang/ref/WeakReference;

    #@18
    move-result-object p2

    #@19
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1c
    move-result-object p2

    #@1d
    if-ne p2, p1, :cond_20

    #@1f
    move v0, v1

    #@20
    :cond_20
    return v0
.end method
