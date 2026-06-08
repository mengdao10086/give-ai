.class public Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private previousScrollState:I

.field private scrollState:I

.field private final tabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/tabs/TabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;)V
    .registers 3

    #@0
    .line 3501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3502
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    #@a
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 3

    #@0
    .line 3507
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    #@2
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    #@4
    .line 3508
    iput p1, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    #@6
    .line 3509
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    #@8
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    #@e
    if-eqz p1, :cond_15

    #@10
    .line 3511
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    #@12
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->updateViewPagerScrollState(I)V

    #@15
    :cond_15
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 9

    #@0
    .line 3518
    iget-object p3, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object p3

    #@6
    check-cast p3, Lcom/google/android/material/tabs/TabLayout;

    #@8
    if-eqz p3, :cond_23

    #@a
    .line 3522
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x2

    #@e
    const/4 v3, 0x1

    #@f
    if-ne v0, v2, :cond_18

    #@11
    iget v4, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    #@13
    if-ne v4, v3, :cond_16

    #@15
    goto :goto_18

    #@16
    :cond_16
    move v4, v1

    #@17
    goto :goto_19

    #@18
    :cond_18
    :goto_18
    move v4, v3

    #@19
    :goto_19
    if-ne v0, v2, :cond_1f

    #@1b
    .line 3527
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    #@1d
    if-eqz v0, :cond_20

    #@1f
    :cond_1f
    move v1, v3

    #@20
    .line 3529
    :cond_20
    invoke-virtual {p3, p1, p2, v4, v1}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZZ)V

    #@23
    :cond_23
    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    #@0
    .line 3535
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->tabLayoutRef:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    #@8
    if-eqz v0, :cond_2c

    #@a
    .line 3537
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    #@d
    move-result v1

    #@e
    if-eq v1, p1, :cond_2c

    #@10
    .line 3538
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    #@13
    move-result v1

    #@14
    if-ge p1, v1, :cond_2c

    #@16
    .line 3541
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    #@18
    if-eqz v1, :cond_24

    #@1a
    const/4 v2, 0x2

    #@1b
    if-ne v1, v2, :cond_22

    #@1d
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    #@1f
    if-nez v1, :cond_22

    #@21
    goto :goto_24

    #@22
    :cond_22
    const/4 v1, 0x0

    #@23
    goto :goto_25

    #@24
    :cond_24
    :goto_24
    const/4 v1, 0x1

    #@25
    .line 3545
    :goto_25
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    #@28
    move-result-object p1

    #@29
    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    #@2c
    :cond_2c
    return-void
.end method

.method reset()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 3550
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->scrollState:I

    #@3
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$TabLayoutOnPageChangeListener;->previousScrollState:I

    #@5
    return-void
.end method
