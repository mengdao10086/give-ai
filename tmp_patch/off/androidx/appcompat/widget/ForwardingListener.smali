.class public abstract Landroidx/appcompat/widget/ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;,
        Landroidx/appcompat/widget/ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    #@0
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x2

    #@4
    new-array v1, v0, [I

    #@6
    .line 66
    iput-object v1, p0, Landroidx/appcompat/widget/ForwardingListener;->mTmpLocation:[I

    #@8
    .line 69
    iput-object p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@a
    const/4 v1, 0x1

    #@b
    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    #@e
    .line 71
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@11
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@14
    move-result-object p1

    #@15
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@1c
    move-result p1

    #@1d
    int-to-float p1, p1

    #@1e
    iput p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mScaledTouchSlop:F

    #@20
    .line 74
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    #@23
    move-result p1

    #@24
    iput p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mTapTimeout:I

    #@26
    .line 77
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    #@29
    move-result v1

    #@2a
    add-int/2addr p1, v1

    #@2b
    div-int/2addr p1, v0

    #@2c
    iput p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mLongPressTimeout:I

    #@2e
    return-void
.end method

.method private clearCallbacks()V
    .registers 3

    #@0
    .line 216
    iget-object v0, p0, Landroidx/appcompat/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 217
    iget-object v1, p0, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@6
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@9
    .line 220
    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@b
    if-eqz v0, :cond_12

    #@d
    .line 221
    iget-object v1, p0, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@f
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@12
    :cond_12
    return-void
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .registers 6

    #@0
    .line 259
    iget-object v0, p0, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@2
    .line 260
    invoke-virtual {p0}, Landroidx/appcompat/widget/ForwardingListener;->getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v1, :cond_44

    #@9
    .line 261
    invoke-interface {v1}, Landroidx/appcompat/view/menu/ShowableListMenu;->isShowing()Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_10

    #@f
    goto :goto_44

    #@10
    .line 265
    :cond_10
    invoke-interface {v1}, Landroidx/appcompat/view/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/appcompat/widget/DropDownListView;

    #@16
    if-eqz v1, :cond_44

    #@18
    .line 266
    invoke-virtual {v1}, Landroidx/appcompat/widget/DropDownListView;->isShown()Z

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_1f

    #@1e
    goto :goto_44

    #@1f
    .line 271
    :cond_1f
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@22
    move-result-object v3

    #@23
    .line 272
    invoke-direct {p0, v0, v3}, Landroidx/appcompat/widget/ForwardingListener;->toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@26
    .line 273
    invoke-direct {p0, v1, v3}, Landroidx/appcompat/widget/ForwardingListener;->toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    #@29
    .line 276
    iget v0, p0, Landroidx/appcompat/widget/ForwardingListener;->mActivePointerId:I

    #@2b
    invoke-virtual {v1, v3, v0}, Landroidx/appcompat/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    #@2e
    move-result v0

    #@2f
    .line 277
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    #@32
    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@35
    move-result p1

    #@36
    const/4 v1, 0x1

    #@37
    if-eq p1, v1, :cond_3e

    #@39
    const/4 v3, 0x3

    #@3a
    if-eq p1, v3, :cond_3e

    #@3c
    move p1, v1

    #@3d
    goto :goto_3f

    #@3e
    :cond_3e
    move p1, v2

    #@3f
    :goto_3f
    if-eqz v0, :cond_44

    #@41
    if-eqz p1, :cond_44

    #@43
    move v2, v1

    #@44
    :cond_44
    :goto_44
    return v2
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .registers 7

    #@0
    .line 170
    iget-object v0, p0, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@2
    .line 171
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 175
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_41

    #@10
    const/4 v3, 0x1

    #@11
    if-eq v1, v3, :cond_3d

    #@13
    const/4 v4, 0x2

    #@14
    if-eq v1, v4, :cond_1a

    #@16
    const/4 p1, 0x3

    #@17
    if-eq v1, p1, :cond_3d

    #@19
    goto :goto_6d

    #@1a
    .line 191
    :cond_1a
    iget v1, p0, Landroidx/appcompat/widget/ForwardingListener;->mActivePointerId:I

    #@1c
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@1f
    move-result v1

    #@20
    if-ltz v1, :cond_6d

    #@22
    .line 193
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    #@25
    move-result v4

    #@26
    .line 194
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    #@29
    move-result p1

    #@2a
    .line 197
    iget v1, p0, Landroidx/appcompat/widget/ForwardingListener;->mScaledTouchSlop:F

    #@2c
    invoke-static {v0, v4, p1, v1}, Landroidx/appcompat/widget/ForwardingListener;->pointInView(Landroid/view/View;FFF)Z

    #@2f
    move-result p1

    #@30
    if-nez p1, :cond_6d

    #@32
    .line 198
    invoke-direct {p0}, Landroidx/appcompat/widget/ForwardingListener;->clearCallbacks()V

    #@35
    .line 201
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@38
    move-result-object p1

    #@39
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@3c
    return v3

    #@3d
    .line 208
    :cond_3d
    invoke-direct {p0}, Landroidx/appcompat/widget/ForwardingListener;->clearCallbacks()V

    #@40
    goto :goto_6d

    #@41
    .line 178
    :cond_41
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@44
    move-result p1

    #@45
    iput p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mActivePointerId:I

    #@47
    .line 180
    iget-object p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@49
    if-nez p1, :cond_52

    #@4b
    .line 181
    new-instance p1, Landroidx/appcompat/widget/ForwardingListener$DisallowIntercept;

    #@4d
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ForwardingListener$DisallowIntercept;-><init>(Landroidx/appcompat/widget/ForwardingListener;)V

    #@50
    iput-object p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@52
    .line 183
    :cond_52
    iget-object p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@54
    iget v1, p0, Landroidx/appcompat/widget/ForwardingListener;->mTapTimeout:I

    #@56
    int-to-long v3, v1

    #@57
    invoke-virtual {v0, p1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@5a
    .line 185
    iget-object p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    #@5c
    if-nez p1, :cond_65

    #@5e
    .line 186
    new-instance p1, Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;

    #@60
    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ForwardingListener$TriggerLongPress;-><init>(Landroidx/appcompat/widget/ForwardingListener;)V

    #@63
    iput-object p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    #@65
    .line 188
    :cond_65
    iget-object p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    #@67
    iget v1, p0, Landroidx/appcompat/widget/ForwardingListener;->mLongPressTimeout:I

    #@69
    int-to-long v3, v1

    #@6a
    invoke-virtual {v0, p1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@6d
    :cond_6d
    :goto_6d
    return v2
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .registers 6

    #@0
    neg-float v0, p3

    #@1
    cmpl-float v1, p1, v0

    #@3
    if-ltz v1, :cond_29

    #@5
    cmpl-float v0, p2, v0

    #@7
    if-ltz v0, :cond_29

    #@9
    .line 289
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    #@10
    move-result v1

    #@11
    sub-int/2addr v0, v1

    #@12
    int-to-float v0, v0

    #@13
    add-float/2addr v0, p3

    #@14
    cmpg-float p1, p1, v0

    #@16
    if-gez p1, :cond_29

    #@18
    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    #@1b
    move-result p1

    #@1c
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    #@1f
    move-result p0

    #@20
    sub-int/2addr p1, p0

    #@21
    int-to-float p0, p1

    #@22
    add-float/2addr p0, p3

    #@23
    cmpg-float p0, p2, p0

    #@25
    if-gez p0, :cond_29

    #@27
    const/4 p0, 0x1

    #@28
    goto :goto_2a

    #@29
    :cond_29
    const/4 p0, 0x0

    #@2a
    :goto_2a
    return p0
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    #@0
    .line 309
    iget-object v0, p0, Landroidx/appcompat/widget/ForwardingListener;->mTmpLocation:[I

    #@2
    .line 310
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@5
    const/4 p1, 0x0

    #@6
    .line 311
    aget p1, v0, p1

    #@8
    int-to-float p1, p1

    #@9
    const/4 v1, 0x1

    #@a
    aget v0, v0, v1

    #@c
    int-to-float v0, v0

    #@d
    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@10
    return v1
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    #@0
    .line 298
    iget-object v0, p0, Landroidx/appcompat/widget/ForwardingListener;->mTmpLocation:[I

    #@2
    .line 299
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@5
    const/4 p1, 0x0

    #@6
    .line 300
    aget p1, v0, p1

    #@8
    neg-int p1, p1

    #@9
    int-to-float p1, p1

    #@a
    const/4 v1, 0x1

    #@b
    aget v0, v0, v1

    #@d
    neg-int v0, v0

    #@e
    int-to-float v0, v0

    #@f
    invoke-virtual {p2, p1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@12
    return v1
.end method


# virtual methods
.method public abstract getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
.end method

.method protected onForwardingStarted()Z
    .registers 3

    #@0
    .line 139
    invoke-virtual {p0}, Landroidx/appcompat/widget/ForwardingListener;->getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 140
    invoke-interface {v0}, Landroidx/appcompat/view/menu/ShowableListMenu;->isShowing()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_f

    #@c
    .line 141
    invoke-interface {v0}, Landroidx/appcompat/view/menu/ShowableListMenu;->show()V

    #@f
    :cond_f
    const/4 v0, 0x1

    #@10
    return v0
.end method

.method protected onForwardingStopped()Z
    .registers 3

    #@0
    .line 156
    invoke-virtual {p0}, Landroidx/appcompat/widget/ForwardingListener;->getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_f

    #@6
    .line 157
    invoke-interface {v0}, Landroidx/appcompat/view/menu/ShowableListMenu;->isShowing()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_f

    #@c
    .line 158
    invoke-interface {v0}, Landroidx/appcompat/view/menu/ShowableListMenu;->dismiss()V

    #@f
    :cond_f
    const/4 v0, 0x1

    #@10
    return v0
.end method

.method onLongPress()V
    .registers 12

    #@0
    .line 226
    invoke-direct {p0}, Landroidx/appcompat/widget/ForwardingListener;->clearCallbacks()V

    #@3
    .line 228
    iget-object v0, p0, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@5
    .line 229
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_36

    #@b
    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_12

    #@11
    goto :goto_36

    #@12
    .line 235
    :cond_12
    invoke-virtual {p0}, Landroidx/appcompat/widget/ForwardingListener;->onForwardingStarted()Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_19

    #@18
    return-void

    #@19
    .line 240
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1c
    move-result-object v1

    #@1d
    const/4 v2, 0x1

    #@1e
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@21
    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@24
    move-result-wide v5

    #@25
    const/4 v7, 0x3

    #@26
    const/4 v8, 0x0

    #@27
    const/4 v9, 0x0

    #@28
    const/4 v10, 0x0

    #@29
    move-wide v3, v5

    #@2a
    .line 244
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@2d
    move-result-object v1

    #@2e
    .line 245
    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@31
    .line 246
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    #@34
    .line 248
    iput-boolean v2, p0, Landroidx/appcompat/widget/ForwardingListener;->mForwarding:Z

    #@36
    :cond_36
    :goto_36
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13

    #@0
    .line 94
    iget-boolean p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mForwarding:Z

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    if-eqz p1, :cond_17

    #@6
    .line 97
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    #@9
    move-result p2

    #@a
    if-nez p2, :cond_15

    #@c
    invoke-virtual {p0}, Landroidx/appcompat/widget/ForwardingListener;->onForwardingStopped()Z

    #@f
    move-result p2

    #@10
    if-nez p2, :cond_13

    #@12
    goto :goto_15

    #@13
    :cond_13
    move p2, v1

    #@14
    goto :goto_3d

    #@15
    :cond_15
    :goto_15
    move p2, v0

    #@16
    goto :goto_3d

    #@17
    .line 99
    :cond_17
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    #@1a
    move-result p2

    #@1b
    if-eqz p2, :cond_25

    #@1d
    invoke-virtual {p0}, Landroidx/appcompat/widget/ForwardingListener;->onForwardingStarted()Z

    #@20
    move-result p2

    #@21
    if-eqz p2, :cond_25

    #@23
    move p2, v0

    #@24
    goto :goto_26

    #@25
    :cond_25
    move p2, v1

    #@26
    :goto_26
    if-eqz p2, :cond_3d

    #@28
    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2b
    move-result-wide v4

    #@2c
    const/4 v6, 0x3

    #@2d
    const/4 v7, 0x0

    #@2e
    const/4 v8, 0x0

    #@2f
    const/4 v9, 0x0

    #@30
    move-wide v2, v4

    #@31
    .line 104
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@34
    move-result-object v2

    #@35
    .line 106
    iget-object v3, p0, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@37
    invoke-virtual {v3, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@3a
    .line 107
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    #@3d
    .line 111
    :cond_3d
    :goto_3d
    iput-boolean p2, p0, Landroidx/appcompat/widget/ForwardingListener;->mForwarding:Z

    #@3f
    if-nez p2, :cond_45

    #@41
    if-eqz p1, :cond_44

    #@43
    goto :goto_45

    #@44
    :cond_44
    move v0, v1

    #@45
    :cond_45
    :goto_45
    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    #@0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    .line 121
    iput-boolean p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mForwarding:Z

    #@3
    const/4 p1, -0x1

    #@4
    .line 122
    iput p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mActivePointerId:I

    #@6
    .line 124
    iget-object p1, p0, Landroidx/appcompat/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    #@8
    if-eqz p1, :cond_f

    #@a
    .line 125
    iget-object v0, p0, Landroidx/appcompat/widget/ForwardingListener;->mSrc:Landroid/view/View;

    #@c
    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@f
    :cond_f
    return-void
.end method
