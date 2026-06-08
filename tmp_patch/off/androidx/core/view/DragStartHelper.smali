.class public Landroidx/core/view/DragStartHelper;
.super Ljava/lang/Object;
.source "DragStartHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/DragStartHelper$OnDragStartListener;
    }
.end annotation


# instance fields
.field private mDragging:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

.field private final mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/DragStartHelper$OnDragStartListener;)V
    .registers 4

    #@0
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 183
    new-instance v0, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda0;

    #@5
    invoke-direct {v0, p0}, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/core/view/DragStartHelper;)V

    #@8
    iput-object v0, p0, Landroidx/core/view/DragStartHelper;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    #@a
    .line 186
    new-instance v0, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda1;

    #@c
    invoke-direct {v0, p0}, Landroidx/core/view/DragStartHelper$$ExternalSyntheticLambda1;-><init>(Landroidx/core/view/DragStartHelper;)V

    #@f
    iput-object v0, p0, Landroidx/core/view/DragStartHelper;->mTouchListener:Landroid/view/View$OnTouchListener;

    #@11
    .line 99
    iput-object p1, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    #@13
    .line 100
    iput-object p2, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    #@15
    return-void
.end method


# virtual methods
.method public attach()V
    .registers 3

    #@0
    .line 109
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    #@2
    iget-object v1, p0, Landroidx/core/view/DragStartHelper;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    #@4
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@7
    .line 110
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    #@9
    iget-object v1, p0, Landroidx/core/view/DragStartHelper;->mTouchListener:Landroid/view/View$OnTouchListener;

    #@b
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@e
    return-void
.end method

.method public detach()V
    .registers 3

    #@0
    .line 119
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@6
    .line 120
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mView:Landroid/view/View;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@b
    return-void
.end method

.method public getTouchPosition(Landroid/graphics/Point;)V
    .registers 4

    #@0
    .line 180
    iget v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    #@2
    iget v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    #@7
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    #@0
    .line 172
    iget-object v0, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    #@2
    invoke-interface {v0, p1, p0}, Landroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    #@0
    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@3
    move-result v0

    #@4
    float-to-int v0, v0

    #@5
    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@8
    move-result v1

    #@9
    float-to-int v1, v1

    #@a
    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@d
    move-result v2

    #@e
    const/4 v3, 0x0

    #@f
    if-eqz v2, :cond_49

    #@11
    const/4 v4, 0x1

    #@12
    if-eq v2, v4, :cond_46

    #@14
    const/4 v5, 0x2

    #@15
    if-eq v2, v5, :cond_1b

    #@17
    const/4 p1, 0x3

    #@18
    if-eq v2, p1, :cond_46

    #@1a
    goto :goto_4d

    #@1b
    :cond_1b
    const/16 v2, 0x2002

    #@1d
    .line 140
    invoke-static {p2, v2}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_4d

    #@23
    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    #@26
    move-result p2

    #@27
    and-int/2addr p2, v4

    #@28
    if-nez p2, :cond_2b

    #@2a
    goto :goto_4d

    #@2b
    .line 145
    :cond_2b
    iget-boolean p2, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    #@2d
    if-eqz p2, :cond_30

    #@2f
    goto :goto_4d

    #@30
    .line 149
    :cond_30
    iget p2, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    #@32
    if-ne p2, v0, :cond_39

    #@34
    iget p2, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    #@36
    if-ne p2, v1, :cond_39

    #@38
    goto :goto_4d

    #@39
    .line 153
    :cond_39
    iput v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    #@3b
    .line 154
    iput v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    #@3d
    .line 155
    iget-object p2, p0, Landroidx/core/view/DragStartHelper;->mListener:Landroidx/core/view/DragStartHelper$OnDragStartListener;

    #@3f
    invoke-interface {p2, p1, p0}, Landroidx/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Landroidx/core/view/DragStartHelper;)Z

    #@42
    move-result p1

    #@43
    iput-boolean p1, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    #@45
    return p1

    #@46
    .line 160
    :cond_46
    iput-boolean v3, p0, Landroidx/core/view/DragStartHelper;->mDragging:Z

    #@48
    goto :goto_4d

    #@49
    .line 135
    :cond_49
    iput v0, p0, Landroidx/core/view/DragStartHelper;->mLastTouchX:I

    #@4b
    .line 136
    iput v1, p0, Landroidx/core/view/DragStartHelper;->mLastTouchY:I

    #@4d
    :cond_4d
    :goto_4d
    return v3
.end method
