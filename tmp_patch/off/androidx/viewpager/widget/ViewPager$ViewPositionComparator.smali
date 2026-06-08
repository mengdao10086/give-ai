.class Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 3157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .registers 5

    #@0
    .line 3160
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@6
    .line 3161
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object p2

    #@a
    check-cast p2, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    #@c
    .line 3162
    iget-boolean v0, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@e
    iget-boolean v1, p2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@10
    if-eq v0, v1, :cond_1a

    #@12
    .line 3163
    iget-boolean p1, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    #@14
    if-eqz p1, :cond_18

    #@16
    const/4 p1, 0x1

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 p1, -0x1

    #@19
    :goto_19
    return p1

    #@1a
    .line 3165
    :cond_1a
    iget p1, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    #@1c
    iget p2, p2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    #@1e
    sub-int/2addr p1, p2

    #@1f
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 3157
    check-cast p1, Landroid/view/View;

    #@2
    check-cast p2, Landroid/view/View;

    #@4
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager$ViewPositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    #@7
    move-result p1

    #@8
    return p1
.end method
