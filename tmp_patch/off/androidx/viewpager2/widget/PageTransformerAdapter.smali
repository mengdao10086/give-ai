.class final Landroidx/viewpager2/widget/PageTransformerAdapter;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "PageTransformerAdapter.java"


# instance fields
.field private final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .registers 2

    #@0
    .line 36
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@5
    return-void
.end method


# virtual methods
.method getPageTransformer()Landroidx/viewpager2/widget/ViewPager2$PageTransformer;
    .registers 2

    #@0
    .line 41
    iget-object v0, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    #@2
    return-object v0
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    #@0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 8

    #@0
    .line 58
    iget-object p3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    #@2
    if-nez p3, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    neg-float p2, p2

    #@6
    const/4 p3, 0x0

    #@7
    move v0, p3

    #@8
    .line 63
    :goto_8
    iget-object v1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@a
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@d
    move-result v1

    #@e
    if-ge v0, v1, :cond_4d

    #@10
    .line 64
    iget-object v1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@12
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v1

    #@16
    if-eqz v1, :cond_29

    #@18
    .line 70
    iget-object v2, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@1a
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    #@1d
    move-result v2

    #@1e
    sub-int/2addr v2, p1

    #@1f
    int-to-float v2, v2

    #@20
    add-float/2addr v2, p2

    #@21
    .line 72
    iget-object v3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    #@23
    invoke-interface {v3, v1, v2}, Landroidx/viewpager2/widget/ViewPager2$PageTransformer;->transformPage(Landroid/view/View;F)V

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_8

    #@29
    .line 66
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    #@2b
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@2d
    const/4 v1, 0x2

    #@2e
    new-array v1, v1, [Ljava/lang/Object;

    #@30
    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v0

    #@34
    aput-object v0, v1, p3

    #@36
    iget-object p3, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    #@38
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    #@3b
    move-result p3

    #@3c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3f
    move-result-object p3

    #@40
    const/4 v0, 0x1

    #@41
    aput-object p3, v1, v0

    #@43
    const-string p3, "LayoutManager returned a null child at pos %d/%d while transforming pages"

    #@45
    .line 66
    invoke-static {p2, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@48
    move-result-object p2

    #@49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4c
    throw p1

    #@4d
    :cond_4d
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    #@0
    return-void
.end method

.method setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .registers 2

    #@0
    .line 53
    iput-object p1, p0, Landroidx/viewpager2/widget/PageTransformerAdapter;->mPageTransformer:Landroidx/viewpager2/widget/ViewPager2$PageTransformer;

    #@2
    return-void
.end method
