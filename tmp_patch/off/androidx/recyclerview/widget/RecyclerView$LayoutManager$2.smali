.class Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 2

    #@0
    .line 7627
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .registers 3

    #@0
    .line 7630
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getChildEnd(Landroid/view/View;)I
    .registers 4

    #@0
    .line 7654
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    .line 7655
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@8
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    #@b
    move-result p1

    #@c
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    #@e
    add-int/2addr p1, v0

    #@f
    return p1
.end method

.method public getChildStart(Landroid/view/View;)I
    .registers 4

    #@0
    .line 7647
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    .line 7648
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@8
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    #@b
    move-result p1

    #@c
    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    #@e
    sub-int/2addr p1, v0

    #@f
    return p1
.end method

.method public getParentEnd()I
    .registers 3

    #@0
    .line 7640
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@8
    .line 7641
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    #@b
    move-result v1

    #@c
    sub-int/2addr v0, v1

    #@d
    return v0
.end method

.method public getParentStart()I
    .registers 2

    #@0
    .line 7635
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    #@5
    move-result v0

    #@6
    return v0
.end method
