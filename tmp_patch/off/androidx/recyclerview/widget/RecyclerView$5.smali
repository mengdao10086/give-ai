.class Landroidx/recyclerview/widget/RecyclerView$5;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroidx/recyclerview/widget/ChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/RecyclerView;->initChildrenHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    #@0
    .line 845
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .registers 4

    #@0
    .line 856
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addView(Landroid/view/View;I)V

    #@5
    .line 860
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@7
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    #@a
    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    #@0
    .line 916
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_35

    #@6
    .line 918
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_32

    #@c
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_13

    #@12
    goto :goto_32

    #@13
    .line 919
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance p2, Ljava/lang/StringBuilder;

    #@17
    const-string p3, "Called attach on a child which is not detached: "

    #@19
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p2

    #@20
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@22
    .line 920
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@25
    move-result-object p3

    #@26
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p2

    #@2a
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object p2

    #@2e
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw p1

    #@32
    .line 925
    :cond_32
    :goto_32
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    #@35
    .line 927
    :cond_35
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@37
    # invokes: Landroidx/recyclerview/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->access$000(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@3a
    return-void
.end method

.method public detachViewFromParent(I)V
    .registers 5

    #@0
    .line 932
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_3d

    #@6
    .line 934
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_3d

    #@c
    .line 936
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_38

    #@12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_19

    #@18
    goto :goto_38

    #@19
    .line 937
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    const-string v2, "called detach on an already detached child "

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@28
    .line 938
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw p1

    #@38
    :cond_38
    :goto_38
    const/16 v1, 0x100

    #@3a
    .line 943
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    #@3d
    .line 946
    :cond_3d
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@3f
    # invokes: Landroidx/recyclerview/widget/RecyclerView;->detachViewFromParent(I)V
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->access$100(Landroidx/recyclerview/widget/RecyclerView;I)V

    #@42
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .registers 3

    #@0
    .line 890
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getChildCount()I
    .registers 2

    #@0
    .line 848
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    #@0
    .line 910
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public indexOfChild(Landroid/view/View;)I
    .registers 3

    #@0
    .line 865
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public onEnteredHiddenState(Landroid/view/View;)V
    .registers 3

    #@0
    .line 951
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_b

    #@6
    .line 953
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@8
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->onEnteredHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V

    #@b
    :cond_b
    return-void
.end method

.method public onLeftHiddenState(Landroid/view/View;)V
    .registers 3

    #@0
    .line 959
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_b

    #@6
    .line 961
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@8
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->onLeftHiddenState(Landroidx/recyclerview/widget/RecyclerView;)V

    #@b
    :cond_b
    return-void
.end method

.method public removeAllViews()V
    .registers 5

    #@0
    .line 895
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$5;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_16

    #@7
    .line 897
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 898
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@d
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    #@10
    .line 903
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_5

    #@16
    .line 905
    :cond_16
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@18
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->removeAllViews()V

    #@1b
    return-void
.end method

.method public removeViewAt(I)V
    .registers 4

    #@0
    .line 870
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_10

    #@8
    .line 872
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@a
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    #@d
    .line 877
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@10
    .line 882
    :cond_10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$5;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    #@12
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->removeViewAt(I)V

    #@15
    return-void
.end method
