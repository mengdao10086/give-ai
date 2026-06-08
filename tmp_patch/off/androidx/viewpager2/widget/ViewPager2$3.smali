.class Landroidx/viewpager2/widget/ViewPager2$3;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/widget/ViewPager2;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
    .line 230
    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$3;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    #@2
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 3

    #@0
    .line 233
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$3;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    #@2
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->clearFocus()V

    #@5
    .line 234
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$3;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    #@7
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->hasFocus()Z

    #@a
    move-result p1

    #@b
    if-eqz p1, :cond_15

    #@d
    .line 235
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2$3;->this$0:Landroidx/viewpager2/widget/ViewPager2;

    #@f
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@11
    const/4 v0, 0x2

    #@12
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus(I)Z

    #@15
    :cond_15
    return-void
.end method
