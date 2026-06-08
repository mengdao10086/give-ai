.class public Landroidx/core/widget/ListViewAutoScrollHelper;
.super Landroidx/core/widget/AutoScrollHelper;
.source "ListViewAutoScrollHelper.java"


# instance fields
.field private final mTarget:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .registers 2

    #@0
    .line 33
    invoke-direct {p0, p1}, Landroidx/core/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    #@3
    .line 35
    iput-object p1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    #@5
    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public canTargetScrollVertically(I)Z
    .registers 9

    #@0
    .line 51
    iget-object v0, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    #@2
    .line 52
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 57
    :cond_a
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    #@d
    move-result v3

    #@e
    .line 58
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    #@11
    move-result v4

    #@12
    add-int v5, v4, v3

    #@14
    const/4 v6, 0x1

    #@15
    if-lez p1, :cond_29

    #@17
    if-lt v5, v1, :cond_38

    #@19
    sub-int/2addr v3, v6

    #@1a
    .line 64
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@1d
    move-result-object p1

    #@1e
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@21
    move-result p1

    #@22
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    #@25
    move-result v0

    #@26
    if-gt p1, v0, :cond_38

    #@28
    return v2

    #@29
    :cond_29
    if-gez p1, :cond_39

    #@2b
    if-gtz v4, :cond_38

    #@2d
    .line 72
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@30
    move-result-object p1

    #@31
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@34
    move-result p1

    #@35
    if-ltz p1, :cond_38

    #@37
    return v2

    #@38
    :cond_38
    return v6

    #@39
    :cond_39
    return v2
.end method

.method public scrollTargetBy(II)V
    .registers 3

    #@0
    .line 40
    iget-object p1, p0, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    #@2
    invoke-static {p1, p2}, Landroidx/core/widget/ListViewCompat;->scrollListBy(Landroid/widget/ListView;I)V

    #@5
    return-void
.end method
