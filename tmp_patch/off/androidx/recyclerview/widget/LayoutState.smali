.class Landroidx/recyclerview/widget/LayoutState;
.super Ljava/lang/Object;
.source "LayoutState.java"


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mEndLine:I

.field mInfinite:Z

.field mItemDirection:I

.field mLayoutDirection:I

.field mRecycle:Z

.field mStartLine:I

.field mStopInFocusable:Z


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 40
    iput-boolean v0, p0, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    #@6
    const/4 v0, 0x0

    #@7
    .line 67
    iput v0, p0, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    #@9
    .line 72
    iput v0, p0, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    #@b
    return-void
.end method


# virtual methods
.method hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .registers 3

    #@0
    .line 88
    iget v0, p0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    #@2
    if-ltz v0, :cond_c

    #@4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    #@7
    move-result p1

    #@8
    if-ge v0, p1, :cond_c

    #@a
    const/4 p1, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    :goto_d
    return p1
.end method

.method next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;
    .registers 4

    #@0
    .line 98
    iget v0, p0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    #@2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    .line 99
    iget v0, p0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    #@8
    iget v1, p0, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    #@a
    add-int/2addr v0, v1

    #@b
    iput v0, p0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    #@d
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "LayoutState{mAvailable="

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget v1, p0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ", mCurrentPosition="

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget v1, p0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string v1, ", mItemDirection="

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget v1, p0, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string v1, ", mLayoutDirection="

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget v1, p0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    const-string v1, ", mStartLine="

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    iget v1, p0, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    const-string v1, ", mEndLine="

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    iget v1, p0, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    const/16 v1, 0x7d

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    return-object v0
.end method
