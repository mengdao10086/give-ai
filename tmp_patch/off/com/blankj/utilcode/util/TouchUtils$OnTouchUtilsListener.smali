.class public abstract Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;
.super Ljava/lang/Object;
.source "TouchUtils.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/TouchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnTouchUtilsListener"
.end annotation


# static fields
.field private static final MIN_TAP_TIME:I = 0x3e8

.field private static final STATE_DOWN:I = 0x0

.field private static final STATE_MOVE:I = 0x1

.field private static final STATE_STOP:I = 0x2


# instance fields
.field private direction:I

.field private downX:I

.field private downY:I

.field private lastX:I

.field private lastY:I

.field private maximumFlingVelocity:I

.field private minimumFlingVelocity:I

.field private state:I

.field private touchSlop:I

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 62
    invoke-direct {p0, v0, v0}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->resetTouch(II)V

    #@7
    return-void
.end method

.method private resetTouch(II)V
    .registers 3

    #@0
    .line 66
    iput p1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->downX:I

    #@2
    .line 67
    iput p2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->downY:I

    #@4
    .line 68
    iput p1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastX:I

    #@6
    .line 69
    iput p2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastY:I

    #@8
    const/4 p1, 0x0

    #@9
    .line 70
    iput p1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->state:I

    #@b
    .line 71
    iput p1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->direction:I

    #@d
    .line 72
    iget-object p1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    #@f
    if-eqz p1, :cond_14

    #@11
    .line 73
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    #@14
    :cond_14
    return-void
.end method


# virtual methods
.method public abstract onDown(Landroid/view/View;IILandroid/view/MotionEvent;)Z
.end method

.method public abstract onMove(Landroid/view/View;IIIIIIILandroid/view/MotionEvent;)Z
.end method

