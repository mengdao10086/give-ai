.class public final Landroidx/viewpager2/widget/MarginPageTransformer;
.super Ljava/lang/Object;
.source "MarginPageTransformer.java"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# instance fields
.field private final mMarginPx:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    #@0
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-string v0, "Margin must be non-negative"

    #@5
    .line 48
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    #@8
    .line 49
    iput p1, p0, Landroidx/viewpager2/widget/MarginPageTransformer;->mMarginPx:I

    #@a
    return-void
.end method

.method private requireViewPager(Landroid/view/View;)Landroidx/viewpager2/widget/ViewPager2;
    .registers 3

    #@0
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object p1

    #@4
    .line 67
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object v0

    #@8
    .line 69
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView;

    #@a
    if-eqz p1, :cond_13

    #@c
    instance-of p1, v0, Landroidx/viewpager2/widget/ViewPager2;

    #@e
    if-eqz p1, :cond_13

    #@10
    .line 70
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    #@12
    return-object v0

    #@13
    .line 73
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    #@15
    const-string v0, "Expected the page view to be managed by a ViewPager2 instance."

    #@17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1a
    throw p1
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .registers 5

    #@0
    .line 54
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/MarginPageTransformer;->requireViewPager(Landroid/view/View;)Landroidx/viewpager2/widget/ViewPager2;

    #@3
    move-result-object v0

    #@4
    .line 56
    iget v1, p0, Landroidx/viewpager2/widget/MarginPageTransformer;->mMarginPx:I

    #@6
    int-to-float v1, v1

    #@7
    mul-float/2addr v1, p2

    #@8
    .line 58
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    #@b
    move-result p2

    #@c
    if-nez p2, :cond_19

    #@e
    .line 59
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isRtl()Z

    #@11
    move-result p2

    #@12
    if-eqz p2, :cond_15

    #@14
    neg-float v1, v1

    #@15
    :cond_15
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    #@18
    goto :goto_1c

    #@19
    .line 61
    :cond_19
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    #@1c
    :goto_1c
    return-void
.end method
