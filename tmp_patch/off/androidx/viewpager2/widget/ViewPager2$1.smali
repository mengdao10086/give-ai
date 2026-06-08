.class Landroidx/viewpager2/widget/ViewPager2$1;
.super Landroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
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
    .line 133
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$1;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    #@2
    const/4 p1, 0x0

    #@3
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;-><init>(Landroidx/viewpager2/widget/ViewPager2$1;)V

    #@6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 3

    #@0
    .line 136
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$1;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    #@2
    const/4 v1, 0x1

    #@3
    iput-boolean v1, v0, Landroidx/viewpager2/widget/ViewPager2;->mCurrentItemDirty:Z

    #@5
    .line 137
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2$1;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    #@7
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    #@9
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->notifyDataSetChangeHappened()V

    #@c
    return-void
.end method
