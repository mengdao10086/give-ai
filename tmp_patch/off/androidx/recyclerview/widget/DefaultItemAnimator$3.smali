.class Landroidx/recyclerview/widget/DefaultItemAnimator$3;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$additions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .registers 3

    #@0
    .line 168
    iput-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$3;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    #@2
    iput-object p2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    .line 171
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_18

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    #@12
    .line 172
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$3;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    #@14
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    #@17
    goto :goto_6

    #@18
    .line 174
    :cond_18
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@1d
    .line 175
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$3;->this$0:Landroidx/recyclerview/widget/DefaultItemAnimator;

    #@1f
    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    #@21
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$3;->val$additions:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@26
    return-void
.end method
