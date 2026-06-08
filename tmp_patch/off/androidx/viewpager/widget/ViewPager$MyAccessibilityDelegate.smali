.class Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .registers 2

    #@0
    .line 3037
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@2
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    #@5
    return-void
.end method

.method private canScroll()Z
    .registers 3

    #@0
    .line 3087
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@2
    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@4
    if-eqz v0, :cond_12

    #@6
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@8
    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@a
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x1

    #@f
    if-le v0, v1, :cond_12

    #@11
    goto :goto_13

    #@12
    :cond_12
    const/4 v1, 0x0

    #@13
    :goto_13
    return v1
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    #@0
    .line 3041
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    .line 3042
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    #@5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    #@c
    .line 3043
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    #@f
    move-result p1

    #@10
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    #@13
    .line 3044
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    #@16
    move-result p1

    #@17
    const/16 v0, 0x1000

    #@19
    if-ne p1, v0, :cond_3a

    #@1b
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@1d
    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@1f
    if-eqz p1, :cond_3a

    #@21
    .line 3045
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@23
    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    #@25
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    #@28
    move-result p1

    #@29
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    #@2c
    .line 3046
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@2e
    iget p1, p1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@30
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    #@33
    .line 3047
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@35
    iget p1, p1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@37
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    #@3a
    :cond_3a
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    #@0
    .line 3053
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    #@3
    .line 3054
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    #@5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    #@c
    .line 3055
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    #@f
    move-result p1

    #@10
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    #@13
    .line 3056
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@15
    const/4 v0, 0x1

    #@16
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    #@19
    move-result p1

    #@1a
    if-eqz p1, :cond_21

    #@1c
    const/16 p1, 0x1000

    #@1e
    .line 3057
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@21
    .line 3059
    :cond_21
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@23
    const/4 v0, -0x1

    #@24
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    #@27
    move-result p1

    #@28
    if-eqz p1, :cond_2f

    #@2a
    const/16 p1, 0x2000

    #@2c
    .line 3060
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    #@2f
    :cond_2f
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    #@0
    .line 3066
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    #@3
    move-result p1

    #@4
    const/4 p3, 0x1

    #@5
    if-eqz p1, :cond_8

    #@7
    return p3

    #@8
    :cond_8
    const/16 p1, 0x1000

    #@a
    const/4 v0, 0x0

    #@b
    if-eq p2, p1, :cond_25

    #@d
    const/16 p1, 0x2000

    #@f
    if-eq p2, p1, :cond_12

    #@11
    return v0

    #@12
    .line 3077
    :cond_12
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@14
    const/4 p2, -0x1

    #@15
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    #@18
    move-result p1

    #@19
    if-eqz p1, :cond_24

    #@1b
    .line 3078
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@1d
    iget p2, p1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@1f
    sub-int/2addr p2, p3

    #@20
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    #@23
    return p3

    #@24
    :cond_24
    return v0

    #@25
    .line 3071
    :cond_25
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@27
    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    #@2a
    move-result p1

    #@2b
    if-eqz p1, :cond_36

    #@2d
    .line 3072
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    #@2f
    iget p2, p1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    #@31
    add-int/2addr p2, p3

    #@32
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    #@35
    return p3

    #@36
    :cond_36
    return v0
.end method
