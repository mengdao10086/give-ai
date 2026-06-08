.class public Landroidx/recyclerview/widget/BatchingListUpdateCallback;
.super Ljava/lang/Object;
.source "BatchingListUpdateCallback.java"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# static fields
.field private static final TYPE_ADD:I = 0x1

.field private static final TYPE_CHANGE:I = 0x3

.field private static final TYPE_NONE:I = 0x0

.field private static final TYPE_REMOVE:I = 0x2


# instance fields
.field mLastEventCount:I

.field mLastEventPayload:Ljava/lang/Object;

.field mLastEventPosition:I

.field mLastEventType:I

.field final mWrapped:Landroidx/recyclerview/widget/ListUpdateCallback;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .registers 3

    #@0
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 41
    iput v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    #@6
    const/4 v0, -0x1

    #@7
    .line 42
    iput v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    #@9
    .line 43
    iput v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    #@b
    const/4 v0, 0x0

    #@c
    .line 44
    iput-object v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    #@e
    .line 47
    iput-object p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Landroidx/recyclerview/widget/ListUpdateCallback;

    #@10
    return-void
.end method


# virtual methods
.method public dispatchLastEvent()V
    .registers 5

    #@0
    .line 56
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const/4 v1, 0x1

    #@6
    if-eq v0, v1, :cond_25

    #@8
    const/4 v1, 0x2

    #@9
    if-eq v0, v1, :cond_1b

    #@b
    const/4 v1, 0x3

    #@c
    if-eq v0, v1, :cond_f

    #@e
    goto :goto_2e

    #@f
    .line 67
    :cond_f
    iget-object v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Landroidx/recyclerview/widget/ListUpdateCallback;

    #@11
    iget v1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    #@13
    iget v2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    #@15
    iget-object v3, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    #@17
    invoke-interface {v0, v1, v2, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    #@1a
    goto :goto_2e

    #@1b
    .line 64
    :cond_1b
    iget-object v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Landroidx/recyclerview/widget/ListUpdateCallback;

    #@1d
    iget v1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    #@1f
    iget v2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    #@21
    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    #@24
    goto :goto_2e

    #@25
    .line 61
    :cond_25
    iget-object v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Landroidx/recyclerview/widget/ListUpdateCallback;

    #@27
    iget v1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    #@29
    iget v2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    #@2b
    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    #@2e
    :goto_2e
    const/4 v0, 0x0

    #@2f
    .line 70
    iput-object v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    #@31
    const/4 v0, 0x0

    #@32
    .line 71
    iput v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    #@34
    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .registers 9

    #@0
    .line 110
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_26

    #@5
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    #@7
    iget v2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    #@9
    add-int v3, v0, v2

    #@b
    if-gt p1, v3, :cond_26

    #@d
    add-int v3, p1, p2

    #@f
    if-lt v3, v0, :cond_26

    #@11
    iget-object v4, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    #@13
    if-ne v4, p3, :cond_26

    #@15
    add-int/2addr v2, v0

    #@16
    .line 115
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@19
    move-result p1

    #@1a
    iput p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    #@1c
    .line 116
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result p1

    #@20
    iget p2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    #@22
    sub-int/2addr p1, p2

    #@23
    iput p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    #@25
    return-void

    #@26
    .line 119
    :cond_26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    #@29
    .line 120
    iput p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    #@2b
    .line 121
    iput p2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    #@2d
    .line 122
    iput-object p3, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPayload:Ljava/lang/Object;

    #@2f
    .line 123
    iput v1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    #@31
    return-void
.end method

.method public onInserted(II)V
    .registers 7

    #@0
    .line 76
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_19

    #@5
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    #@7
    if-lt p1, v0, :cond_19

    #@9
    iget v2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    #@b
    add-int v3, v0, v2

    #@d
    if-gt p1, v3, :cond_19

    #@f
    add-int/2addr v2, p2

    #@10
    .line 78
    iput v2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    #@12
    .line 79
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@15
    move-result p1

    #@16
    iput p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    #@18
    return-void

    #@19
    .line 82
    :cond_19
    invoke-virtual {p0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    #@1c
    .line 83
    iput p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    #@1e
    .line 84
    iput p2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    #@20
    .line 85
    iput v1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    #@22
    return-void
.end method

.method public onMoved(II)V
    .registers 4

    #@0
    .line 104
    invoke-virtual {p0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    #@3
    .line 105
    iget-object v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mWrapped:Landroidx/recyclerview/widget/ListUpdateCallback;

    #@5
    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    #@8
    return-void
.end method

.method public onRemoved(II)V
    .registers 6

    #@0
    .line 90
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_15

    #@5
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    #@7
    if-lt v0, p1, :cond_15

    #@9
    add-int v2, p1, p2

    #@b
    if-gt v0, v2, :cond_15

    #@d
    .line 92
    iget v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    #@f
    add-int/2addr v0, p2

    #@10
    iput v0, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    #@12
    .line 93
    iput p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    #@14
    return-void

    #@15
    .line 96
    :cond_15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    #@18
    .line 97
    iput p1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventPosition:I

    #@1a
    .line 98
    iput p2, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventCount:I

    #@1c
    .line 99
    iput v1, p0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->mLastEventType:I

    #@1e
    return-void
.end method
