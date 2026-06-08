.class public Landroidx/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/core/view/NestedScrollingChild3;
.implements Landroidx/core/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/NestedScrollView$Api21Impl;,
        Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;,
        Landroidx/core/widget/NestedScrollView$SavedState;,
        Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final DECELERATION_RATE:F

.field private static final DEFAULT_SMOOTH_SCROLL_DURATION:I = 0xfa

.field private static final FLING_DESTRETCH_FACTOR:F = 4.0f

.field private static final INFLEXION:F = 0.35f

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final SCROLLVIEW_STYLEABLE:[I

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final TAG:Ljava/lang/String; = "NestedScrollView"


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field public mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field public mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollerY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

.field private final mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private final mPhysicalCoeff:F

.field private mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    #@5
    .line 90
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    #@8
    move-result-wide v0

    #@9
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    #@e
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    #@11
    move-result-wide v2

    #@12
    div-double/2addr v0, v2

    #@13
    double-to-float v0, v0

    #@14
    sput v0, Landroidx/core/widget/NestedScrollView;->DECELERATION_RATE:F

    #@16
    .line 208
    new-instance v0, Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    #@18
    invoke-direct {v0}, Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    #@1b
    sput-object v0, Landroidx/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    #@1d
    const/4 v0, 0x1

    #@1e
    new-array v0, v0, [I

    #@20
    const/4 v1, 0x0

    #@21
    const v2, 0x101017a

    #@24
    aput v2, v0, v1

    #@26
    .line 210
    sput-object v0, Landroidx/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    #@28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 222
    invoke-direct {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 226
    sget v0, Landroidx/core/R$attr;->nestedScrollViewStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    #@0
    .line 231
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 124
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@a
    const/4 v0, 0x1

    #@b
    .line 148
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    #@d
    const/4 v1, 0x0

    #@e
    .line 149
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    #@10
    const/4 v2, 0x0

    #@11
    .line 156
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    #@13
    .line 163
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    #@15
    .line 179
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    #@17
    const/4 v2, -0x1

    #@18
    .line 189
    iput v2, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    #@1a
    const/4 v2, 0x2

    #@1b
    new-array v3, v2, [I

    #@1d
    .line 194
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    #@1f
    new-array v2, v2, [I

    #@21
    .line 195
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    #@23
    .line 232
    invoke-static {p1, p2}, Landroidx/core/widget/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    #@26
    move-result-object v2

    #@27
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@29
    .line 233
    invoke-static {p1, p2}, Landroidx/core/widget/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    #@2c
    move-result-object v2

    #@2d
    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@2f
    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@36
    move-result-object v2

    #@37
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    #@39
    const/high16 v3, 0x43200000    # 160.0f

    #@3b
    mul-float/2addr v2, v3

    #@3c
    const v3, 0x43c10b3d

    #@3f
    mul-float/2addr v2, v3

    #@40
    const v3, 0x3f570a3d    # 0.84f

    #@43
    mul-float/2addr v2, v3

    #@44
    .line 236
    iput v2, p0, Landroidx/core/widget/NestedScrollView;->mPhysicalCoeff:F

    #@46
    .line 241
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->initScrollView()V

    #@49
    .line 243
    sget-object v2, Landroidx/core/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    #@4b
    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@4e
    move-result-object p1

    #@4f
    .line 246
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@52
    move-result p2

    #@53
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V

    #@56
    .line 248
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@59
    .line 250
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    #@5b
    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    #@5e
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    #@60
    .line 251
    new-instance p1, Landroidx/core/view/NestedScrollingChildHelper;

    #@62
    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    #@65
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@67
    .line 254
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    #@6a
    .line 256
    sget-object p1, Landroidx/core/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroidx/core/widget/NestedScrollView$AccessibilityDelegate;

    #@6c
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@6f
    return-void
.end method

.method private abortAnimatedScroll()V
    .registers 2

    #@0
    .line 1899
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@2
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    #@5
    const/4 v0, 0x1

    #@6
    .line 1900
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    #@9
    return-void
.end method

.method private canOverScroll()Z
    .registers 3

    #@0
    .line 1224
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eqz v0, :cond_11

    #@7
    if-ne v0, v1, :cond_10

    #@9
    .line 1226
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    #@c
    move-result v0

    #@d
    if-lez v0, :cond_10

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v1, 0x0

    #@11
    :cond_11
    :goto_11
    return v1
.end method

.method private canScroll()Z
    .registers 5

    #@0
    .line 565
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-lez v0, :cond_2c

    #@7
    .line 566
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 567
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    #@11
    .line 568
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@14
    move-result v0

    #@15
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@17
    add-int/2addr v0, v3

    #@18
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@1a
    add-int/2addr v0, v2

    #@1b
    .line 569
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    #@22
    move-result v3

    #@23
    sub-int/2addr v2, v3

    #@24
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@27
    move-result v3

    #@28
    sub-int/2addr v2, v3

    #@29
    if-le v0, v2, :cond_2c

    #@2b
    const/4 v1, 0x1

    #@2c
    :cond_2c
    return v1
.end method

.method private static clamp(III)I
    .registers 4

    #@0
    if-ge p1, p2, :cond_c

    #@2
    if-gez p0, :cond_5

    #@4
    goto :goto_c

    #@5
    :cond_5
    add-int v0, p1, p0

    #@7
    if-le v0, p2, :cond_b

    #@9
    sub-int/2addr p2, p1

    #@a
    return p2

    #@b
    :cond_b
    return p0

    #@c
    :cond_c
    :goto_c
    const/4 p0, 0x0

    #@d
    return p0
.end method

.method private doScrollY(I)V
    .registers 4

    #@0
    if-eqz p1, :cond_e

    #@2
    .line 1593
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_b

    #@7
    .line 1594
    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    #@a
    goto :goto_e

    #@b
    .line 1596
    :cond_b
    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    #@e
    :cond_e
    :goto_e
    return-void
.end method

.method private edgeEffectFling(I)Z
    .registers 4

    #@0
    .line 1108
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@2
    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    cmpl-float v0, v0, v1

    #@9
    if-eqz v0, :cond_1e

    #@b
    .line 1109
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@d
    invoke-direct {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_19

    #@13
    .line 1110
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@15
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@18
    goto :goto_3a

    #@19
    :cond_19
    neg-int p1, p1

    #@1a
    .line 1112
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    #@1d
    goto :goto_3a

    #@1e
    .line 1114
    :cond_1e
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@20
    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    #@23
    move-result v0

    #@24
    cmpl-float v0, v0, v1

    #@26
    if-eqz v0, :cond_3c

    #@28
    .line 1115
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@2a
    neg-int p1, p1

    #@2b
    invoke-direct {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->shouldAbsorb(Landroid/widget/EdgeEffect;I)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_37

    #@31
    .line 1116
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@33
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@36
    goto :goto_3a

    #@37
    .line 1118
    :cond_37
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    #@3a
    :goto_3a
    const/4 p1, 0x1

    #@3b
    goto :goto_3d

    #@3c
    :cond_3c
    const/4 p1, 0x0

    #@3d
    :goto_3d
    return p1
.end method

.method private endDrag()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 2175
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    #@3
    .line 2177
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    #@6
    .line 2178
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    #@9
    .line 2180
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@b
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    #@e
    .line 2181
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@10
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    #@13
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 16

    #@0
    const/4 v0, 0x2

    #@1
    .line 1338
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    #@4
    move-result-object v0

    #@5
    .line 1350
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@8
    move-result v1

    #@9
    const/4 v2, 0x0

    #@a
    const/4 v3, 0x0

    #@b
    move v4, v3

    #@c
    move v5, v4

    #@d
    :goto_d
    if-ge v4, v1, :cond_53

    #@f
    .line 1352
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v6

    #@13
    check-cast v6, Landroid/view/View;

    #@15
    .line 1353
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    #@18
    move-result v7

    #@19
    .line 1354
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    #@1c
    move-result v8

    #@1d
    if-ge p2, v8, :cond_50

    #@1f
    if-ge v7, p3, :cond_50

    #@21
    const/4 v9, 0x1

    #@22
    if-ge p2, v7, :cond_28

    #@24
    if-ge v8, p3, :cond_28

    #@26
    move v10, v9

    #@27
    goto :goto_29

    #@28
    :cond_28
    move v10, v3

    #@29
    :goto_29
    if-nez v2, :cond_2e

    #@2b
    move-object v2, v6

    #@2c
    move v5, v10

    #@2d
    goto :goto_50

    #@2e
    :cond_2e
    if-eqz p1, :cond_36

    #@30
    .line 1370
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@33
    move-result v11

    #@34
    if-lt v7, v11, :cond_3e

    #@36
    :cond_36
    if-nez p1, :cond_40

    #@38
    .line 1371
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@3b
    move-result v7

    #@3c
    if-le v8, v7, :cond_40

    #@3e
    :cond_3e
    move v7, v9

    #@3f
    goto :goto_41

    #@40
    :cond_40
    move v7, v3

    #@41
    :goto_41
    if-eqz v5, :cond_48

    #@43
    if-eqz v10, :cond_50

    #@45
    if-eqz v7, :cond_50

    #@47
    goto :goto_4f

    #@48
    :cond_48
    if-eqz v10, :cond_4d

    #@4a
    move-object v2, v6

    #@4b
    move v5, v9

    #@4c
    goto :goto_50

    #@4d
    :cond_4d
    if-eqz v7, :cond_50

    #@4f
    :goto_4f
    move-object v2, v6

    #@50
    :cond_50
    :goto_50
    add-int/lit8 v4, v4, 0x1

    #@52
    goto :goto_d

    #@53
    :cond_53
    return-object v2
.end method

.method private getSplineFlingDistance(I)F
    .registers 10

    #@0
    .line 1100
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@3
    move-result p1

    #@4
    int-to-float p1, p1

    #@5
    const v0, 0x3eb33333    # 0.35f

    #@8
    mul-float/2addr p1, v0

    #@9
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->mPhysicalCoeff:F

    #@b
    const v1, 0x3c75c28f    # 0.015f

    #@e
    mul-float/2addr v0, v1

    #@f
    div-float/2addr p1, v0

    #@10
    float-to-double v2, p1

    #@11
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    #@14
    move-result-wide v2

    #@15
    .line 1101
    sget p1, Landroidx/core/widget/NestedScrollView;->DECELERATION_RATE:F

    #@17
    float-to-double v4, p1

    #@18
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    #@1a
    sub-double/2addr v4, v6

    #@1b
    .line 1102
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->mPhysicalCoeff:F

    #@1d
    mul-float/2addr v0, v1

    #@1e
    float-to-double v0, v0

    #@1f
    float-to-double v6, p1

    #@20
    div-double/2addr v6, v4

    #@21
    mul-double/2addr v6, v2

    #@22
    .line 1103
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    #@25
    move-result-wide v2

    #@26
    mul-double/2addr v0, v2

    #@27
    double-to-float p1, v0

    #@28
    return p1
.end method

.method private getVerticalScrollFactorCompat()F
    .registers 6

    #@0
    .line 1230
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v0, v0, v1

    #@5
    if-nez v0, :cond_35

    #@7
    .line 1231
    new-instance v0, Landroid/util/TypedValue;

    #@9
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@c
    .line 1232
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    #@f
    move-result-object v1

    #@10
    .line 1233
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@13
    move-result-object v2

    #@14
    const v3, 0x101004d

    #@17
    const/4 v4, 0x1

    #@18
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_2d

    #@1e
    .line 1239
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@25
    move-result-object v1

    #@26
    .line 1238
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    #@29
    move-result v0

    #@2a
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    #@2c
    goto :goto_35

    #@2d
    .line 1235
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2f
    const-string v1, "Expected theme to define listPreferredItemHeight."

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 1241
    :cond_35
    :goto_35
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->mVerticalScrollFactor:F

    #@37
    return v0
.end method

.method private inChild(II)Z
    .registers 7

    #@0
    .line 717
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-lez v0, :cond_2a

    #@7
    .line 718
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@a
    move-result v0

    #@b
    .line 719
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    .line 720
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@12
    move-result v3

    #@13
    sub-int/2addr v3, v0

    #@14
    if-lt p2, v3, :cond_2a

    #@16
    .line 721
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@19
    move-result v3

    #@1a
    sub-int/2addr v3, v0

    #@1b
    if-ge p2, v3, :cond_2a

    #@1d
    .line 722
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    #@20
    move-result p2

    #@21
    if-lt p1, p2, :cond_2a

    #@23
    .line 723
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    #@26
    move-result p2

    #@27
    if-ge p1, p2, :cond_2a

    #@29
    const/4 v1, 0x1

    #@2a
    :cond_2a
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    #@0
    .line 729
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 730
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    goto :goto_e

    #@b
    .line 732
    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    #@e
    :goto_e
    return-void
.end method

.method private initScrollView()V
    .registers 3

    #@0
    .line 502
    new-instance v0, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@b
    const/4 v0, 0x1

    #@c
    .line 503
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setFocusable(Z)V

    #@f
    const/high16 v0, 0x40000

    #@11
    .line 504
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    #@14
    const/4 v0, 0x0

    #@15
    .line 505
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setWillNotDraw(Z)V

    #@18
    .line 506
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@1f
    move-result-object v0

    #@20
    .line 507
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    #@23
    move-result v1

    #@24
    iput v1, p0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    #@26
    .line 508
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    #@29
    move-result v1

    #@2a
    iput v1, p0, Landroidx/core/widget/NestedScrollView;->mMinimumVelocity:I

    #@2c
    .line 509
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mMaximumVelocity:I

    #@32
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    #@0
    .line 737
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-nez v0, :cond_a

    #@4
    .line 738
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 1571
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@4
    move-result v1

    #@5
    invoke-direct {p0, p1, v0, v1}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    #@8
    move-result p1

    #@9
    xor-int/lit8 p1, p1, 0x1

    #@b
    return p1
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 2151
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@7
    move-result-object p0

    #@8
    .line 2152
    instance-of v1, p0, Landroid/view/ViewGroup;

    #@a
    if-eqz v1, :cond_15

    #@c
    check-cast p0, Landroid/view/View;

    #@e
    invoke-static {p0, p1}, Landroidx/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    #@11
    move-result p0

    #@12
    if-eqz p0, :cond_15

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    :goto_16
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 5

    #@0
    .line 1579
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@5
    .line 1580
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@7
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@a
    .line 1582
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@c
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@e
    add-int/2addr p1, p2

    #@f
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@12
    move-result v0

    #@13
    if-lt p1, v0, :cond_23

    #@15
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@17
    iget p1, p1, Landroid/graphics/Rect;->top:I

    #@19
    sub-int/2addr p1, p2

    #@1a
    .line 1583
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@1d
    move-result p2

    #@1e
    add-int/2addr p2, p3

    #@1f
    if-gt p1, p2, :cond_23

    #@21
    const/4 p1, 0x1

    #@22
    goto :goto_24

    #@23
    :cond_23
    const/4 p1, 0x0

    #@24
    :goto_24
    return p1
.end method

.method private onNestedScrollInternal(II[I)V
    .registers 14

    #@0
    .line 357
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    .line 358
    invoke-virtual {p0, v1, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    #@8
    .line 359
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@b
    move-result v1

    #@c
    sub-int v4, v1, v0

    #@e
    if-eqz p3, :cond_16

    #@10
    const/4 v0, 0x1

    #@11
    .line 362
    aget v1, p3, v0

    #@13
    add-int/2addr v1, v4

    #@14
    aput v1, p3, v0

    #@16
    :cond_16
    sub-int v6, p1, v4

    #@18
    .line 366
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@1a
    const/4 v3, 0x0

    #@1b
    const/4 v5, 0x0

    #@1c
    const/4 v7, 0x0

    #@1d
    move v8, p2

    #@1e
    move-object v9, p3

    #@1f
    invoke-virtual/range {v2 .. v9}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    #@22
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    #@0
    .line 1151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@3
    move-result v0

    #@4
    .line 1152
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@7
    move-result v1

    #@8
    .line 1153
    iget v2, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    #@a
    if-ne v1, v2, :cond_25

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    .line 1158
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@14
    move-result v1

    #@15
    float-to-int v1, v1

    #@16
    iput v1, p0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    #@18
    .line 1159
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@1b
    move-result p1

    #@1c
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    #@1e
    .line 1160
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@20
    if-eqz p1, :cond_25

    #@22
    .line 1161
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    #@25
    :cond_25
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    #@0
    .line 743
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 744
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    #@7
    const/4 v0, 0x0

    #@8
    .line 745
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@a
    :cond_a
    return-void
.end method

.method private releaseVerticalGlow(IF)I
    .registers 6

    #@0
    .line 1867
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    div-float/2addr p2, v0

    #@6
    int-to-float p1, p1

    #@7
    .line 1868
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@a
    move-result v0

    #@b
    int-to-float v0, v0

    #@c
    div-float/2addr p1, v0

    #@d
    .line 1869
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@f
    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    #@12
    move-result v0

    #@13
    const/4 v1, 0x0

    #@14
    cmpl-float v0, v0, v1

    #@16
    if-eqz v0, :cond_31

    #@18
    .line 1870
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@1a
    neg-float p1, p1

    #@1b
    invoke-static {v0, p1, p2}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    #@1e
    move-result p1

    #@1f
    neg-float p1, p1

    #@20
    .line 1871
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@22
    invoke-static {p2}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    #@25
    move-result p2

    #@26
    cmpl-float p2, p2, v1

    #@28
    if-nez p2, :cond_2f

    #@2a
    .line 1872
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@2c
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    #@2f
    :cond_2f
    :goto_2f
    move v1, p1

    #@30
    goto :goto_54

    #@31
    .line 1874
    :cond_31
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@33
    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    #@36
    move-result v0

    #@37
    cmpl-float v0, v0, v1

    #@39
    if-eqz v0, :cond_54

    #@3b
    .line 1875
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@3d
    const/high16 v2, 0x3f800000    # 1.0f

    #@3f
    sub-float/2addr v2, p2

    #@40
    invoke-static {v0, p1, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    #@43
    move-result p1

    #@44
    .line 1877
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@46
    invoke-static {p2}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    #@49
    move-result p2

    #@4a
    cmpl-float p2, p2, v1

    #@4c
    if-nez p2, :cond_2f

    #@4e
    .line 1878
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@50
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    #@53
    goto :goto_2f

    #@54
    .line 1881
    :cond_54
    :goto_54
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@57
    move-result p1

    #@58
    int-to-float p1, p1

    #@59
    mul-float/2addr v1, p1

    #@5a
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    #@5d
    move-result p1

    #@5e
    if-eqz p1, :cond_63

    #@60
    .line 1883
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->invalidate()V

    #@63
    :cond_63
    return p1
.end method

.method private runAnimatedScroll(Z)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-eqz p1, :cond_8

    #@3
    const/4 p1, 0x2

    #@4
    .line 1890
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    #@7
    goto :goto_b

    #@8
    .line 1892
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    #@b
    .line 1894
    :goto_b
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@e
    move-result p1

    #@f
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    #@11
    .line 1895
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@14
    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 10

    #@0
    .line 1487
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@3
    move-result v0

    #@4
    .line 1488
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    const/16 v2, 0x21

    #@b
    const/4 v3, 0x0

    #@c
    const/4 v4, 0x1

    #@d
    if-ne p1, v2, :cond_11

    #@f
    move v2, v4

    #@10
    goto :goto_12

    #@11
    :cond_11
    move v2, v3

    #@12
    .line 1492
    :goto_12
    invoke-direct {p0, v2, p2, p3}, Landroidx/core/widget/NestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    #@15
    move-result-object v5

    #@16
    if-nez v5, :cond_19

    #@18
    move-object v5, p0

    #@19
    :cond_19
    if-lt p2, v1, :cond_1e

    #@1b
    if-gt p3, v0, :cond_1e

    #@1d
    goto :goto_28

    #@1e
    :cond_1e
    if-eqz v2, :cond_22

    #@20
    sub-int/2addr p2, v1

    #@21
    goto :goto_24

    #@22
    :cond_22
    sub-int p2, p3, v0

    #@24
    .line 1501
    :goto_24
    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    #@27
    move v3, v4

    #@28
    .line 1504
    :goto_28
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    #@2b
    move-result-object p2

    #@2c
    if-eq v5, p2, :cond_31

    #@2e
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    #@31
    :cond_31
    return v3
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 3

    #@0
    .line 1909
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@5
    .line 1912
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@7
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@a
    .line 1914
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@c
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@f
    move-result p1

    #@10
    if-eqz p1, :cond_16

    #@12
    const/4 v0, 0x0

    #@13
    .line 1917
    invoke-virtual {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    #@16
    :cond_16
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 5

    #@0
    .line 1930
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@3
    move-result p1

    #@4
    const/4 v0, 0x0

    #@5
    if-eqz p1, :cond_9

    #@7
    const/4 v1, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    move v1, v0

    #@a
    :goto_a
    if-eqz v1, :cond_15

    #@c
    if-eqz p2, :cond_12

    #@e
    .line 1934
    invoke-virtual {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    #@11
    goto :goto_15

    #@12
    .line 1936
    :cond_12
    invoke-virtual {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    #@15
    :cond_15
    :goto_15
    return v1
.end method

.method private shouldAbsorb(Landroid/widget/EdgeEffect;I)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    if-lez p2, :cond_4

    #@3
    return v0

    #@4
    .line 1053
    :cond_4
    invoke-static {p1}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    #@7
    move-result p1

    #@8
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@b
    move-result v1

    #@c
    int-to-float v1, v1

    #@d
    mul-float/2addr p1, v1

    #@e
    neg-int p2, p2

    #@f
    .line 1056
    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;->getSplineFlingDistance(I)F

    #@12
    move-result p2

    #@13
    cmpg-float p1, p2, p1

    #@15
    if-gez p1, :cond_18

    #@17
    goto :goto_19

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    :goto_19
    return v0
.end method

.method private smoothScrollBy(IIIZ)V
    .registers 13

    #@0
    .line 1631
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 1635
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@a
    move-result-wide v0

    #@b
    iget-wide v2, p0, Landroidx/core/widget/NestedScrollView;->mLastScroll:J

    #@d
    sub-long/2addr v0, v2

    #@e
    const-wide/16 v2, 0xfa

    #@10
    cmp-long v0, v0, v2

    #@12
    if-lez v0, :cond_5a

    #@14
    const/4 p1, 0x0

    #@15
    .line 1637
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    .line 1638
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    #@1f
    .line 1639
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@22
    move-result v0

    #@23
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@25
    add-int/2addr v0, v2

    #@26
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@28
    add-int/2addr v0, v1

    #@29
    .line 1640
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@2c
    move-result v1

    #@2d
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    #@30
    move-result v2

    #@31
    sub-int/2addr v1, v2

    #@32
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@35
    move-result v2

    #@36
    sub-int/2addr v1, v2

    #@37
    .line 1641
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@3a
    move-result v4

    #@3b
    sub-int/2addr v0, v1

    #@3c
    .line 1642
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v0

    #@40
    add-int/2addr p2, v4

    #@41
    .line 1643
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    #@44
    move-result p2

    #@45
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@48
    move-result p1

    #@49
    sub-int v6, p1, v4

    #@4b
    .line 1644
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@4d
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    #@50
    move-result v3

    #@51
    const/4 v5, 0x0

    #@52
    move v7, p3

    #@53
    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    #@56
    .line 1645
    invoke-direct {p0, p4}, Landroidx/core/widget/NestedScrollView;->runAnimatedScroll(Z)V

    #@59
    goto :goto_68

    #@5a
    .line 1647
    :cond_5a
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@5c
    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    #@5f
    move-result p3

    #@60
    if-nez p3, :cond_65

    #@62
    .line 1648
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->abortAnimatedScroll()V

    #@65
    .line 1650
    :cond_65
    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->scrollBy(II)V

    #@68
    .line 1652
    :goto_68
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@6b
    move-result-wide p1

    #@6c
    iput-wide p1, p0, Landroidx/core/widget/NestedScrollView;->mLastScroll:J

    #@6e
    return-void
.end method

.method private stopGlowAnimations(Landroid/view/MotionEvent;)Z
    .registers 7

    #@0
    .line 1139
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@2
    invoke-static {v0}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    cmpl-float v0, v0, v1

    #@9
    const/4 v2, 0x1

    #@a
    if-eqz v0, :cond_1d

    #@c
    .line 1140
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@11
    move-result v3

    #@12
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    #@15
    move-result v4

    #@16
    int-to-float v4, v4

    #@17
    div-float/2addr v3, v4

    #@18
    invoke-static {v0, v1, v3}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    #@1b
    move v0, v2

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 v0, 0x0

    #@1e
    .line 1143
    :goto_1e
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@20
    invoke-static {v3}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    #@23
    move-result v3

    #@24
    cmpl-float v3, v3, v1

    #@26
    if-eqz v3, :cond_3b

    #@28
    .line 1144
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@2d
    move-result p1

    #@2e
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    #@31
    move-result v3

    #@32
    int-to-float v3, v3

    #@33
    div-float/2addr p1, v3

    #@34
    const/high16 v3, 0x3f800000    # 1.0f

    #@36
    sub-float/2addr v3, p1

    #@37
    invoke-static {v0, v1, v3}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    #@3a
    goto :goto_3c

    #@3b
    :cond_3b
    move v2, v0

    #@3c
    :goto_3c
    return v2
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 3

    #@0
    .line 514
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-gtz v0, :cond_a

    #@6
    .line 518
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@9
    return-void

    #@a
    .line 515
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    #@c
    const-string v0, "ScrollView can host only one direct child"

    #@e
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw p1
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    #@0
    .line 523
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-gtz v0, :cond_a

    #@6
    .line 527
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    #@9
    return-void

    #@a
    .line 524
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    #@c
    const-string p2, "ScrollView can host only one direct child"

    #@e
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw p1
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    #@0
    .line 541
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-gtz v0, :cond_a

    #@6
    .line 545
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@9
    return-void

    #@a
    .line 542
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    #@c
    const-string p2, "ScrollView can host only one direct child"

    #@e
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw p1
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    #@0
    .line 532
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-gtz v0, :cond_a

    #@6
    .line 536
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@9
    return-void

    #@a
    .line 533
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    #@c
    const-string p2, "ScrollView can host only one direct child"

    #@e
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11
    throw p1
.end method

.method public arrowScroll(I)Z
    .registers 9

    #@0
    .line 1517
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-ne v0, p0, :cond_7

    #@6
    const/4 v0, 0x0

    #@7
    .line 1520
    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@e
    move-result-object v1

    #@f
    .line 1522
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getMaxScrollAmount()I

    #@12
    move-result v2

    #@13
    if-eqz v1, :cond_36

    #@15
    .line 1524
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@18
    move-result v3

    #@19
    invoke-direct {p0, v1, v2, v3}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_36

    #@1f
    .line 1525
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@21
    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@24
    .line 1526
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@26
    invoke-virtual {p0, v1, v2}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@29
    .line 1527
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2b
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@2e
    move-result v2

    #@2f
    .line 1528
    invoke-direct {p0, v2}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    #@32
    .line 1529
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    #@35
    goto :goto_7e

    #@36
    :cond_36
    const/16 v1, 0x21

    #@38
    const/4 v3, 0x0

    #@39
    const/16 v4, 0x82

    #@3b
    if-ne p1, v1, :cond_48

    #@3d
    .line 1534
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@40
    move-result v1

    #@41
    if-ge v1, v2, :cond_48

    #@43
    .line 1535
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@46
    move-result v2

    #@47
    goto :goto_74

    #@48
    :cond_48
    if-ne p1, v4, :cond_74

    #@4a
    .line 1537
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@4d
    move-result v1

    #@4e
    if-lez v1, :cond_74

    #@50
    .line 1538
    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@53
    move-result-object v1

    #@54
    .line 1539
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@57
    move-result-object v5

    #@58
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    #@5a
    .line 1540
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    #@5d
    move-result v1

    #@5e
    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@60
    add-int/2addr v1, v5

    #@61
    .line 1541
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@64
    move-result v5

    #@65
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@68
    move-result v6

    #@69
    add-int/2addr v5, v6

    #@6a
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@6d
    move-result v6

    #@6e
    sub-int/2addr v5, v6

    #@6f
    sub-int/2addr v1, v5

    #@70
    .line 1542
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@73
    move-result v2

    #@74
    :cond_74
    :goto_74
    if-nez v2, :cond_77

    #@76
    return v3

    #@77
    :cond_77
    if-ne p1, v4, :cond_7a

    #@79
    goto :goto_7b

    #@7a
    :cond_7a
    neg-int v2, v2

    #@7b
    .line 1548
    :goto_7b
    invoke-direct {p0, v2}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    #@7e
    :goto_7e
    if-eqz v0, :cond_9b

    #@80
    .line 1551
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    #@83
    move-result p1

    #@84
    if-eqz p1, :cond_9b

    #@86
    .line 1552
    invoke-direct {p0, v0}, Landroidx/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    #@89
    move-result p1

    #@8a
    if-eqz p1, :cond_9b

    #@8c
    .line 1558
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getDescendantFocusability()I

    #@8f
    move-result p1

    #@90
    const/high16 v0, 0x20000

    #@92
    .line 1559
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    #@95
    .line 1560
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestFocus()Z

    #@98
    .line 1561
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->setDescendantFocusability(I)V

    #@9b
    :cond_9b
    const/4 p1, 0x1

    #@9c
    return p1
.end method

.method public computeHorizontalScrollExtent()I
    .registers 2

    #@0
    .line 1762
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .registers 2

    #@0
    .line 1755
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public computeHorizontalScrollRange()I
    .registers 2

    #@0
    .line 1748
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public computeScroll()V
    .registers 17

    #@0
    move-object/from16 v10, p0

    #@2
    .line 1798
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@4
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    return-void

    #@b
    .line 1802
    :cond_b
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@d
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    #@10
    .line 1803
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@12
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    #@15
    move-result v0

    #@16
    .line 1804
    iget v1, v10, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    #@18
    sub-int v1, v0, v1

    #@1a
    invoke-virtual {v10, v1}, Landroidx/core/widget/NestedScrollView;->consumeFlingInVerticalStretch(I)I

    #@1d
    move-result v6

    #@1e
    .line 1805
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mLastScrollerY:I

    #@20
    .line 1808
    iget-object v3, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    #@22
    const/4 v11, 0x1

    #@23
    const/4 v12, 0x0

    #@24
    aput v12, v3, v11

    #@26
    const/4 v1, 0x0

    #@27
    const/4 v4, 0x0

    #@28
    const/4 v5, 0x1

    #@29
    move-object/from16 v0, p0

    #@2b
    move v2, v6

    #@2c
    .line 1809
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    #@2f
    .line 1811
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    #@31
    aget v0, v0, v11

    #@33
    sub-int v13, v6, v0

    #@35
    .line 1813
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    #@38
    move-result v14

    #@39
    if-eqz v13, :cond_6a

    #@3b
    .line 1817
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@3e
    move-result v15

    #@3f
    const/4 v1, 0x0

    #@40
    .line 1818
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    #@43
    move-result v3

    #@44
    const/4 v5, 0x0

    #@45
    const/4 v7, 0x0

    #@46
    const/4 v8, 0x0

    #@47
    const/4 v9, 0x0

    #@48
    move-object/from16 v0, p0

    #@4a
    move v2, v13

    #@4b
    move v4, v15

    #@4c
    move v6, v14

    #@4d
    invoke-virtual/range {v0 .. v9}, Landroidx/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    #@50
    .line 1819
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@53
    move-result v0

    #@54
    sub-int v2, v0, v15

    #@56
    sub-int/2addr v13, v2

    #@57
    .line 1823
    iget-object v7, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    #@59
    aput v12, v7, v11

    #@5b
    const/4 v3, 0x0

    #@5c
    .line 1824
    iget-object v5, v10, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    #@5e
    const/4 v6, 0x1

    #@5f
    move-object/from16 v0, p0

    #@61
    move v4, v13

    #@62
    invoke-virtual/range {v0 .. v7}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    #@65
    .line 1826
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    #@67
    aget v0, v0, v11

    #@69
    sub-int/2addr v13, v0

    #@6a
    :cond_6a
    if-eqz v13, :cond_a7

    #@6c
    .line 1830
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_76

    #@72
    if-ne v0, v11, :cond_77

    #@74
    if-lez v14, :cond_77

    #@76
    :cond_76
    move v12, v11

    #@77
    :cond_77
    if-eqz v12, :cond_a4

    #@79
    if-gez v13, :cond_90

    #@7b
    .line 1835
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@7d
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@80
    move-result v0

    #@81
    if-eqz v0, :cond_a4

    #@83
    .line 1836
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@85
    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@87
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    #@8a
    move-result v1

    #@8b
    float-to-int v1, v1

    #@8c
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@8f
    goto :goto_a4

    #@90
    .line 1839
    :cond_90
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@92
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@95
    move-result v0

    #@96
    if-eqz v0, :cond_a4

    #@98
    .line 1840
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@9a
    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@9c
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    #@9f
    move-result v1

    #@a0
    float-to-int v1, v1

    #@a1
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@a4
    .line 1844
    :cond_a4
    :goto_a4
    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->abortAnimatedScroll()V

    #@a7
    .line 1847
    :cond_a7
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@a9
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    #@ac
    move-result v0

    #@ad
    if-nez v0, :cond_b3

    #@af
    .line 1848
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@b2
    goto :goto_b6

    #@b3
    .line 1850
    :cond_b3
    invoke-virtual {v10, v11}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    #@b6
    :goto_b6
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 12

    #@0
    .line 1951
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-nez v0, :cond_8

    #@7
    return v1

    #@8
    .line 1953
    :cond_8
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@b
    move-result v0

    #@c
    .line 1954
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@f
    move-result v2

    #@10
    add-int v3, v2, v0

    #@12
    .line 1958
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    #@15
    move-result v4

    #@16
    .line 1963
    iget v5, p1, Landroid/graphics/Rect;->top:I

    #@18
    if-lez v5, :cond_1b

    #@1a
    add-int/2addr v2, v4

    #@1b
    .line 1970
    :cond_1b
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v5

    #@1f
    .line 1971
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@22
    move-result-object v6

    #@23
    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    #@25
    .line 1972
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    #@27
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    #@2a
    move-result v8

    #@2b
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@2d
    add-int/2addr v8, v9

    #@2e
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@30
    add-int/2addr v8, v9

    #@31
    if-ge v7, v8, :cond_36

    #@33
    sub-int v4, v3, v4

    #@35
    goto :goto_37

    #@36
    :cond_36
    move v4, v3

    #@37
    .line 1978
    :goto_37
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    #@39
    if-le v7, v4, :cond_5a

    #@3b
    iget v7, p1, Landroid/graphics/Rect;->top:I

    #@3d
    if-le v7, v2, :cond_5a

    #@3f
    .line 1983
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@42
    move-result v7

    #@43
    if-le v7, v0, :cond_49

    #@45
    .line 1985
    iget p1, p1, Landroid/graphics/Rect;->top:I

    #@47
    sub-int/2addr p1, v2

    #@48
    goto :goto_4c

    #@49
    .line 1988
    :cond_49
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@4b
    sub-int/2addr p1, v4

    #@4c
    :goto_4c
    add-int/2addr p1, v1

    #@4d
    .line 1992
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@50
    move-result v0

    #@51
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@53
    add-int/2addr v0, v1

    #@54
    sub-int/2addr v0, v3

    #@55
    .line 1994
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@58
    move-result v1

    #@59
    goto :goto_7a

    #@5a
    .line 1996
    :cond_5a
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@5c
    if-ge v3, v2, :cond_7a

    #@5e
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@60
    if-ge v3, v4, :cond_7a

    #@62
    .line 2001
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    #@65
    move-result v3

    #@66
    if-le v3, v0, :cond_6d

    #@68
    .line 2003
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    #@6a
    sub-int/2addr v4, p1

    #@6b
    sub-int/2addr v1, v4

    #@6c
    goto :goto_71

    #@6d
    .line 2006
    :cond_6d
    iget p1, p1, Landroid/graphics/Rect;->top:I

    #@6f
    sub-int/2addr v2, p1

    #@70
    sub-int/2addr v1, v2

    #@71
    .line 2010
    :goto_71
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@74
    move-result p1

    #@75
    neg-int p1, p1

    #@76
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    #@79
    move-result v1

    #@7a
    :cond_7a
    :goto_7a
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .registers 2

    #@0
    .line 1741
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public computeVerticalScrollOffset()I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1734
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    #@4
    move-result v1

    #@5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public computeVerticalScrollRange()I
    .registers 5

    #@0
    .line 1710
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 1711
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@b
    move-result v2

    #@c
    sub-int/2addr v1, v2

    #@d
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    #@10
    move-result v2

    #@11
    sub-int/2addr v1, v2

    #@12
    if-nez v0, :cond_15

    #@14
    return v1

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    .line 1716
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object v2

    #@1a
    .line 1717
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    #@20
    .line 1718
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@23
    move-result v2

    #@24
    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@26
    add-int/2addr v2, v3

    #@27
    .line 1719
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@2a
    move-result v3

    #@2b
    sub-int v1, v2, v1

    #@2d
    .line 1720
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@30
    move-result v0

    #@31
    if-gez v3, :cond_35

    #@33
    sub-int/2addr v2, v3

    #@34
    goto :goto_39

    #@35
    :cond_35
    if-le v3, v0, :cond_39

    #@37
    sub-int/2addr v3, v0

    #@38
    add-int/2addr v2, v3

    #@39
    :cond_39
    :goto_39
    return v2
.end method

.method consumeFlingInVerticalStretch(I)I
    .registers 7

    #@0
    .line 1070
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x3f000000    # 0.5f

    #@6
    const/4 v2, 0x0

    #@7
    const/high16 v3, 0x40800000    # 4.0f

    #@9
    if-lez p1, :cond_31

    #@b
    .line 1071
    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@d
    invoke-static {v4}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    #@10
    move-result v4

    #@11
    cmpl-float v4, v4, v2

    #@13
    if-eqz v4, :cond_31

    #@15
    neg-int v2, p1

    #@16
    int-to-float v2, v2

    #@17
    mul-float/2addr v2, v3

    #@18
    int-to-float v4, v0

    #@19
    div-float/2addr v2, v4

    #@1a
    neg-int v0, v0

    #@1b
    int-to-float v0, v0

    #@1c
    div-float/2addr v0, v3

    #@1d
    .line 1073
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@1f
    .line 1074
    invoke-static {v3, v2, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    #@22
    move-result v1

    #@23
    mul-float/2addr v0, v1

    #@24
    .line 1073
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@27
    move-result v0

    #@28
    if-eq v0, p1, :cond_2f

    #@2a
    .line 1076
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@2c
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    #@2f
    :cond_2f
    sub-int/2addr p1, v0

    #@30
    return p1

    #@31
    :cond_31
    if-gez p1, :cond_55

    #@33
    .line 1080
    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@35
    invoke-static {v4}, Landroidx/core/widget/EdgeEffectCompat;->getDistance(Landroid/widget/EdgeEffect;)F

    #@38
    move-result v4

    #@39
    cmpl-float v2, v4, v2

    #@3b
    if-eqz v2, :cond_55

    #@3d
    int-to-float v2, p1

    #@3e
    mul-float/2addr v2, v3

    #@3f
    int-to-float v0, v0

    #@40
    div-float/2addr v2, v0

    #@41
    div-float/2addr v0, v3

    #@42
    .line 1082
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@44
    .line 1083
    invoke-static {v3, v2, v1}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    #@47
    move-result v1

    #@48
    mul-float/2addr v0, v1

    #@49
    .line 1082
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@4c
    move-result v0

    #@4d
    if-eq v0, p1, :cond_54

    #@4f
    .line 1085
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@51
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->finish()V

    #@54
    :cond_54
    sub-int/2addr p1, v0

    #@55
    :cond_55
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    #@0
    .line 663
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_f

    #@6
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_d

    #@c
    goto :goto_f

    #@d
    :cond_d
    const/4 p1, 0x0

    #@e
    goto :goto_10

    #@f
    :cond_f
    :goto_f
    const/4 p1, 0x1

    #@10
    :goto_10
    return p1
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5

    #@0
    .line 340
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4

    #@0
    .line 345
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    .line 335
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    #@9
    move-result p1

    #@a
    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12

    #@0
    .line 295
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    #@a
    move-result p1

    #@b
    return p1
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .registers 16

    #@0
    .line 264
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    move v6, p6

    #@8
    move-object v7, p7

    #@9
    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    #@c
    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    #@0
    .line 328
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    #@a
    move-result p1

    #@b
    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 14

    #@0
    .line 288
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move-object v5, p5

    #@7
    move v6, p6

    #@8
    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    #@0
    .line 2209
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    #@3
    .line 2210
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@6
    move-result v0

    #@7
    .line 2211
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@9
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@c
    move-result v1

    #@d
    const/4 v2, 0x0

    #@e
    if-nez v1, :cond_64

    #@10
    .line 2212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@13
    move-result v1

    #@14
    .line 2213
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    #@17
    move-result v3

    #@18
    .line 2214
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@1b
    move-result v4

    #@1c
    .line 2216
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    #@1f
    move-result v5

    #@20
    .line 2218
    invoke-static {p0}, Landroidx/core/widget/NestedScrollView$Api21Impl;->getClipToPadding(Landroid/view/ViewGroup;)Z

    #@23
    move-result v6

    #@24
    if-eqz v6, :cond_36

    #@26
    .line 2219
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    #@29
    move-result v6

    #@2a
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    #@2d
    move-result v7

    #@2e
    add-int/2addr v6, v7

    #@2f
    sub-int/2addr v3, v6

    #@30
    .line 2220
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    #@33
    move-result v6

    #@34
    add-int/2addr v6, v2

    #@35
    goto :goto_37

    #@36
    :cond_36
    move v6, v2

    #@37
    .line 2223
    :goto_37
    invoke-static {p0}, Landroidx/core/widget/NestedScrollView$Api21Impl;->getClipToPadding(Landroid/view/ViewGroup;)Z

    #@3a
    move-result v7

    #@3b
    if-eqz v7, :cond_4c

    #@3d
    .line 2224
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    #@40
    move-result v7

    #@41
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@44
    move-result v8

    #@45
    add-int/2addr v7, v8

    #@46
    sub-int/2addr v4, v7

    #@47
    .line 2225
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    #@4a
    move-result v7

    #@4b
    add-int/2addr v5, v7

    #@4c
    :cond_4c
    int-to-float v6, v6

    #@4d
    int-to-float v5, v5

    #@4e
    .line 2227
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@51
    .line 2228
    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@53
    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@56
    .line 2229
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@58
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@5b
    move-result v3

    #@5c
    if-eqz v3, :cond_61

    #@5e
    .line 2230
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@61
    .line 2232
    :cond_61
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@64
    .line 2234
    :cond_64
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@66
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@69
    move-result v1

    #@6a
    if-nez v1, :cond_cb

    #@6c
    .line 2235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@6f
    move-result v1

    #@70
    .line 2236
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    #@73
    move-result v3

    #@74
    .line 2237
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@77
    move-result v4

    #@78
    .line 2239
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    #@7b
    move-result v5

    #@7c
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    #@7f
    move-result v0

    #@80
    add-int/2addr v0, v4

    #@81
    .line 2241
    invoke-static {p0}, Landroidx/core/widget/NestedScrollView$Api21Impl;->getClipToPadding(Landroid/view/ViewGroup;)Z

    #@84
    move-result v5

    #@85
    if-eqz v5, :cond_96

    #@87
    .line 2242
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    #@8a
    move-result v5

    #@8b
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    #@8e
    move-result v6

    #@8f
    add-int/2addr v5, v6

    #@90
    sub-int/2addr v3, v5

    #@91
    .line 2243
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    #@94
    move-result v5

    #@95
    add-int/2addr v2, v5

    #@96
    .line 2246
    :cond_96
    invoke-static {p0}, Landroidx/core/widget/NestedScrollView$Api21Impl;->getClipToPadding(Landroid/view/ViewGroup;)Z

    #@99
    move-result v5

    #@9a
    if-eqz v5, :cond_ab

    #@9c
    .line 2247
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    #@9f
    move-result v5

    #@a0
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@a3
    move-result v6

    #@a4
    add-int/2addr v5, v6

    #@a5
    sub-int/2addr v4, v5

    #@a6
    .line 2248
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@a9
    move-result v5

    #@aa
    sub-int/2addr v0, v5

    #@ab
    :cond_ab
    sub-int/2addr v2, v3

    #@ac
    int-to-float v2, v2

    #@ad
    int-to-float v0, v0

    #@ae
    .line 2250
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@b1
    int-to-float v0, v3

    #@b2
    const/4 v2, 0x0

    #@b3
    const/high16 v5, 0x43340000    # 180.0f

    #@b5
    .line 2251
    invoke-virtual {p1, v5, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    #@b8
    .line 2252
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@ba
    invoke-virtual {v0, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@bd
    .line 2253
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@bf
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@c2
    move-result v0

    #@c3
    if-eqz v0, :cond_c8

    #@c5
    .line 2254
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@c8
    .line 2256
    :cond_c8
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@cb
    :cond_cb
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    #@0
    .line 675
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@5
    .line 677
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->canScroll()Z

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    const/16 v2, 0x82

    #@c
    if-nez v0, :cond_36

    #@e
    .line 678
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->isFocused()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_35

    #@14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@17
    move-result p1

    #@18
    const/4 v0, 0x4

    #@19
    if-eq p1, v0, :cond_35

    #@1b
    .line 679
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    #@1e
    move-result-object p1

    #@1f
    if-ne p1, p0, :cond_22

    #@21
    const/4 p1, 0x0

    #@22
    .line 681
    :cond_22
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@29
    move-result-object p1

    #@2a
    if-eqz p1, :cond_35

    #@2c
    if-eq p1, p0, :cond_35

    #@2e
    .line 685
    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    #@31
    move-result p1

    #@32
    if-eqz p1, :cond_35

    #@34
    const/4 v1, 0x1

    #@35
    :cond_35
    return v1

    #@36
    .line 691
    :cond_36
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@39
    move-result v0

    #@3a
    if-nez v0, :cond_79

    #@3c
    .line 692
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@3f
    move-result v0

    #@40
    const/16 v3, 0x13

    #@42
    const/16 v4, 0x21

    #@44
    if-eq v0, v3, :cond_6a

    #@46
    const/16 v3, 0x14

    #@48
    if-eq v0, v3, :cond_5a

    #@4a
    const/16 v3, 0x3e

    #@4c
    if-eq v0, v3, :cond_4f

    #@4e
    goto :goto_79

    #@4f
    .line 708
    :cond_4f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    #@52
    move-result p1

    #@53
    if-eqz p1, :cond_56

    #@55
    move v2, v4

    #@56
    :cond_56
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->pageScroll(I)Z

    #@59
    goto :goto_79

    #@5a
    .line 701
    :cond_5a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    #@5d
    move-result p1

    #@5e
    if-nez p1, :cond_65

    #@60
    .line 702
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->arrowScroll(I)Z

    #@63
    move-result v1

    #@64
    goto :goto_79

    #@65
    .line 704
    :cond_65
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    #@68
    move-result v1

    #@69
    goto :goto_79

    #@6a
    .line 694
    :cond_6a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    #@6d
    move-result p1

    #@6e
    if-nez p1, :cond_75

    #@70
    .line 695
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->arrowScroll(I)Z

    #@73
    move-result v1

    #@74
    goto :goto_79

    #@75
    .line 697
    :cond_75
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->fullScroll(I)Z

    #@78
    move-result v1

    #@79
    :cond_79
    :goto_79
    return v1
.end method

.method public fling(I)V
    .registers 14

    #@0
    .line 2163
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_22

    #@6
    .line 2165
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@8
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    #@b
    move-result v2

    #@c
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@f
    move-result v3

    #@10
    const/4 v4, 0x0

    #@11
    const/4 v6, 0x0

    #@12
    const/4 v7, 0x0

    #@13
    const/high16 v8, -0x80000000

    #@15
    const v9, 0x7fffffff

    #@18
    const/4 v10, 0x0

    #@19
    const/4 v11, 0x0

    #@1a
    move v5, p1

    #@1b
    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    #@1e
    const/4 p1, 0x1

    #@1f
    .line 2170
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;->runAnimatedScroll(Z)V

    #@22
    :cond_22
    return-void
.end method

.method public fullScroll(I)Z
    .registers 7

    #@0
    const/16 v0, 0x82

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-ne p1, v0, :cond_8

    #@6
    move v0, v1

    #@7
    goto :goto_9

    #@8
    :cond_8
    move v0, v2

    #@9
    .line 1454
    :goto_9
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@c
    move-result v3

    #@d
    .line 1456
    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@f
    iput v2, v4, Landroid/graphics/Rect;->top:I

    #@11
    .line 1457
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@13
    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    #@15
    if-eqz v0, :cond_3f

    #@17
    .line 1460
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@1a
    move-result v0

    #@1b
    if-lez v0, :cond_3f

    #@1d
    sub-int/2addr v0, v1

    #@1e
    .line 1462
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@21
    move-result-object v0

    #@22
    .line 1463
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    #@28
    .line 1464
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@2a
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@2d
    move-result v0

    #@2e
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@30
    add-int/2addr v0, v1

    #@31
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@34
    move-result v1

    #@35
    add-int/2addr v0, v1

    #@36
    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    #@38
    .line 1465
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@3a
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    #@3c
    sub-int/2addr v1, v3

    #@3d
    iput v1, v0, Landroid/graphics/Rect;->top:I

    #@3f
    .line 1469
    :cond_3f
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@41
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@43
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@45
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@47
    invoke-direct {p0, p1, v0, v1}, Landroidx/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    #@4a
    move-result p1

    #@4b
    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 6

    #@0
    .line 477
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    .line 481
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    .line 482
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    #@13
    .line 483
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    #@16
    move-result v2

    #@17
    .line 484
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@1e
    move-result v4

    #@1f
    sub-int/2addr v3, v4

    #@20
    .line 485
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@23
    move-result v0

    #@24
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@26
    add-int/2addr v0, v1

    #@27
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@2a
    move-result v1

    #@2b
    sub-int/2addr v0, v1

    #@2c
    sub-int/2addr v0, v3

    #@2d
    if-ge v0, v2, :cond_33

    #@2f
    int-to-float v0, v0

    #@30
    int-to-float v1, v2

    #@31
    div-float/2addr v0, v1

    #@32
    return v0

    #@33
    :cond_33
    const/high16 v0, 0x3f800000    # 1.0f

    #@35
    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 3

    #@0
    .line 498
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@3
    move-result v0

    #@4
    int-to-float v0, v0

    #@5
    const/high16 v1, 0x3f000000    # 0.5f

    #@7
    mul-float/2addr v0, v1

    #@8
    float-to-int v0, v0

    #@9
    return v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    #@0
    .line 450
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getScrollRange()I
    .registers 5

    #@0
    .line 1311
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-lez v0, :cond_2e

    #@7
    .line 1312
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 1313
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    #@11
    .line 1314
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@14
    move-result v0

    #@15
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@17
    add-int/2addr v0, v3

    #@18
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@1a
    add-int/2addr v0, v2

    #@1b
    .line 1315
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    #@22
    move-result v3

    #@23
    sub-int/2addr v2, v3

    #@24
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@27
    move-result v3

    #@28
    sub-int/2addr v2, v3

    #@29
    sub-int/2addr v0, v2

    #@2a
    .line 1316
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v1

    #@2e
    :cond_2e
    return v1
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 3

    #@0
    .line 462
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 466
    :cond_8
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    #@b
    move-result v0

    #@c
    .line 467
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@f
    move-result v1

    #@10
    if-ge v1, v0, :cond_16

    #@12
    int-to-float v1, v1

    #@13
    int-to-float v0, v0

    #@14
    div-float/2addr v1, v0

    #@15
    return v1

    #@16
    :cond_16
    const/high16 v0, 0x3f800000    # 1.0f

    #@18
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 322
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3

    #@0
    .line 282
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public isFillViewport()Z
    .registers 2

    #@0
    .line 583
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    #@2
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    #@0
    .line 307
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    #@0
    .line 605
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    #@2
    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 6

    #@0
    .line 1768
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p3

    #@4
    .line 1773
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    #@7
    move-result v0

    #@8
    .line 1774
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@f
    .line 1773
    invoke-static {p2, v0, p3}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    #@12
    move-result p2

    #@13
    const/4 p3, 0x0

    #@14
    .line 1776
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@17
    move-result p3

    #@18
    .line 1778
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    #@1b
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 7

    #@0
    .line 1784
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p4

    #@4
    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    #@6
    .line 1787
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    #@9
    move-result p5

    #@a
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    #@d
    move-result v0

    #@e
    add-int/2addr p5, v0

    #@f
    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    #@11
    add-int/2addr p5, v0

    #@12
    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #@14
    add-int/2addr p5, v0

    #@15
    add-int/2addr p5, p3

    #@16
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    #@18
    .line 1786
    invoke-static {p2, p5, p3}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    #@1b
    move-result p2

    #@1c
    .line 1789
    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #@1e
    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    #@20
    add-int/2addr p3, p4

    #@21
    const/4 p4, 0x0

    #@22
    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@25
    move-result p3

    #@26
    .line 1792
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    #@29
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    #@0
    .line 2118
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 2120
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    #@6
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    #@0
    .line 1168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0x8

    #@6
    const/4 v2, 0x0

    #@7
    if-ne v0, v1, :cond_aa

    #@9
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    #@b
    if-nez v0, :cond_aa

    #@d
    const/4 v0, 0x2

    #@e
    .line 1170
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    #@11
    move-result v0

    #@12
    const/4 v1, 0x0

    #@13
    if-eqz v0, :cond_1c

    #@15
    const/16 v0, 0x9

    #@17
    .line 1171
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@1a
    move-result v0

    #@1b
    goto :goto_2c

    #@1c
    :cond_1c
    const/high16 v0, 0x400000

    #@1e
    .line 1172
    invoke-static {p1, v0}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2b

    #@24
    const/16 v0, 0x1a

    #@26
    .line 1173
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    #@29
    move-result v0

    #@2a
    goto :goto_2c

    #@2b
    :cond_2b
    move v0, v1

    #@2c
    :goto_2c
    cmpl-float v1, v0, v1

    #@2e
    if-eqz v1, :cond_aa

    #@30
    .line 1178
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    #@33
    move-result v1

    #@34
    mul-float/2addr v0, v1

    #@35
    float-to-int v0, v0

    #@36
    .line 1179
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    #@39
    move-result v1

    #@3a
    .line 1180
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@3d
    move-result v3

    #@3e
    sub-int v0, v3, v0

    #@40
    const/high16 v4, 0x3f000000    # 0.5f

    #@42
    const/16 v5, 0x2002

    #@44
    const/4 v6, 0x1

    #@45
    if-gez v0, :cond_71

    #@47
    .line 1185
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->canOverScroll()Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_55

    #@4d
    .line 1186
    invoke-static {p1, v5}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    #@50
    move-result p1

    #@51
    if-nez p1, :cond_55

    #@53
    move p1, v6

    #@54
    goto :goto_56

    #@55
    :cond_55
    move p1, v2

    #@56
    :goto_56
    if-eqz p1, :cond_6f

    #@58
    .line 1188
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@5a
    int-to-float v0, v0

    #@5b
    neg-float v0, v0

    #@5c
    .line 1189
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@5f
    move-result v1

    #@60
    int-to-float v1, v1

    #@61
    div-float/2addr v0, v1

    #@62
    .line 1188
    invoke-static {p1, v0, v4}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    #@65
    .line 1191
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@67
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    #@6a
    .line 1192
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->invalidate()V

    #@6d
    move p1, v6

    #@6e
    goto :goto_9f

    #@6f
    :cond_6f
    move p1, v2

    #@70
    goto :goto_9f

    #@71
    :cond_71
    if-le v0, v1, :cond_9d

    #@73
    .line 1198
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->canOverScroll()Z

    #@76
    move-result v7

    #@77
    if-eqz v7, :cond_81

    #@79
    .line 1199
    invoke-static {p1, v5}, Landroidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    #@7c
    move-result p1

    #@7d
    if-nez p1, :cond_81

    #@7f
    move p1, v6

    #@80
    goto :goto_82

    #@81
    :cond_81
    move p1, v2

    #@82
    :goto_82
    if-eqz p1, :cond_9a

    #@84
    .line 1201
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@86
    sub-int/2addr v0, v1

    #@87
    int-to-float v0, v0

    #@88
    .line 1202
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@8b
    move-result v2

    #@8c
    int-to-float v2, v2

    #@8d
    div-float/2addr v0, v2

    #@8e
    .line 1201
    invoke-static {p1, v0, v4}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    #@91
    .line 1204
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@93
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    #@96
    .line 1205
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->invalidate()V

    #@99
    move v2, v6

    #@9a
    :cond_9a
    move p1, v2

    #@9b
    move v2, v1

    #@9c
    goto :goto_9f

    #@9d
    :cond_9d
    move p1, v2

    #@9e
    move v2, v0

    #@9f
    :goto_9f
    if-eq v2, v3, :cond_a9

    #@a1
    .line 1211
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    #@a4
    move-result p1

    #@a5
    invoke-super {p0, p1, v2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    #@a8
    return v6

    #@a9
    :cond_a9
    return p1

    #@aa
    :cond_aa
    return v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    #@0
    .line 770
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    const/4 v2, 0x2

    #@6
    if-ne v0, v2, :cond_d

    #@8
    .line 771
    iget-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    #@a
    if-eqz v3, :cond_d

    #@c
    return v1

    #@d
    :cond_d
    and-int/lit16 v0, v0, 0xff

    #@f
    const/4 v3, 0x0

    #@10
    if-eqz v0, :cond_a2

    #@12
    const/4 v4, -0x1

    #@13
    if-eq v0, v1, :cond_7d

    #@15
    if-eq v0, v2, :cond_24

    #@17
    const/4 v1, 0x3

    #@18
    if-eq v0, v1, :cond_7d

    #@1a
    const/4 v1, 0x6

    #@1b
    if-eq v0, v1, :cond_1f

    #@1d
    goto/16 :goto_f2

    #@1f
    .line 858
    :cond_1f
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@22
    goto/16 :goto_f2

    #@24
    .line 786
    :cond_24
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    #@26
    if-ne v0, v4, :cond_2a

    #@28
    goto/16 :goto_f2

    #@2a
    .line 792
    :cond_2a
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@2d
    move-result v5

    #@2e
    if-ne v5, v4, :cond_4c

    #@30
    .line 794
    new-instance p1, Ljava/lang/StringBuilder;

    #@32
    const-string v1, "Invalid pointerId="

    #@34
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object p1

    #@3b
    const-string v0, " in onInterceptTouchEvent"

    #@3d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object p1

    #@41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object p1

    #@45
    const-string v0, "NestedScrollView"

    #@47
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    goto/16 :goto_f2

    #@4c
    .line 799
    :cond_4c
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    #@4f
    move-result v0

    #@50
    float-to-int v0, v0

    #@51
    .line 800
    iget v4, p0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    #@53
    sub-int v4, v0, v4

    #@55
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@58
    move-result v4

    #@59
    .line 801
    iget v5, p0, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    #@5b
    if-le v4, v5, :cond_f2

    #@5d
    .line 802
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I

    #@60
    move-result v4

    #@61
    and-int/2addr v2, v4

    #@62
    if-nez v2, :cond_f2

    #@64
    .line 803
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    #@66
    .line 804
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    #@68
    .line 805
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    #@6b
    .line 806
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@6d
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@70
    .line 807
    iput v3, p0, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    #@72
    .line 808
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    #@75
    move-result-object p1

    #@76
    if-eqz p1, :cond_f2

    #@78
    .line 810
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@7b
    goto/16 :goto_f2

    #@7d
    .line 849
    :cond_7d
    iput-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    #@7f
    .line 850
    iput v4, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    #@81
    .line 851
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    #@84
    .line 852
    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@86
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    #@89
    move-result v5

    #@8a
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@8d
    move-result v6

    #@8e
    const/4 v7, 0x0

    #@8f
    const/4 v8, 0x0

    #@90
    const/4 v9, 0x0

    #@91
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    #@94
    move-result v10

    #@95
    invoke-virtual/range {v4 .. v10}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    #@98
    move-result p1

    #@99
    if-eqz p1, :cond_9e

    #@9b
    .line 853
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@9e
    .line 855
    :cond_9e
    invoke-virtual {p0, v3}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    #@a1
    goto :goto_f2

    #@a2
    .line 817
    :cond_a2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@a5
    move-result v0

    #@a6
    float-to-int v0, v0

    #@a7
    .line 818
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@aa
    move-result v4

    #@ab
    float-to-int v4, v4

    #@ac
    invoke-direct {p0, v4, v0}, Landroidx/core/widget/NestedScrollView;->inChild(II)Z

    #@af
    move-result v4

    #@b0
    if-nez v4, :cond_c8

    #@b2
    .line 819
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;->stopGlowAnimations(Landroid/view/MotionEvent;)Z

    #@b5
    move-result p1

    #@b6
    if-nez p1, :cond_c2

    #@b8
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@ba
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    #@bd
    move-result p1

    #@be
    if-nez p1, :cond_c1

    #@c0
    goto :goto_c2

    #@c1
    :cond_c1
    move v1, v3

    #@c2
    :cond_c2
    :goto_c2
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    #@c4
    .line 820
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    #@c7
    goto :goto_f2

    #@c8
    .line 828
    :cond_c8
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    #@ca
    .line 829
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@cd
    move-result v0

    #@ce
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    #@d0
    .line 831
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->initOrResetVelocityTracker()V

    #@d3
    .line 832
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@d5
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@d8
    .line 840
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@da
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    #@dd
    .line 841
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;->stopGlowAnimations(Landroid/view/MotionEvent;)Z

    #@e0
    move-result p1

    #@e1
    if-nez p1, :cond_ed

    #@e3
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@e5
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    #@e8
    move-result p1

    #@e9
    if-nez p1, :cond_ec

    #@eb
    goto :goto_ed

    #@ec
    :cond_ec
    move v1, v3

    #@ed
    :cond_ed
    :goto_ed
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    #@ef
    .line 842
    invoke-virtual {p0, v2, v3}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    #@f2
    .line 866
    :cond_f2
    :goto_f2
    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    #@f4
    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    #@0
    .line 2080
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 2081
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    #@6
    .line 2083
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    #@8
    if-eqz p2, :cond_15

    #@a
    invoke-static {p2, p0}, Landroidx/core/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    #@d
    move-result p2

    #@e
    if-eqz p2, :cond_15

    #@10
    .line 2084
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    #@12
    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    #@15
    :cond_15
    const/4 p2, 0x0

    #@16
    .line 2086
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    #@18
    .line 2088
    iget-boolean p4, p0, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    #@1a
    if-nez p4, :cond_63

    #@1c
    .line 2090
    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    #@1e
    if-eqz p4, :cond_2d

    #@20
    .line 2091
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    #@23
    move-result p4

    #@24
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    #@26
    iget v0, v0, Landroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    #@28
    invoke-virtual {p0, p4, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    #@2b
    .line 2092
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    #@2d
    .line 2098
    :cond_2d
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@30
    move-result p2

    #@31
    if-lez p2, :cond_47

    #@33
    .line 2099
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@36
    move-result-object p1

    #@37
    .line 2100
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3a
    move-result-object p2

    #@3b
    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    #@3d
    .line 2101
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@40
    move-result p1

    #@41
    iget p4, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@43
    add-int/2addr p1, p4

    #@44
    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@46
    add-int/2addr p1, p2

    #@47
    :cond_47
    sub-int/2addr p5, p3

    #@48
    .line 2103
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    #@4b
    move-result p2

    #@4c
    sub-int/2addr p5, p2

    #@4d
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@50
    move-result p2

    #@51
    sub-int/2addr p5, p2

    #@52
    .line 2104
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@55
    move-result p2

    #@56
    .line 2105
    invoke-static {p2, p5, p1}, Landroidx/core/widget/NestedScrollView;->clamp(III)I

    #@59
    move-result p1

    #@5a
    if-eq p1, p2, :cond_63

    #@5c
    .line 2107
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    #@5f
    move-result p2

    #@60
    invoke-virtual {p0, p2, p1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    #@63
    .line 2112
    :cond_63
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    #@66
    move-result p1

    #@67
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@6a
    move-result p2

    #@6b
    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    #@6e
    const/4 p1, 0x1

    #@6f
    .line 2113
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mIsLaidOut:Z

    #@71
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    #@0
    .line 627
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    #@3
    .line 629
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    #@5
    if-nez v0, :cond_8

    #@7
    return-void

    #@8
    .line 633
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@b
    move-result p2

    #@c
    if-nez p2, :cond_f

    #@e
    return-void

    #@f
    .line 638
    :cond_f
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@12
    move-result p2

    #@13
    if-lez p2, :cond_58

    #@15
    const/4 p2, 0x0

    #@16
    .line 639
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@19
    move-result-object p2

    #@1a
    .line 640
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@20
    .line 642
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    #@23
    move-result v1

    #@24
    .line 643
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getMeasuredHeight()I

    #@27
    move-result v2

    #@28
    .line 644
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    #@2b
    move-result v3

    #@2c
    sub-int/2addr v2, v3

    #@2d
    .line 645
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@30
    move-result v3

    #@31
    sub-int/2addr v2, v3

    #@32
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@34
    sub-int/2addr v2, v3

    #@35
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@37
    sub-int/2addr v2, v3

    #@38
    if-ge v1, v2, :cond_58

    #@3a
    .line 651
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    #@3d
    move-result v1

    #@3e
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    #@41
    move-result v3

    #@42
    add-int/2addr v1, v3

    #@43
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@45
    add-int/2addr v1, v3

    #@46
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@48
    add-int/2addr v1, v3

    #@49
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    #@4b
    .line 650
    invoke-static {p1, v1, v0}, Landroidx/core/widget/NestedScrollView;->getChildMeasureSpec(III)I

    #@4e
    move-result p1

    #@4f
    const/high16 v0, 0x40000000    # 2.0f

    #@51
    .line 654
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@54
    move-result v0

    #@55
    .line 655
    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    #@58
    :cond_58
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    #@0
    if-nez p4, :cond_c

    #@2
    const/4 p1, 0x0

    #@3
    const/4 p2, 0x1

    #@4
    .line 436
    invoke-virtual {p0, p1, p3, p2}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    #@7
    float-to-int p1, p3

    #@8
    .line 437
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    #@b
    return p2

    #@c
    :cond_c
    const/4 p1, 0x0

    #@d
    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    #@0
    .line 445
    invoke-virtual {p0, p2, p3}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    .line 429
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->onNestedPreScroll(Landroid/view/View;II[II)V

    #@9
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 12

    #@0
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p2

    #@3
    move v2, p3

    #@4
    move-object v3, p4

    #@5
    move v5, p5

    #@6
    .line 399
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    #@9
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 6

    #@0
    const/4 p1, 0x0

    #@1
    const/4 p2, 0x0

    #@2
    .line 424
    invoke-direct {p0, p5, p1, p2}, Landroidx/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    #@5
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 7

    #@0
    const/4 p1, 0x0

    #@1
    .line 393
    invoke-direct {p0, p5, p6, p1}, Landroidx/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    #@4
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 8

    #@0
    .line 353
    invoke-direct {p0, p5, p6, p7}, Landroidx/core/widget/NestedScrollView;->onNestedScrollInternal(II[I)V

    #@3
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 413
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    #@4
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 6

    #@0
    .line 380
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    #@5
    const/4 p1, 0x2

    #@6
    .line 381
    invoke-virtual {p0, p1, p4}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    #@9
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5

    #@0
    .line 1247
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    #@3
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 6

    #@0
    const/4 v0, 0x2

    #@1
    if-ne p1, v0, :cond_6

    #@3
    const/16 p1, 0x82

    #@5
    goto :goto_b

    #@6
    :cond_6
    const/4 v0, 0x1

    #@7
    if-ne p1, v0, :cond_b

    #@9
    const/16 p1, 0x21

    #@b
    :cond_b
    :goto_b
    if-nez p2, :cond_17

    #@d
    .line 2047
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@10
    move-result-object v0

    #@11
    const/4 v1, 0x0

    #@12
    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    #@15
    move-result-object v0

    #@16
    goto :goto_1f

    #@17
    .line 2048
    :cond_17
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    #@1e
    move-result-object v0

    #@1f
    :goto_1f
    const/4 v1, 0x0

    #@20
    if-nez v0, :cond_23

    #@22
    return v1

    #@23
    .line 2055
    :cond_23
    invoke-direct {p0, v0}, Landroidx/core/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_2a

    #@29
    return v1

    #@2a
    .line 2059
    :cond_2a
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    #@2d
    move-result p1

    #@2e
    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    #@0
    .line 2292
    instance-of v0, p1, Landroidx/core/widget/NestedScrollView$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 2293
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 2297
    :cond_8
    check-cast p1, Landroidx/core/widget/NestedScrollView$SavedState;

    #@a
    .line 2298
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 2299
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->mSavedState:Landroidx/core/widget/NestedScrollView$SavedState;

    #@13
    .line 2300
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    #@16
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    #@0
    .line 2306
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 2307
    new-instance v1, Landroidx/core/widget/NestedScrollView$SavedState;

    #@6
    invoke-direct {v1, v0}, Landroidx/core/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 2308
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@c
    move-result v0

    #@d
    iput v0, v1, Landroidx/core/widget/NestedScrollView$SavedState;->scrollPosition:I

    #@f
    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .registers 11

    #@0
    .line 618
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    #@3
    .line 620
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

    #@5
    if-eqz v0, :cond_f

    #@7
    move-object v1, p0

    #@8
    move v2, p1

    #@9
    move v3, p2

    #@a
    move v4, p3

    #@b
    move v5, p4

    #@c
    .line 621
    invoke-interface/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;->onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V

    #@f
    :cond_f
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    #@0
    .line 2125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    #@3
    .line 2127
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->findFocus()Landroid/view/View;

    #@6
    move-result-object p1

    #@7
    if-eqz p1, :cond_26

    #@9
    if-ne p0, p1, :cond_c

    #@b
    goto :goto_26

    #@c
    :cond_c
    const/4 p2, 0x0

    #@d
    .line 2135
    invoke-direct {p0, p1, p2, p4}, Landroidx/core/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    #@10
    move-result p2

    #@11
    if-eqz p2, :cond_26

    #@13
    .line 2136
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@15
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    #@18
    .line 2137
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@1a
    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    #@1d
    .line 2138
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    #@22
    move-result p1

    #@23
    .line 2139
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;->doScrollY(I)V

    #@26
    :cond_26
    :goto_26
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 407
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5

    #@0
    and-int/lit8 p1, p3, 0x2

    #@2
    if-eqz p1, :cond_6

    #@4
    const/4 p1, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 p1, 0x0

    #@7
    :goto_7
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 418
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->onStopNestedScroll(Landroid/view/View;I)V

    #@4
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 4

    #@0
    .line 386
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    #@5
    .line 387
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    #@8
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 25

    #@0
    move-object/from16 v10, p0

    #@2
    move-object/from16 v11, p1

    #@4
    .line 871
    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    #@7
    .line 873
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@a
    move-result v0

    #@b
    const/4 v12, 0x0

    #@c
    if-nez v0, :cond_10

    #@e
    .line 876
    iput v12, v10, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    #@10
    .line 879
    :cond_10
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@13
    move-result-object v13

    #@14
    .line 880
    iget v1, v10, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    #@16
    int-to-float v1, v1

    #@17
    const/4 v2, 0x0

    #@18
    invoke-virtual {v13, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@1b
    const/4 v1, 0x2

    #@1c
    const/4 v14, 0x1

    #@1d
    if-eqz v0, :cond_22d

    #@1f
    const/4 v3, -0x1

    #@20
    if-eq v0, v14, :cond_1dc

    #@22
    if-eq v0, v1, :cond_82

    #@24
    const/4 v1, 0x3

    #@25
    if-eq v0, v1, :cond_54

    #@27
    const/4 v1, 0x5

    #@28
    if-eq v0, v1, :cond_41

    #@2a
    const/4 v1, 0x6

    #@2b
    if-eq v0, v1, :cond_2f

    #@2d
    goto/16 :goto_25c

    #@2f
    .line 1027
    :cond_2f
    invoke-direct/range {p0 .. p1}, Landroidx/core/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    #@32
    .line 1028
    iget v0, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    #@34
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@37
    move-result v0

    #@38
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@3b
    move-result v0

    #@3c
    float-to-int v0, v0

    #@3d
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    #@3f
    goto/16 :goto_25c

    #@41
    .line 1021
    :cond_41
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    #@44
    move-result v0

    #@45
    .line 1022
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@48
    move-result v1

    #@49
    float-to-int v1, v1

    #@4a
    iput v1, v10, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    #@4c
    .line 1023
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@4f
    move-result v0

    #@50
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    #@52
    goto/16 :goto_25c

    #@54
    .line 1011
    :cond_54
    iget-boolean v0, v10, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    #@56
    if-eqz v0, :cond_7b

    #@58
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@5b
    move-result v0

    #@5c
    if-lez v0, :cond_7b

    #@5e
    .line 1012
    iget-object v15, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@60
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    #@63
    move-result v16

    #@64
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@67
    move-result v17

    #@68
    const/16 v18, 0x0

    #@6a
    const/16 v19, 0x0

    #@6c
    const/16 v20, 0x0

    #@6e
    .line 1013
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    #@71
    move-result v21

    #@72
    .line 1012
    invoke-virtual/range {v15 .. v21}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    #@75
    move-result v0

    #@76
    if-eqz v0, :cond_7b

    #@78
    .line 1014
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@7b
    .line 1017
    :cond_7b
    iput v3, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    #@7d
    .line 1018
    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->endDrag()V

    #@80
    goto/16 :goto_25c

    #@82
    .line 909
    :cond_82
    iget v0, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    #@84
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    #@87
    move-result v15

    #@88
    if-ne v15, v3, :cond_a8

    #@8a
    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    #@8c
    const-string v1, "Invalid pointerId="

    #@8e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@91
    iget v1, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    #@93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    const-string v1, " in onTouchEvent"

    #@99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v0

    #@9d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v0

    #@a1
    const-string v1, "NestedScrollView"

    #@a3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a6
    goto/16 :goto_25c

    #@a8
    .line 915
    :cond_a8
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getY(I)F

    #@ab
    move-result v0

    #@ac
    float-to-int v6, v0

    #@ad
    .line 916
    iget v0, v10, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    #@af
    sub-int/2addr v0, v6

    #@b0
    .line 917
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getX(I)F

    #@b3
    move-result v1

    #@b4
    invoke-direct {v10, v0, v1}, Landroidx/core/widget/NestedScrollView;->releaseVerticalGlow(IF)I

    #@b7
    move-result v1

    #@b8
    sub-int/2addr v0, v1

    #@b9
    .line 918
    iget-boolean v1, v10, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    #@bb
    if-nez v1, :cond_d9

    #@bd
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@c0
    move-result v1

    #@c1
    iget v2, v10, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    #@c3
    if-le v1, v2, :cond_d9

    #@c5
    .line 919
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    #@c8
    move-result-object v1

    #@c9
    if-eqz v1, :cond_ce

    #@cb
    .line 921
    invoke-interface {v1, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@ce
    .line 923
    :cond_ce
    iput-boolean v14, v10, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    #@d0
    if-lez v0, :cond_d6

    #@d2
    .line 925
    iget v1, v10, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    #@d4
    sub-int/2addr v0, v1

    #@d5
    goto :goto_d9

    #@d6
    .line 927
    :cond_d6
    iget v1, v10, Landroidx/core/widget/NestedScrollView;->mTouchSlop:I

    #@d8
    add-int/2addr v0, v1

    #@d9
    :cond_d9
    :goto_d9
    move v7, v0

    #@da
    .line 930
    iget-boolean v0, v10, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    #@dc
    if-eqz v0, :cond_25c

    #@de
    const/4 v1, 0x0

    #@df
    .line 932
    iget-object v3, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    #@e1
    iget-object v4, v10, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    #@e3
    const/4 v5, 0x0

    #@e4
    move-object/from16 v0, p0

    #@e6
    move v2, v7

    #@e7
    invoke-virtual/range {v0 .. v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    #@ea
    move-result v0

    #@eb
    if-eqz v0, :cond_fb

    #@ed
    .line 934
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    #@ef
    aget v0, v0, v14

    #@f1
    sub-int/2addr v7, v0

    #@f2
    .line 935
    iget v0, v10, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    #@f4
    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    #@f6
    aget v1, v1, v14

    #@f8
    add-int/2addr v0, v1

    #@f9
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    #@fb
    :cond_fb
    move/from16 v16, v7

    #@fd
    .line 939
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    #@ff
    aget v0, v0, v14

    #@101
    sub-int/2addr v6, v0

    #@102
    iput v6, v10, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    #@104
    .line 941
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@107
    move-result v17

    #@108
    .line 942
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    #@10b
    move-result v9

    #@10c
    .line 943
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    #@10f
    move-result v0

    #@110
    if-eqz v0, :cond_11a

    #@112
    if-ne v0, v14, :cond_117

    #@114
    if-lez v9, :cond_117

    #@116
    goto :goto_11a

    #@117
    :cond_117
    move/from16 v18, v12

    #@119
    goto :goto_11c

    #@11a
    :cond_11a
    :goto_11a
    move/from16 v18, v14

    #@11c
    :goto_11c
    const/4 v1, 0x0

    #@11d
    const/4 v3, 0x0

    #@11e
    .line 950
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@121
    move-result v4

    #@122
    const/4 v5, 0x0

    #@123
    const/4 v7, 0x0

    #@124
    const/4 v8, 0x0

    #@125
    const/16 v19, 0x1

    #@127
    move-object/from16 v0, p0

    #@129
    move/from16 v2, v16

    #@12b
    move v6, v9

    #@12c
    move/from16 v22, v9

    #@12e
    move/from16 v9, v19

    #@130
    invoke-virtual/range {v0 .. v9}, Landroidx/core/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    #@133
    move-result v0

    #@134
    if-eqz v0, :cond_13e

    #@136
    .line 951
    invoke-virtual {v10, v12}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    #@139
    move-result v0

    #@13a
    if-nez v0, :cond_13e

    #@13c
    move v8, v14

    #@13d
    goto :goto_13f

    #@13e
    :cond_13e
    move v8, v12

    #@13f
    .line 953
    :goto_13f
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@142
    move-result v0

    #@143
    sub-int v2, v0, v17

    #@145
    sub-int v4, v16, v2

    #@147
    .line 956
    iget-object v7, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    #@149
    aput v12, v7, v14

    #@14b
    const/4 v1, 0x0

    #@14c
    const/4 v3, 0x0

    #@14d
    .line 958
    iget-object v5, v10, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    #@14f
    const/4 v6, 0x0

    #@150
    move-object/from16 v0, p0

    #@152
    invoke-virtual/range {v0 .. v7}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[II[I)V

    #@155
    .line 961
    iget v0, v10, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    #@157
    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->mScrollOffset:[I

    #@159
    aget v1, v1, v14

    #@15b
    sub-int/2addr v0, v1

    #@15c
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    #@15e
    .line 962
    iget v0, v10, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    #@160
    add-int/2addr v0, v1

    #@161
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mNestedYOffset:I

    #@163
    if-eqz v18, :cond_1d2

    #@165
    .line 965
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScrollConsumed:[I

    #@167
    aget v0, v0, v14

    #@169
    sub-int v0, v16, v0

    #@16b
    add-int v1, v17, v0

    #@16d
    if-gez v1, :cond_194

    #@16f
    .line 968
    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@171
    neg-int v0, v0

    #@172
    int-to-float v0, v0

    #@173
    .line 969
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@176
    move-result v2

    #@177
    int-to-float v2, v2

    #@178
    div-float/2addr v0, v2

    #@179
    .line 970
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getX(I)F

    #@17c
    move-result v2

    #@17d
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    #@180
    move-result v3

    #@181
    int-to-float v3, v3

    #@182
    div-float/2addr v2, v3

    #@183
    .line 968
    invoke-static {v1, v0, v2}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    #@186
    .line 971
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@188
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@18b
    move-result v0

    #@18c
    if-nez v0, :cond_1be

    #@18e
    .line 972
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@190
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    #@193
    goto :goto_1be

    #@194
    :cond_194
    move/from16 v2, v22

    #@196
    if-le v1, v2, :cond_1be

    #@198
    .line 975
    iget-object v1, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@19a
    int-to-float v0, v0

    #@19b
    .line 976
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@19e
    move-result v2

    #@19f
    int-to-float v2, v2

    #@1a0
    div-float/2addr v0, v2

    #@1a1
    .line 977
    invoke-virtual {v11, v15}, Landroid/view/MotionEvent;->getX(I)F

    #@1a4
    move-result v2

    #@1a5
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    #@1a8
    move-result v3

    #@1a9
    int-to-float v3, v3

    #@1aa
    div-float/2addr v2, v3

    #@1ab
    const/high16 v3, 0x3f800000    # 1.0f

    #@1ad
    sub-float/2addr v3, v2

    #@1ae
    .line 975
    invoke-static {v1, v0, v3}, Landroidx/core/widget/EdgeEffectCompat;->onPullDistance(Landroid/widget/EdgeEffect;FF)F

    #@1b1
    .line 978
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@1b3
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@1b6
    move-result v0

    #@1b7
    if-nez v0, :cond_1be

    #@1b9
    .line 979
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@1bb
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    #@1be
    .line 982
    :cond_1be
    :goto_1be
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    #@1c0
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@1c3
    move-result v0

    #@1c4
    if-eqz v0, :cond_1ce

    #@1c6
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    #@1c8
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@1cb
    move-result v0

    #@1cc
    if-nez v0, :cond_1d2

    #@1ce
    .line 983
    :cond_1ce
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@1d1
    goto :goto_1d3

    #@1d2
    :cond_1d2
    move v12, v8

    #@1d3
    :goto_1d3
    if-eqz v12, :cond_25c

    #@1d5
    .line 989
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1d7
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    #@1da
    goto/16 :goto_25c

    #@1dc
    .line 994
    :cond_1dc
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@1de
    .line 995
    iget v1, v10, Landroidx/core/widget/NestedScrollView;->mMaximumVelocity:I

    #@1e0
    int-to-float v1, v1

    #@1e1
    const/16 v4, 0x3e8

    #@1e3
    invoke-virtual {v0, v4, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    #@1e6
    .line 996
    iget v1, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    #@1e8
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    #@1eb
    move-result v0

    #@1ec
    float-to-int v0, v0

    #@1ed
    .line 997
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@1f0
    move-result v1

    #@1f1
    iget v4, v10, Landroidx/core/widget/NestedScrollView;->mMinimumVelocity:I

    #@1f3
    if-lt v1, v4, :cond_20a

    #@1f5
    .line 998
    invoke-direct {v10, v0}, Landroidx/core/widget/NestedScrollView;->edgeEffectFling(I)Z

    #@1f8
    move-result v1

    #@1f9
    if-nez v1, :cond_227

    #@1fb
    neg-int v0, v0

    #@1fc
    int-to-float v1, v0

    #@1fd
    .line 999
    invoke-virtual {v10, v2, v1}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    #@200
    move-result v4

    #@201
    if-nez v4, :cond_227

    #@203
    .line 1000
    invoke-virtual {v10, v2, v1, v14}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    #@206
    .line 1001
    invoke-virtual {v10, v0}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    #@209
    goto :goto_227

    #@20a
    .line 1003
    :cond_20a
    iget-object v15, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@20c
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    #@20f
    move-result v16

    #@210
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@213
    move-result v17

    #@214
    const/16 v18, 0x0

    #@216
    const/16 v19, 0x0

    #@218
    const/16 v20, 0x0

    #@21a
    .line 1004
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    #@21d
    move-result v21

    #@21e
    .line 1003
    invoke-virtual/range {v15 .. v21}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    #@221
    move-result v0

    #@222
    if-eqz v0, :cond_227

    #@224
    .line 1005
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@227
    .line 1007
    :cond_227
    :goto_227
    iput v3, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    #@229
    .line 1008
    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->endDrag()V

    #@22c
    goto :goto_25c

    #@22d
    .line 884
    :cond_22d
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@230
    move-result v0

    #@231
    if-nez v0, :cond_234

    #@233
    return v12

    #@234
    .line 887
    :cond_234
    iget-boolean v0, v10, Landroidx/core/widget/NestedScrollView;->mIsBeingDragged:Z

    #@236
    if-eqz v0, :cond_241

    #@238
    .line 888
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    #@23b
    move-result-object v0

    #@23c
    if-eqz v0, :cond_241

    #@23e
    .line 890
    invoke-interface {v0, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    #@241
    .line 898
    :cond_241
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@243
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    #@246
    move-result v0

    #@247
    if-nez v0, :cond_24c

    #@249
    .line 899
    invoke-direct/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->abortAnimatedScroll()V

    #@24c
    .line 903
    :cond_24c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@24f
    move-result v0

    #@250
    float-to-int v0, v0

    #@251
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mLastMotionY:I

    #@253
    .line 904
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@256
    move-result v0

    #@257
    iput v0, v10, Landroidx/core/widget/NestedScrollView;->mActivePointerId:I

    #@259
    .line 905
    invoke-virtual {v10, v1, v12}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    #@25c
    .line 1032
    :cond_25c
    :goto_25c
    iget-object v0, v10, Landroidx/core/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    #@25e
    if-eqz v0, :cond_263

    #@260
    .line 1033
    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@263
    .line 1035
    :cond_263
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    #@266
    return v14
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .registers 22

    #@0
    move-object v0, p0

    #@1
    .line 1256
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getOverScrollMode()I

    #@4
    move-result v1

    #@5
    .line 1258
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    #@8
    move-result v2

    #@9
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    #@c
    move-result v3

    #@d
    const/4 v4, 0x0

    #@e
    const/4 v5, 0x1

    #@f
    if-le v2, v3, :cond_13

    #@11
    move v2, v5

    #@12
    goto :goto_14

    #@13
    :cond_13
    move v2, v4

    #@14
    .line 1260
    :goto_14
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    #@17
    move-result v3

    #@18
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    #@1b
    move-result v6

    #@1c
    if-le v3, v6, :cond_20

    #@1e
    move v3, v5

    #@1f
    goto :goto_21

    #@20
    :cond_20
    move v3, v4

    #@21
    :goto_21
    if-eqz v1, :cond_2a

    #@23
    if-ne v1, v5, :cond_28

    #@25
    if-eqz v2, :cond_28

    #@27
    goto :goto_2a

    #@28
    :cond_28
    move v2, v4

    #@29
    goto :goto_2b

    #@2a
    :cond_2a
    :goto_2a
    move v2, v5

    #@2b
    :goto_2b
    if-eqz v1, :cond_34

    #@2d
    if-ne v1, v5, :cond_32

    #@2f
    if-eqz v3, :cond_32

    #@31
    goto :goto_34

    #@32
    :cond_32
    move v1, v4

    #@33
    goto :goto_35

    #@34
    :cond_34
    :goto_34
    move v1, v5

    #@35
    :goto_35
    add-int v3, p3, p1

    #@37
    if-nez v2, :cond_3b

    #@39
    move v2, v4

    #@3a
    goto :goto_3d

    #@3b
    :cond_3b
    move/from16 v2, p7

    #@3d
    :goto_3d
    add-int v6, p4, p2

    #@3f
    if-nez v1, :cond_43

    #@41
    move v1, v4

    #@42
    goto :goto_45

    #@43
    :cond_43
    move/from16 v1, p8

    #@45
    :goto_45
    neg-int v7, v2

    #@46
    add-int v2, v2, p5

    #@48
    neg-int v8, v1

    #@49
    add-int v1, v1, p6

    #@4b
    if-le v3, v2, :cond_50

    #@4d
    move v3, v2

    #@4e
    move v2, v5

    #@4f
    goto :goto_56

    #@50
    :cond_50
    if-ge v3, v7, :cond_55

    #@52
    move v2, v5

    #@53
    move v3, v7

    #@54
    goto :goto_56

    #@55
    :cond_55
    move v2, v4

    #@56
    :goto_56
    if-le v6, v1, :cond_5b

    #@58
    move v6, v1

    #@59
    move v1, v5

    #@5a
    goto :goto_61

    #@5b
    :cond_5b
    if-ge v6, v8, :cond_60

    #@5d
    move v1, v5

    #@5e
    move v6, v8

    #@5f
    goto :goto_61

    #@60
    :cond_60
    move v1, v4

    #@61
    :goto_61
    if-eqz v1, :cond_80

    #@63
    .line 1300
    invoke-virtual {p0, v5}, Landroidx/core/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    #@66
    move-result v7

    #@67
    if-nez v7, :cond_80

    #@69
    .line 1301
    iget-object v7, v0, Landroidx/core/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    #@6b
    const/4 v8, 0x0

    #@6c
    const/4 v9, 0x0

    #@6d
    const/4 v10, 0x0

    #@6e
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    #@71
    move-result v11

    #@72
    move-object p1, v7

    #@73
    move p2, v3

    #@74
    move p3, v6

    #@75
    move/from16 p4, v8

    #@77
    move/from16 p5, v9

    #@79
    move/from16 p6, v10

    #@7b
    move/from16 p7, v11

    #@7d
    invoke-virtual/range {p1 .. p7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    #@80
    .line 1304
    :cond_80
    invoke-virtual {p0, v3, v6, v2, v1}, Landroidx/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    #@83
    if-nez v2, :cond_87

    #@85
    if-eqz v1, :cond_88

    #@87
    :cond_87
    move v4, v5

    #@88
    :cond_88
    return v4
.end method

.method public pageScroll(I)Z
    .registers 6

    #@0
    const/16 v0, 0x82

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-ne p1, v0, :cond_8

    #@6
    move v0, v1

    #@7
    goto :goto_9

    #@8
    :cond_8
    move v0, v2

    #@9
    .line 1416
    :goto_9
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@c
    move-result v3

    #@d
    if-eqz v0, :cond_42

    #@f
    .line 1419
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@11
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@14
    move-result v2

    #@15
    add-int/2addr v2, v3

    #@16
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@18
    .line 1420
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@1b
    move-result v0

    #@1c
    if-lez v0, :cond_55

    #@1e
    sub-int/2addr v0, v1

    #@1f
    .line 1422
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@22
    move-result-object v0

    #@23
    .line 1423
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    #@29
    .line 1424
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    #@2c
    move-result v0

    #@2d
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@2f
    add-int/2addr v0, v1

    #@30
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@33
    move-result v1

    #@34
    add-int/2addr v0, v1

    #@35
    .line 1425
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@37
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@39
    add-int/2addr v1, v3

    #@3a
    if-le v1, v0, :cond_55

    #@3c
    .line 1426
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@3e
    sub-int/2addr v0, v3

    #@3f
    iput v0, v1, Landroid/graphics/Rect;->top:I

    #@41
    goto :goto_55

    #@42
    .line 1430
    :cond_42
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@44
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@47
    move-result v1

    #@48
    sub-int/2addr v1, v3

    #@49
    iput v1, v0, Landroid/graphics/Rect;->top:I

    #@4b
    .line 1431
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@4d
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@4f
    if-gez v0, :cond_55

    #@51
    .line 1432
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@53
    iput v2, v0, Landroid/graphics/Rect;->top:I

    #@55
    .line 1435
    :cond_55
    :goto_55
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@57
    iget v1, v0, Landroid/graphics/Rect;->top:I

    #@59
    add-int/2addr v1, v3

    #@5a
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    #@5c
    .line 1437
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@5e
    iget v0, v0, Landroid/graphics/Rect;->top:I

    #@60
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    #@62
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    #@64
    invoke-direct {p0, p1, v0, v1}, Landroidx/core/widget/NestedScrollView;->scrollAndFocus(III)Z

    #@67
    move-result p1

    #@68
    return p1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    #@0
    .line 2017
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    #@2
    if-nez v0, :cond_8

    #@4
    .line 2018
    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    #@7
    goto :goto_a

    #@8
    .line 2021
    :cond_8
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    #@a
    .line 2023
    :goto_a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    #@d
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    #@0
    .line 2066
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    .line 2067
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    #@10
    move-result p1

    #@11
    sub-int/2addr v1, p1

    #@12
    .line 2066
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@15
    .line 2069
    invoke-direct {p0, p2, p3}, Landroidx/core/widget/NestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    #@18
    move-result p1

    #@19
    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 752
    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->recycleVelocityTracker()V

    #@5
    .line 754
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    #@8
    return-void
.end method

.method public requestLayout()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 2074
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mIsLayoutDirty:Z

    #@3
    .line 2075
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    #@6
    return-void
.end method

.method public scrollTo(II)V
    .registers 9

    #@0
    .line 2192
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_58

    #@6
    const/4 v0, 0x0

    #@7
    .line 2193
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 2194
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    #@11
    .line 2195
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getWidth()I

    #@14
    move-result v2

    #@15
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingLeft()I

    #@18
    move-result v3

    #@19
    sub-int/2addr v2, v3

    #@1a
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingRight()I

    #@1d
    move-result v3

    #@1e
    sub-int/2addr v2, v3

    #@1f
    .line 2196
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@22
    move-result v3

    #@23
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    #@25
    add-int/2addr v3, v4

    #@26
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    #@28
    add-int/2addr v3, v4

    #@29
    .line 2197
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getHeight()I

    #@2c
    move-result v4

    #@2d
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingTop()I

    #@30
    move-result v5

    #@31
    sub-int/2addr v4, v5

    #@32
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getPaddingBottom()I

    #@35
    move-result v5

    #@36
    sub-int/2addr v4, v5

    #@37
    .line 2198
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@3a
    move-result v0

    #@3b
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    #@3d
    add-int/2addr v0, v5

    #@3e
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    #@40
    add-int/2addr v0, v1

    #@41
    .line 2199
    invoke-static {p1, v2, v3}, Landroidx/core/widget/NestedScrollView;->clamp(III)I

    #@44
    move-result p1

    #@45
    .line 2200
    invoke-static {p2, v4, v0}, Landroidx/core/widget/NestedScrollView;->clamp(III)I

    #@48
    move-result p2

    #@49
    .line 2201
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    #@4c
    move-result v0

    #@4d
    if-ne p1, v0, :cond_55

    #@4f
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@52
    move-result v0

    #@53
    if-eq p2, v0, :cond_58

    #@55
    .line 2202
    :cond_55
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    #@58
    :cond_58
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3

    #@0
    .line 595
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    #@2
    if-eq p1, v0, :cond_9

    #@4
    .line 596
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mFillViewport:Z

    #@6
    .line 597
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    #@9
    :cond_9
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    #@0
    .line 302
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    #@5
    return-void
.end method

.method public setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V
    .registers 2

    #@0
    .line 558
    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->mOnScrollChangeListener:Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;

    #@2
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    #@0
    .line 613
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    #@2
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public final smoothScrollBy(II)V
    .registers 5

    #@0
    const/16 v0, 0xfa

    #@2
    const/4 v1, 0x0

    #@3
    .line 1608
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(IIIZ)V

    #@6
    return-void
.end method

.method public final smoothScrollBy(III)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1619
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(IIIZ)V

    #@4
    return-void
.end method

.method public final smoothScrollTo(II)V
    .registers 5

    #@0
    const/16 v0, 0xfa

    #@2
    const/4 v1, 0x0

    #@3
    .line 1662
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(IIIZ)V

    #@6
    return-void
.end method

.method public final smoothScrollTo(III)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1673
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(IIIZ)V

    #@4
    return-void
.end method

.method smoothScrollTo(IIIZ)V
    .registers 6

    #@0
    .line 1699
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollX()I

    #@3
    move-result v0

    #@4
    sub-int/2addr p1, v0

    #@5
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollY()I

    #@8
    move-result v0

    #@9
    sub-int/2addr p2, v0

    #@a
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(IIIZ)V

    #@d
    return-void
.end method

.method smoothScrollTo(IIZ)V
    .registers 5

    #@0
    const/16 v0, 0xfa

    #@2
    .line 1686
    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(IIIZ)V

    #@5
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 312
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->startNestedScroll(II)Z

    #@4
    move-result p1

    #@5
    return p1
.end method

.method public startNestedScroll(II)Z
    .registers 4

    #@0
    .line 272
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public stopNestedScroll()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 317
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll(I)V

    #@4
    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 3

    #@0
    .line 277
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mChildHelper:Landroidx/core/view/NestedScrollingChildHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    #@5
    return-void
.end method