.method public abstract onStop(Landroid/view/View;IIIIIIILandroid/view/MotionEvent;)Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    #@0
    .line 101
    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->touchSlop:I

    #@2
    if-nez v0, :cond_12

    #@4
    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->touchSlop:I

    #@12
    .line 104
    :cond_12
    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->maximumFlingVelocity:I

    #@14
    if-nez v0, :cond_24

    #@16
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@21
    move-result v0

    #@22
    iput v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->maximumFlingVelocity:I

    #@24
    .line 108
    :cond_24
    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->minimumFlingVelocity:I

    #@26
    if-nez v0, :cond_36

    #@28
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@2b
    move-result-object v0

    #@2c
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@33
    move-result v0

    #@34
    iput v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->minimumFlingVelocity:I

    #@36
    .line 112
    :cond_36
    iget-object v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    #@38
    if-nez v0, :cond_40

    #@3a
    .line 113
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@3d
    move-result-object v0

    #@3e
    iput-object v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    #@40
    .line 115
    :cond_40
    iget-object v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    #@42
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@45
    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_60

    #@4b
    const/4 v1, 0x1

    #@4c
    if-eq v0, v1, :cond_5b

    #@4e
    const/4 v1, 0x2

    #@4f
    if-eq v0, v1, :cond_56

    #@51
    const/4 v1, 0x3

    #@52
    if-eq v0, v1, :cond_5b

    #@54
    const/4 p1, 0x0

    #@55
    return p1

    #@56
    .line 121
    :cond_56
    invoke-virtual {p0, p1, p2}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->onUtilsMove(Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@59
    move-result p1

    #@5a
    return p1

    #@5b
    .line 124
    :cond_5b
    invoke-virtual {p0, p1, p2}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->onUtilsStop(Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@5e
    move-result p1

    #@5f
    return p1

    #@60
    .line 119
    :cond_60
    invoke-virtual {p0, p1, p2}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->onUtilsDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@63
    move-result p1

    #@64
    return p1
.end method

.method public onUtilsDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    #@0
    .line 132
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    #@3
    move-result v0

    #@4
    float-to-int v0, v0

    #@5
    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    #@8
    move-result v1

    #@9
    float-to-int v1, v1

    #@a
    .line 135
    invoke-direct {p0, v0, v1}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->resetTouch(II)V

    #@d
    const/4 v2, 0x1

    #@e
    .line 136
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    #@11
    .line 137
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->onDown(Landroid/view/View;IILandroid/view/MotionEvent;)Z

    #@14
    move-result p1

    #@15
    return p1
.end method

.method public onUtilsMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15

    #@0
    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    #@3
    move-result v0

    #@4
    float-to-int v0, v0

    #@5
    .line 142
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    #@8
    move-result v1

    #@9
    float-to-int v11, v1

    #@a
    .line 144
    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->downX:I

    #@c
    const/4 v2, -0x1

    #@d
    const/4 v3, 0x1

    #@e
    if-ne v1, v2, :cond_16

    #@10
    .line 146
    invoke-direct {p0, v0, v11}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->resetTouch(II)V

    #@13
    .line 147
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    #@16
    .line 150
    :cond_16
    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->state:I

    #@18
    if-eq v1, v3, :cond_62

    #@1a
    .line 151
    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastX:I

    #@1c
    sub-int v1, v0, v1

    #@1e
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@21
    move-result v1

    #@22
    iget v2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->touchSlop:I

    #@24
    if-ge v1, v2, :cond_33

    #@26
    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastY:I

    #@28
    sub-int v1, v11, v1

    #@2a
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@2d
    move-result v1

    #@2e
    iget v2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->touchSlop:I

    #@30
    if-ge v1, v2, :cond_33

    #@32
    return v3

    #@33
    .line 154
    :cond_33
    iput v3, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->state:I

    #@35
    .line 155
    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastX:I

    #@37
    sub-int v1, v0, v1

    #@39
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    #@3c
    move-result v1

    #@3d
    iget v2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastY:I

    #@3f
    sub-int v2, v11, v2

    #@41
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    #@44
    move-result v2

    #@45
    if-lt v1, v2, :cond_54

    #@47
    .line 156
    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastX:I

    #@49
    sub-int v1, v0, v1

    #@4b
    if-gez v1, :cond_50

    #@4d
    .line 157
    iput v3, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->direction:I

    #@4f
    goto :goto_62

    #@50
    :cond_50
    const/4 v1, 0x4

    #@51
    .line 159
    iput v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->direction:I

    #@53
    goto :goto_62

    #@54
    .line 162
    :cond_54
    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastY:I

    #@56
    sub-int v1, v11, v1

    #@58
    if-gez v1, :cond_5e

    #@5a
    const/4 v1, 0x2

    #@5b
    .line 163
    iput v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->direction:I

    #@5d
    goto :goto_62

    #@5e
    :cond_5e
    const/16 v1, 0x8

    #@60
    .line 165
    iput v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->direction:I

    #@62
    .line 170
    :cond_62
    :goto_62
    iget v3, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->direction:I

    #@64
    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastX:I

    #@66
    sub-int v6, v0, v1

    #@68
    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastY:I

    #@6a
    sub-int v7, v11, v1

    #@6c
    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->downX:I

    #@6e
    sub-int v8, v0, v1

    #@70
    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->downY:I

    #@72
    sub-int v9, v11, v1

    #@74
    move-object v1, p0

    #@75
    move-object v2, p1

    #@76
    move v4, v0

    #@77
    move v5, v11

    #@78
    move-object v10, p2

    #@79
    .line 171
    invoke-virtual/range {v1 .. v10}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->onMove(Landroid/view/View;IIIIIIILandroid/view/MotionEvent;)Z

    #@7c
    move-result p1

    #@7d
    .line 172
    iput v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastX:I

    #@7f
    .line 173
    iput v11, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->lastY:I

    #@81
    return p1
.end method

.method public onUtilsStop(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    #@0
    .line 178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    #@3
    move-result v0

    #@4
    float-to-int v4, v0

    #@5
    .line 179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    #@8
    move-result v0

    #@9
    float-to-int v5, v0

    #@a
    .line 183
    iget-object v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    #@c
    const/4 v1, 0x0

    #@d
    if-eqz v0, :cond_42

    #@f
    .line 184
    iget v2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->maximumFlingVelocity:I

    #@11
    int-to-float v2, v2

    #@12
    const/16 v3, 0x3e8

    #@14
    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@17
    .line 185
    iget-object v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    #@19
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    #@1c
    move-result v0

    #@1d
    float-to-int v0, v0

    #@1e
    .line 186
    iget-object v2, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    #@20
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    #@23
    move-result v2

    #@24
    float-to-int v2, v2

    #@25
    .line 187
    iget-object v3, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    #@27
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    #@2a
    .line 188
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@2d
    move-result v3

    #@2e
    iget v6, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->minimumFlingVelocity:I

    #@30
    if-ge v3, v6, :cond_33

    #@32
    move v0, v1

    #@33
    .line 191
    :cond_33
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    #@36
    move-result v3

    #@37
    iget v6, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->minimumFlingVelocity:I

    #@39
    if-ge v3, v6, :cond_3c

    #@3b
    move v2, v1

    #@3c
    :cond_3c
    const/4 v3, 0x0

    #@3d
    .line 194
    iput-object v3, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->velocityTracker:Landroid/view/VelocityTracker;

    #@3f
    move v8, v0

    #@40
    move v9, v2

    #@41
    goto :goto_44

    #@42
    :cond_42
    move v8, v1

    #@43
    move v9, v8

    #@44
    .line 197
    :goto_44
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    #@47
    .line 198
    iget v3, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->direction:I

    #@49
    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->downX:I

    #@4b
    sub-int v6, v4, v0

    #@4d
    iget v0, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->downY:I

    #@4f
    sub-int v7, v5, v0

    #@51
    move-object v1, p0

    #@52
    move-object v2, p1

    #@53
    move-object v10, p2

    #@54
    invoke-virtual/range {v1 .. v10}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->onStop(Landroid/view/View;IIIIIIILandroid/view/MotionEvent;)Z

    #@57
    move-result v0

    #@58
    .line 200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@5b
    move-result v1

    #@5c
    const/4 v2, 0x1

    #@5d
    if-ne v1, v2, :cond_79

    #@5f
    .line 201
    iget v1, p0, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->state:I

    #@61
    if-nez v1, :cond_79

    #@63
    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    #@66
    move-result-wide v1

    #@67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    #@6a
    move-result-wide v3

    #@6b
    sub-long/2addr v1, v3

    #@6c
    const-wide/16 v3, 0x3e8

    #@6e
    cmp-long p2, v1, v3

    #@70
    if-gtz p2, :cond_76

    #@72
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    #@75
    goto :goto_79

    #@76
    .line 205
    :cond_76
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    #@79
    :cond_79
    :goto_79
    const/4 p1, -0x1

    #@7a
    .line 210
    invoke-direct {p0, p1, p1}, Lcom/blankj/utilcode/util/TouchUtils$OnTouchUtilsListener;->resetTouch(II)V

    #@7d
    return v0
.end method
