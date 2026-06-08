.class Landroidx/recyclerview/widget/FastScroller;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FastScroller.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;,
        Landroidx/recyclerview/widget/FastScroller$AnimatorListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_STATE_FADING_IN:I = 0x1

.field private static final ANIMATION_STATE_FADING_OUT:I = 0x3

.field private static final ANIMATION_STATE_IN:I = 0x2

.field private static final ANIMATION_STATE_OUT:I = 0x0

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_X:I = 0x1

.field private static final DRAG_Y:I = 0x2

.field private static final EMPTY_STATE_SET:[I

.field private static final HIDE_DELAY_AFTER_DRAGGING_MS:I = 0x4b0

.field private static final HIDE_DELAY_AFTER_VISIBLE_MS:I = 0x5dc

.field private static final HIDE_DURATION_MS:I = 0x1f4

.field private static final PRESSED_STATE_SET:[I

.field private static final SCROLLBAR_FULL_OPAQUE:I = 0xff

.field private static final SHOW_DURATION_MS:I = 0x1f4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_HIDDEN:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1


# instance fields
.field mAnimationState:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field mHorizontalDragX:F

.field private final mHorizontalRange:[I

.field mHorizontalThumbCenterX:I

.field private final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mHorizontalThumbHeight:I

.field mHorizontalThumbWidth:I

.field private final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalTrackHeight:I

.field private final mMargin:I

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScrollbarMinimumRange:I

.field final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field mVerticalDragY:F

.field private final mVerticalRange:[I

.field mVerticalThumbCenterY:I

.field final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mVerticalThumbHeight:I

.field private final mVerticalThumbWidth:I

.field final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const v1, 0x10100a7

    #@6
    const/4 v2, 0x0

    #@7
    aput v1, v0, v2

    #@9
    .line 74
    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    #@b
    new-array v0, v2, [I

    #@d
    .line 75
    sput-object v0, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    #@f
    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .registers 12

    #@0
    .line 141
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 104
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    #@6
    .line 105
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    #@8
    .line 112
    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    #@a
    .line 113
    iput-boolean v0, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    #@c
    .line 114
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    #@e
    .line 115
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    #@10
    const/4 v1, 0x2

    #@11
    new-array v2, v1, [I

    #@13
    .line 117
    iput-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    #@15
    new-array v2, v1, [I

    #@17
    .line 118
    iput-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    #@19
    new-array v1, v1, [F

    #@1b
    .line 119
    fill-array-data v1, :array_84

    #@1e
    .line 120
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    #@21
    move-result-object v1

    #@22
    iput-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    #@24
    .line 121
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    #@26
    .line 123
    new-instance v0, Landroidx/recyclerview/widget/FastScroller$1;

    #@28
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/FastScroller$1;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    #@2b
    iput-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    #@2d
    .line 129
    new-instance v0, Landroidx/recyclerview/widget/FastScroller$2;

    #@2f
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/FastScroller$2;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    #@32
    iput-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    #@34
    .line 142
    iput-object p2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    #@36
    .line 143
    iput-object p3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@38
    .line 144
    iput-object p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    #@3a
    .line 145
    iput-object p5, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@3c
    .line 146
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    #@3f
    move-result v0

    #@40
    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    #@43
    move-result v0

    #@44
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    #@46
    .line 147
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@49
    move-result v0

    #@4a
    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    #@4d
    move-result v0

    #@4e
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    #@50
    .line 149
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    #@53
    move-result p4

    #@54
    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    #@57
    move-result p4

    #@58
    iput p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    #@5a
    .line 151
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5d
    move-result p4

    #@5e
    invoke-static {p6, p4}, Ljava/lang/Math;->max(II)I

    #@61
    move-result p4

    #@62
    iput p4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    #@64
    .line 152
    iput p7, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    #@66
    .line 153
    iput p8, p0, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    #@68
    const/16 p4, 0xff

    #@6a
    .line 154
    invoke-virtual {p2, p4}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    #@6d
    .line 155
    invoke-virtual {p3, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@70
    .line 157
    new-instance p2, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;

    #@72
    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/FastScroller$AnimatorListener;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    #@75
    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@78
    .line 158
    new-instance p2, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;

    #@7a
    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/FastScroller$AnimatorUpdater;-><init>(Landroidx/recyclerview/widget/FastScroller;)V

    #@7d
    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    #@80
    .line 160
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/FastScroller;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    #@83
    return-void

    #@84
    :array_84
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private cancelHide()V
    .registers 3

    #@0
    .line 258
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7
    return-void
.end method

.method private destroyCallbacks()V
    .registers 3

    #@0
    .line 183
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    #@5
    .line 184
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@7
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    #@a
    .line 185
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@c
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    #@e
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    #@11
    .line 186
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    #@14
    return-void
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .registers 8

    #@0
    .line 316
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    #@2
    .line 318
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    #@4
    sub-int/2addr v0, v1

    #@5
    .line 319
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    #@7
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    #@9
    div-int/lit8 v4, v3, 0x2

    #@b
    sub-int/2addr v2, v4

    #@c
    .line 320
    iget-object v4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    #@e
    const/4 v5, 0x0

    #@f
    invoke-virtual {v4, v5, v5, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    #@12
    .line 321
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    #@16
    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackHeight:I

    #@18
    .line 322
    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1b
    int-to-float v1, v0

    #@1c
    const/4 v3, 0x0

    #@1d
    .line 324
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@20
    .line 325
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@22
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@25
    int-to-float v1, v2

    #@26
    .line 326
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@29
    .line 327
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    #@2b
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    #@2e
    neg-int v1, v2

    #@2f
    int-to-float v1, v1

    #@30
    neg-int v0, v0

    #@31
    int-to-float v0, v0

    #@32
    .line 328
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@35
    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .registers 8

    #@0
    .line 291
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    #@2
    .line 293
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    #@4
    sub-int/2addr v0, v1

    #@5
    .line 294
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    #@7
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    #@9
    div-int/lit8 v4, v3, 0x2

    #@b
    sub-int/2addr v2, v4

    #@c
    .line 295
    iget-object v4, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    #@e
    const/4 v5, 0x0

    #@f
    invoke-virtual {v4, v5, v5, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    #@12
    .line 296
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@14
    iget v3, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackWidth:I

    #@16
    iget v4, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    #@18
    .line 297
    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@1b
    .line 299
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->isLayoutRTL()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_46

    #@21
    .line 300
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@23
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@26
    .line 301
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    #@28
    int-to-float v0, v0

    #@29
    int-to-float v1, v2

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@2d
    const/high16 v0, -0x40800000    # -1.0f

    #@2f
    const/high16 v1, 0x3f800000    # 1.0f

    #@31
    .line 302
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@34
    .line 303
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    #@36
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    #@39
    .line 304
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@3c
    .line 305
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    #@3e
    neg-int v0, v0

    #@3f
    int-to-float v0, v0

    #@40
    neg-int v1, v2

    #@41
    int-to-float v1, v1

    #@42
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@45
    goto :goto_60

    #@46
    :cond_46
    int-to-float v1, v0

    #@47
    const/4 v3, 0x0

    #@48
    .line 307
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    #@4b
    .line 308
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@4d
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@50
    int-to-float v1, v2

    #@51
    .line 309
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@54
    .line 310
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    #@56
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    #@59
    neg-int v0, v0

    #@5a
    int-to-float v0, v0

    #@5b
    neg-int v1, v2

    #@5c
    int-to-float v1, v1

    #@5d
    .line 311
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    #@60
    :goto_60
    return-void
.end method

.method private getHorizontalRange()[I
    .registers 4

    #@0
    .line 542
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalRange:[I

    #@2
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    #@4
    const/4 v2, 0x0

    #@5
    aput v1, v0, v2

    #@7
    .line 543
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    #@9
    sub-int/2addr v2, v1

    #@a
    const/4 v1, 0x1

    #@b
    aput v2, v0, v1

    #@d
    return-object v0
.end method

.method private getVerticalRange()[I
    .registers 4

    #@0
    .line 533
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalRange:[I

    #@2
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mMargin:I

    #@4
    const/4 v2, 0x0

    #@5
    aput v1, v0, v2

    #@7
    .line 534
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    #@9
    sub-int/2addr v2, v1

    #@a
    const/4 v1, 0x1

    #@b
    aput v2, v0, v1

    #@d
    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .registers 10

    #@0
    .line 461
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->getHorizontalRange()[I

    #@3
    move-result-object v3

    #@4
    const/4 v7, 0x0

    #@5
    .line 462
    aget v0, v3, v7

    #@7
    int-to-float v0, v0

    #@8
    const/4 v1, 0x1

    #@9
    aget v1, v3, v1

    #@b
    int-to-float v1, v1

    #@c
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    #@f
    move-result p1

    #@10
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    #@13
    move-result p1

    #@14
    .line 463
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    #@16
    int-to-float v0, v0

    #@17
    sub-float/2addr v0, p1

    #@18
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@1b
    move-result v0

    #@1c
    const/high16 v1, 0x40000000    # 2.0f

    #@1e
    cmpg-float v0, v0, v1

    #@20
    if-gez v0, :cond_23

    #@22
    return-void

    #@23
    .line 467
    :cond_23
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    #@25
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@27
    .line 468
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    #@2a
    move-result v4

    #@2b
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2d
    .line 469
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    #@30
    move-result v5

    #@31
    iget v6, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    #@33
    move-object v0, p0

    #@34
    move v2, p1

    #@35
    .line 467
    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/FastScroller;->scrollTo(FF[IIII)I

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_40

    #@3b
    .line 471
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@3d
    invoke-virtual {v1, v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    #@40
    .line 474
    :cond_40
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    #@42
    return-void
.end method

.method private isLayoutRTL()Z
    .registers 3

    #@0
    .line 216
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-ne v0, v1, :cond_a

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 v1, 0x0

    #@b
    :goto_b
    return v1
.end method

.method private resetHideDelay(I)V
    .registers 6

    #@0
    .line 262
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    #@3
    .line 263
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@5
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    #@7
    int-to-long v2, p1

    #@8
    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    #@b
    return-void
.end method

.method private scrollTo(FF[IIII)I
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    .line 479
    aget v0, p3, v0

    #@3
    const/4 v1, 0x0

    #@4
    aget p3, p3, v1

    #@6
    sub-int/2addr v0, p3

    #@7
    if-nez v0, :cond_a

    #@9
    return v1

    #@a
    :cond_a
    sub-float/2addr p2, p1

    #@b
    int-to-float p1, v0

    #@c
    div-float/2addr p2, p1

    #@d
    sub-int/2addr p4, p6

    #@e
    int-to-float p1, p4

    #@f
    mul-float/2addr p2, p1

    #@10
    float-to-int p1, p2

    #@11
    add-int/2addr p5, p1

    #@12
    if-ge p5, p4, :cond_17

    #@14
    if-ltz p5, :cond_17

    #@16
    return p1

    #@17
    :cond_17
    return v1
.end method

.method private setupCallbacks()V
    .registers 3

    #@0
    .line 177
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    #@5
    .line 178
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@7
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    #@a
    .line 179
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@c
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    #@e
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    #@11
    return-void
.end method

.method private verticalScrollTo(F)V
    .registers 10

    #@0
    .line 446
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->getVerticalRange()[I

    #@3
    move-result-object v3

    #@4
    const/4 v7, 0x0

    #@5
    .line 447
    aget v0, v3, v7

    #@7
    int-to-float v0, v0

    #@8
    const/4 v1, 0x1

    #@9
    aget v1, v3, v1

    #@b
    int-to-float v1, v1

    #@c
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    #@f
    move-result p1

    #@10
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    #@13
    move-result p1

    #@14
    .line 448
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    #@16
    int-to-float v0, v0

    #@17
    sub-float/2addr v0, p1

    #@18
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@1b
    move-result v0

    #@1c
    const/high16 v1, 0x40000000    # 2.0f

    #@1e
    cmpg-float v0, v0, v1

    #@20
    if-gez v0, :cond_23

    #@22
    return-void

    #@23
    .line 451
    :cond_23
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    #@25
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@27
    .line 452
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    #@2a
    move-result v4

    #@2b
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2d
    .line 453
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    #@30
    move-result v5

    #@31
    iget v6, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    #@33
    move-object v0, p0

    #@34
    move v2, p1

    #@35
    .line 451
    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/FastScroller;->scrollTo(FF[IIII)I

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_40

    #@3b
    .line 455
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@3d
    invoke-virtual {v1, v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    #@40
    .line 457
    :cond_40
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    #@42
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    #@0
    .line 164
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    if-ne v0, p1, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    if-eqz v0, :cond_a

    #@7
    .line 168
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->destroyCallbacks()V

    #@a
    .line 170
    :cond_a
    iput-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@c
    if-eqz p1, :cond_11

    #@e
    .line 172
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->setupCallbacks()V

    #@11
    :cond_11
    return-void
.end method

.method getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 516
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    #@2
    return-object v0
.end method

.method getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 511
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 526
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    #@2
    return-object v0
.end method

.method getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 521
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method hide(I)V
    .registers 7

    #@0
    .line 244
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    #@2
    const/4 v1, 0x2

    #@3
    const/4 v2, 0x1

    #@4
    if-eq v0, v2, :cond_9

    #@6
    if-eq v0, v1, :cond_e

    #@8
    goto :goto_33

    #@9
    .line 246
    :cond_9
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    #@b
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    #@e
    :cond_e
    const/4 v0, 0x3

    #@f
    .line 249
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    #@11
    .line 250
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    #@13
    new-array v1, v1, [F

    #@15
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Ljava/lang/Float;

    #@1b
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    #@1e
    move-result v3

    #@1f
    const/4 v4, 0x0

    #@20
    aput v3, v1, v4

    #@22
    const/4 v3, 0x0

    #@23
    aput v3, v1, v2

    #@25
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    #@28
    .line 251
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    #@2a
    int-to-long v1, p1

    #@2b
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@2e
    .line 252
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    #@30
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    #@33
    :goto_33
    return-void
.end method

.method public isDragging()Z
    .registers 3

    #@0
    .line 220
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    return v0
.end method

.method isPointInsideHorizontalThumb(FF)Z
    .registers 5

    #@0
    .line 504
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    #@2
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbHeight:I

    #@4
    sub-int/2addr v0, v1

    #@5
    int-to-float v0, v0

    #@6
    cmpl-float p2, p2, v0

    #@8
    if-ltz p2, :cond_21

    #@a
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    #@c
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    #@e
    div-int/lit8 v1, v0, 0x2

    #@10
    sub-int v1, p2, v1

    #@12
    int-to-float v1, v1

    #@13
    cmpl-float v1, p1, v1

    #@15
    if-ltz v1, :cond_21

    #@17
    div-int/lit8 v0, v0, 0x2

    #@19
    add-int/2addr p2, v0

    #@1a
    int-to-float p2, p2

    #@1b
    cmpg-float p1, p1, p2

    #@1d
    if-gtz p1, :cond_21

    #@1f
    const/4 p1, 0x1

    #@20
    goto :goto_22

    #@21
    :cond_21
    const/4 p1, 0x0

    #@22
    :goto_22
    return p1
.end method

.method isPointInsideVerticalThumb(FF)Z
    .registers 5

    #@0
    .line 496
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->isLayoutRTL()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_10

    #@6
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    #@8
    div-int/lit8 v0, v0, 0x2

    #@a
    int-to-float v0, v0

    #@b
    cmpg-float p1, p1, v0

    #@d
    if-gtz p1, :cond_31

    #@f
    goto :goto_1a

    #@10
    :cond_10
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    #@12
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbWidth:I

    #@14
    sub-int/2addr v0, v1

    #@15
    int-to-float v0, v0

    #@16
    cmpl-float p1, p1, v0

    #@18
    if-ltz p1, :cond_31

    #@1a
    :goto_1a
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    #@1c
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    #@1e
    div-int/lit8 v1, v0, 0x2

    #@20
    sub-int v1, p1, v1

    #@22
    int-to-float v1, v1

    #@23
    cmpl-float v1, p2, v1

    #@25
    if-ltz v1, :cond_31

    #@27
    div-int/lit8 v0, v0, 0x2

    #@29
    add-int/2addr p1, v0

    #@2a
    int-to-float p1, p1

    #@2b
    cmpg-float p1, p2, p1

    #@2d
    if-gtz p1, :cond_31

    #@2f
    const/4 p1, 0x1

    #@30
    goto :goto_32

    #@31
    :cond_31
    const/4 p1, 0x0

    #@32
    :goto_32
    return p1
.end method

.method isVisible()Z
    .registers 3

    #@0
    .line 224
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_6

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v1, 0x0

    #@7
    :goto_7
    return v1
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4

    #@0
    .line 268
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    #@2
    iget-object p3, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@4
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@7
    move-result p3

    #@8
    if-ne p2, p3, :cond_28

    #@a
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    #@c
    iget-object p3, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@e
    .line 269
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@11
    move-result p3

    #@12
    if-eq p2, p3, :cond_15

    #@14
    goto :goto_28

    #@15
    .line 280
    :cond_15
    iget p2, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    #@17
    if-eqz p2, :cond_27

    #@19
    .line 281
    iget-boolean p2, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    #@1b
    if-eqz p2, :cond_20

    #@1d
    .line 282
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    #@20
    .line 284
    :cond_20
    iget-boolean p2, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    #@22
    if-eqz p2, :cond_27

    #@24
    .line 285
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    #@27
    :cond_27
    return-void

    #@28
    .line 270
    :cond_28
    :goto_28
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@2d
    move-result p1

    #@2e
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    #@30
    .line 271
    iget-object p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@35
    move-result p1

    #@36
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    #@38
    const/4 p1, 0x0

    #@39
    .line 276
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    #@3c
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 8

    #@0
    .line 381
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x2

    #@4
    const/4 v2, 0x1

    #@5
    if-ne p1, v2, :cond_46

    #@7
    .line 382
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@a
    move-result p1

    #@b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@e
    move-result v3

    #@f
    invoke-virtual {p0, p1, v3}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    #@12
    move-result p1

    #@13
    .line 383
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@16
    move-result v3

    #@17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@1a
    move-result v4

    #@1b
    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    #@1e
    move-result v3

    #@1f
    .line 384
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@22
    move-result v4

    #@23
    if-nez v4, :cond_49

    #@25
    if-nez p1, :cond_29

    #@27
    if-eqz v3, :cond_49

    #@29
    :cond_29
    if-eqz v3, :cond_36

    #@2b
    .line 387
    iput v2, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    #@2d
    .line 388
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@30
    move-result p1

    #@31
    float-to-int p1, p1

    #@32
    int-to-float p1, p1

    #@33
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    #@35
    goto :goto_42

    #@36
    :cond_36
    if-eqz p1, :cond_42

    #@38
    .line 390
    iput v1, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    #@3a
    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@3d
    move-result p1

    #@3e
    float-to-int p1, p1

    #@3f
    int-to-float p1, p1

    #@40
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    #@42
    .line 394
    :cond_42
    :goto_42
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    #@45
    goto :goto_48

    #@46
    :cond_46
    if-ne p1, v1, :cond_49

    #@48
    :goto_48
    move v0, v2

    #@49
    :cond_49
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    #@0
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 7

    #@0
    .line 409
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    #@2
    if-nez p1, :cond_5

    #@4
    return-void

    #@5
    .line 413
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@8
    move-result p1

    #@9
    const/4 v0, 0x1

    #@a
    const/4 v1, 0x2

    #@b
    if-nez p1, :cond_46

    #@d
    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@10
    move-result p1

    #@11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@14
    move-result v2

    #@15
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    #@18
    move-result p1

    #@19
    .line 415
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@1c
    move-result v2

    #@1d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@20
    move-result v3

    #@21
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    #@24
    move-result v2

    #@25
    if-nez p1, :cond_29

    #@27
    if-eqz v2, :cond_7f

    #@29
    :cond_29
    if-eqz v2, :cond_36

    #@2b
    .line 418
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    #@2d
    .line 419
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@30
    move-result p1

    #@31
    float-to-int p1, p1

    #@32
    int-to-float p1, p1

    #@33
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    #@35
    goto :goto_42

    #@36
    :cond_36
    if-eqz p1, :cond_42

    #@38
    .line 421
    iput v1, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    #@3a
    .line 422
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@3d
    move-result p1

    #@3e
    float-to-int p1, p1

    #@3f
    int-to-float p1, p1

    #@40
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    #@42
    .line 424
    :cond_42
    :goto_42
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    #@45
    goto :goto_7f

    #@46
    .line 426
    :cond_46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@49
    move-result p1

    #@4a
    if-ne p1, v0, :cond_5c

    #@4c
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    #@4e
    if-ne p1, v1, :cond_5c

    #@50
    const/4 p1, 0x0

    #@51
    .line 427
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalDragY:F

    #@53
    .line 428
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalDragX:F

    #@55
    .line 429
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    #@58
    const/4 p1, 0x0

    #@59
    .line 430
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    #@5b
    goto :goto_7f

    #@5c
    .line 431
    :cond_5c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@5f
    move-result p1

    #@60
    if-ne p1, v1, :cond_7f

    #@62
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    #@64
    if-ne p1, v1, :cond_7f

    #@66
    .line 432
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->show()V

    #@69
    .line 433
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    #@6b
    if-ne p1, v0, :cond_74

    #@6d
    .line 434
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@70
    move-result p1

    #@71
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/FastScroller;->horizontalScrollTo(F)V

    #@74
    .line 436
    :cond_74
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mDragState:I

    #@76
    if-ne p1, v1, :cond_7f

    #@78
    .line 437
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@7b
    move-result p1

    #@7c
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/FastScroller;->verticalScrollTo(F)V

    #@7f
    :cond_7f
    :goto_7f
    return-void
.end method

.method requestRedraw()V
    .registers 2

    #@0
    .line 191
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    #@5
    return-void
.end method

.method setState(I)V
    .registers 5

    #@0
    const/4 v0, 0x2

    #@1
    if-ne p1, v0, :cond_11

    #@3
    .line 195
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    #@5
    if-eq v1, v0, :cond_11

    #@7
    .line 196
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    #@9
    sget-object v2, Landroidx/recyclerview/widget/FastScroller;->PRESSED_STATE_SET:[I

    #@b
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    #@e
    .line 197
    invoke-direct {p0}, Landroidx/recyclerview/widget/FastScroller;->cancelHide()V

    #@11
    :cond_11
    if-nez p1, :cond_17

    #@13
    .line 201
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->requestRedraw()V

    #@16
    goto :goto_1a

    #@17
    .line 203
    :cond_17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/FastScroller;->show()V

    #@1a
    .line 206
    :goto_1a
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    #@1c
    if-ne v1, v0, :cond_2d

    #@1e
    if-eq p1, v0, :cond_2d

    #@20
    .line 207
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    #@22
    sget-object v1, Landroidx/recyclerview/widget/FastScroller;->EMPTY_STATE_SET:[I

    #@24
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    #@27
    const/16 v0, 0x4b0

    #@29
    .line 208
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/FastScroller;->resetHideDelay(I)V

    #@2c
    goto :goto_35

    #@2d
    :cond_2d
    const/4 v0, 0x1

    #@2e
    if-ne p1, v0, :cond_35

    #@30
    const/16 v0, 0x5dc

    #@32
    .line 210
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/FastScroller;->resetHideDelay(I)V

    #@35
    .line 212
    :cond_35
    :goto_35
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    #@37
    return-void
.end method

.method public show()V
    .registers 6

    #@0
    .line 228
    iget v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    #@2
    if-eqz v0, :cond_d

    #@4
    const/4 v1, 0x3

    #@5
    if-eq v0, v1, :cond_8

    #@7
    goto :goto_3c

    #@8
    .line 230
    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    #@a
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    #@d
    :cond_d
    const/4 v0, 0x1

    #@e
    .line 233
    iput v0, p0, Landroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    #@10
    .line 234
    iget-object v1, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    #@12
    const/4 v2, 0x2

    #@13
    new-array v2, v2, [F

    #@15
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Ljava/lang/Float;

    #@1b
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    #@1e
    move-result v3

    #@1f
    const/4 v4, 0x0

    #@20
    aput v3, v2, v4

    #@22
    const/high16 v3, 0x3f800000    # 1.0f

    #@24
    aput v3, v2, v0

    #@26
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    #@29
    .line 235
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    #@2b
    const-wide/16 v1, 0x1f4

    #@2d
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    #@30
    .line 236
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    #@32
    const-wide/16 v1, 0x0

    #@34
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    #@37
    .line 237
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    #@39
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    #@3c
    :goto_3c
    return-void
.end method

.method updateScrollPosition(II)V
    .registers 11

    #@0
    .line 339
    iget-object v0, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    #@5
    move-result v0

    #@6
    .line 340
    iget v1, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewHeight:I

    #@8
    sub-int v2, v0, v1

    #@a
    const/4 v3, 0x0

    #@b
    const/4 v4, 0x1

    #@c
    if-lez v2, :cond_14

    #@e
    .line 341
    iget v2, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    #@10
    if-lt v1, v2, :cond_14

    #@12
    move v2, v4

    #@13
    goto :goto_15

    #@14
    :cond_14
    move v2, v3

    #@15
    :goto_15
    iput-boolean v2, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    #@17
    .line 344
    iget-object v2, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    #@19
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    #@1c
    move-result v2

    #@1d
    .line 345
    iget v5, p0, Landroidx/recyclerview/widget/FastScroller;->mRecyclerViewWidth:I

    #@1f
    sub-int v6, v2, v5

    #@21
    if-lez v6, :cond_29

    #@23
    .line 346
    iget v6, p0, Landroidx/recyclerview/widget/FastScroller;->mScrollbarMinimumRange:I

    #@25
    if-lt v5, v6, :cond_29

    #@27
    move v6, v4

    #@28
    goto :goto_2a

    #@29
    :cond_29
    move v6, v3

    #@2a
    :goto_2a
    iput-boolean v6, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    #@2c
    .line 349
    iget-boolean v7, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedVerticalScrollbar:Z

    #@2e
    if-nez v7, :cond_3a

    #@30
    if-nez v6, :cond_3a

    #@32
    .line 350
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    #@34
    if-eqz p1, :cond_39

    #@36
    .line 351
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    #@39
    :cond_39
    return-void

    #@3a
    :cond_3a
    const/high16 v3, 0x40000000    # 2.0f

    #@3c
    if-eqz v7, :cond_52

    #@3e
    int-to-float p2, p2

    #@3f
    int-to-float v6, v1

    #@40
    div-float v7, v6, v3

    #@42
    add-float/2addr p2, v7

    #@43
    mul-float/2addr v6, p2

    #@44
    int-to-float p2, v0

    #@45
    div-float/2addr v6, p2

    #@46
    float-to-int p2, v6

    #@47
    .line 358
    iput p2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbCenterY:I

    #@49
    mul-int p2, v1, v1

    #@4b
    .line 360
    div-int/2addr p2, v0

    #@4c
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    #@4f
    move-result p2

    #@50
    iput p2, p0, Landroidx/recyclerview/widget/FastScroller;->mVerticalThumbHeight:I

    #@52
    .line 364
    :cond_52
    iget-boolean p2, p0, Landroidx/recyclerview/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    #@54
    if-eqz p2, :cond_6a

    #@56
    int-to-float p1, p1

    #@57
    int-to-float p2, v5

    #@58
    div-float v0, p2, v3

    #@5a
    add-float/2addr p1, v0

    #@5b
    mul-float/2addr p2, p1

    #@5c
    int-to-float p1, v2

    #@5d
    div-float/2addr p2, p1

    #@5e
    float-to-int p1, p2

    #@5f
    .line 366
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbCenterX:I

    #@61
    mul-int p1, v5, v5

    #@63
    .line 368
    div-int/2addr p1, v2

    #@64
    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    #@67
    move-result p1

    #@68
    iput p1, p0, Landroidx/recyclerview/widget/FastScroller;->mHorizontalThumbWidth:I

    #@6a
    .line 372
    :cond_6a
    iget p1, p0, Landroidx/recyclerview/widget/FastScroller;->mState:I

    #@6c
    if-eqz p1, :cond_70

    #@6e
    if-ne p1, v4, :cond_73

    #@70
    .line 373
    :cond_70
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/FastScroller;->setState(I)V

    #@73
    :cond_73
    return-void
.end method
