.class Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatableTouchDelegate"
.end annotation


# instance fields
.field private final mActualBounds:Landroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private final mDelegateView:Landroid/view/View;

.field private final mSlop:I

.field private final mSlopBounds:Landroid/graphics/Rect;

.field private final mTargetBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V
    .registers 5

    #@0
    .line 1776
    invoke-direct {p0, p1, p3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    #@3
    .line 1777
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    #@11
    .line 1778
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@16
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    #@18
    .line 1779
    new-instance v0, Landroid/graphics/Rect;

    #@1a
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@1d
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    #@1f
    .line 1780
    new-instance v0, Landroid/graphics/Rect;

    #@21
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@24
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    #@26
    .line 1781
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@29
    .line 1782
    iput-object p3, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    #@2b
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    #@0
    .line 1794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v0

    #@4
    float-to-int v0, v0

    #@5
    .line 1795
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@8
    move-result v1

    #@9
    float-to-int v1, v1

    #@a
    .line 1800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@d
    move-result v2

    #@e
    const/4 v3, 0x2

    #@f
    const/4 v4, 0x0

    #@10
    const/4 v5, 0x1

    #@11
    if-eqz v2, :cond_33

    #@13
    if-eq v2, v5, :cond_20

    #@15
    if-eq v2, v3, :cond_20

    #@17
    const/4 v6, 0x3

    #@18
    if-eq v2, v6, :cond_1b

    #@1a
    goto :goto_3f

    #@1b
    .line 1817
    :cond_1b
    iget-boolean v2, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    #@1d
    .line 1818
    iput-boolean v4, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    #@1f
    goto :goto_2f

    #@20
    .line 1809
    :cond_20
    iget-boolean v2, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    #@22
    if-eqz v2, :cond_2f

    #@24
    .line 1811
    iget-object v6, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    #@26
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    #@29
    move-result v6

    #@2a
    if-nez v6, :cond_2f

    #@2c
    move v5, v2

    #@2d
    move v2, v4

    #@2e
    goto :goto_41

    #@2f
    :cond_2f
    :goto_2f
    move v7, v5

    #@30
    move v5, v2

    #@31
    move v2, v7

    #@32
    goto :goto_41

    #@33
    .line 1802
    :cond_33
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    #@35
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_3f

    #@3b
    .line 1803
    iput-boolean v5, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    #@3d
    move v2, v5

    #@3e
    goto :goto_41

    #@3f
    :cond_3f
    :goto_3f
    move v2, v5

    #@40
    move v5, v4

    #@41
    :goto_41
    if-eqz v5, :cond_76

    #@43
    if-eqz v2, :cond_61

    #@45
    .line 1822
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    #@47
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    #@4a
    move-result v2

    #@4b
    if-nez v2, :cond_61

    #@4d
    .line 1826
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    #@4f
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@52
    move-result v0

    #@53
    div-int/2addr v0, v3

    #@54
    int-to-float v0, v0

    #@55
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    #@57
    .line 1827
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    #@5a
    move-result v1

    #@5b
    div-int/2addr v1, v3

    #@5c
    int-to-float v1, v1

    #@5d
    .line 1826
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    #@60
    goto :goto_70

    #@61
    .line 1830
    :cond_61
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    #@63
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@65
    sub-int/2addr v0, v2

    #@66
    int-to-float v0, v0

    #@67
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    #@69
    iget v2, v2, Landroid/graphics/Rect;->top:I

    #@6b
    sub-int/2addr v1, v2

    #@6c
    int-to-float v1, v1

    #@6d
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    #@70
    .line 1833
    :goto_70
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Landroid/view/View;

    #@72
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@75
    move-result v4

    #@76
    :cond_76
    return v4
.end method

.method public setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5

    #@0
    .line 1786
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 1787
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@a
    .line 1788
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Landroid/graphics/Rect;

    #@c
    iget v0, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    #@e
    neg-int v1, v0

    #@f
    neg-int v0, v0

    #@10
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    #@13
    .line 1789
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Landroid/graphics/Rect;

    #@15
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@18
    return-void
.end method
