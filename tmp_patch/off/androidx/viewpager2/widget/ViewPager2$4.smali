.class Landroidx/viewpager2/widget/ViewPager2$4;
.super Ljava/lang/Object;
.source "ViewPager2.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/widget/ViewPager2;->enforceChildFillListener()Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .registers 2

    #@0
    .line 263
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$4;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 4

    #@0
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    #@6
    .line 268
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    #@8
    const/4 v1, -0x1

    #@9
    if-ne v0, v1, :cond_10

    #@b
    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    #@d
    if-ne p1, v1, :cond_10

    #@f
    return-void

    #@10
    .line 270
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    #@12
    const-string v0, "Pages must fill the whole ViewPager2 (use match_parent)"

    #@14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw p1
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    #@0
    return-void
.end method
