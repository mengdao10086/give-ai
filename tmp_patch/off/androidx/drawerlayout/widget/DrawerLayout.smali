.class public Landroidx/drawerlayout/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

# interfaces
.implements Landroidx/customview/widget/Openable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;,
        Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;,
        Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;,
        Landroidx/drawerlayout/widget/DrawerLayout$SavedState;,
        Landroidx/drawerlayout/widget/DrawerLayout$SimpleDrawerListener;,
        Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.drawerlayout.widget.DrawerLayout"

.field private static final ALLOW_EDGE_LOCK:Z = false

.field static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final THEME_ATTRS:[I

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f

.field private static sEdgeSizeUsingSystemGestureInsets:Z


# instance fields
.field private final mActionDismiss:Landroidx/core/view/accessibility/AccessibilityViewCommand;

.field private final mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildHitRect:Landroid/graphics/Rect;

.field private mChildInvertedMatrix:Landroid/graphics/Matrix;

.field private mChildrenCanceledTouch:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroidx/customview/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v1, v0, [I

    #@3
    const v2, 0x1010434

    #@6
    const/4 v3, 0x0

    #@7
    aput v2, v1, v3

    #@9
    .line 110
    sput-object v1, Landroidx/drawerlayout/widget/DrawerLayout;->THEME_ATTRS:[I

    #@b
    new-array v1, v0, [I

    #@d
    const v2, 0x10100b3

    #@10
    aput v2, v1, v3

    #@12
    .line 189
    sput-object v1, Landroidx/drawerlayout/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    #@14
    .line 194
    sput-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    #@16
    .line 197
    sput-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    #@18
    .line 256
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@1a
    const/16 v2, 0x1d

    #@1c
    if-lt v1, v2, :cond_1f

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move v0, v3

    #@20
    :goto_20
    sput-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->sEdgeSizeUsingSystemGestureInsets:Z

    #@22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 328
    invoke-direct {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 332
    sget v0, Landroidx/drawerlayout/R$attr;->drawerLayoutStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    #@0
    .line 336
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 204
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    #@5
    invoke-direct {v0}, Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    #@a
    const/high16 v0, -0x67000000

    #@c
    .line 210
    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    #@e
    .line 212
    new-instance v0, Landroid/graphics/Paint;

    #@10
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@13
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    #@15
    const/4 v0, 0x1

    #@16
    .line 220
    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    #@18
    const/4 v1, 0x3

    #@19
    .line 222
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    #@1b
    .line 223
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    #@1d
    .line 224
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    #@1f
    .line 225
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    #@21
    const/4 v2, 0x0

    #@22
    .line 246
    iput-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    #@24
    .line 247
    iput-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    #@26
    .line 248
    iput-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #@28
    .line 249
    iput-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #@2a
    .line 258
    new-instance v2, Landroidx/drawerlayout/widget/DrawerLayout$1;

    #@2c
    invoke-direct {v2, p0}, Landroidx/drawerlayout/widget/DrawerLayout$1;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    #@2f
    iput-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mActionDismiss:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    #@31
    const/high16 v2, 0x40000

    #@33
    .line 337
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDescendantFocusability(I)V

    #@36
    .line 338
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@3d
    move-result-object v2

    #@3e
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    #@40
    const/high16 v3, 0x42800000    # 64.0f

    #@42
    mul-float/2addr v3, v2

    #@43
    const/high16 v4, 0x3f000000    # 0.5f

    #@45
    add-float/2addr v3, v4

    #@46
    float-to-int v3, v3

    #@47
    .line 339
    iput v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mMinDrawerMargin:I

    #@49
    const/high16 v3, 0x43c80000    # 400.0f

    #@4b
    mul-float/2addr v2, v3

    #@4c
    .line 342
    new-instance v3, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    #@4e
    invoke-direct {v3, p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    #@51
    iput-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    #@53
    .line 343
    new-instance v1, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    #@55
    const/4 v4, 0x5

    #@56
    invoke-direct {v1, p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;I)V

    #@59
    iput-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    #@5b
    const/high16 v4, 0x3f800000    # 1.0f

    #@5d
    .line 345
    invoke-static {p0, v4, v3}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    #@60
    move-result-object v5

    #@61
    iput-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@63
    .line 346
    invoke-virtual {v5, v0}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    #@66
    .line 347
    invoke-virtual {v5, v2}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    #@69
    .line 348
    invoke-virtual {v3, v5}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    #@6c
    .line 350
    invoke-static {p0, v4, v1}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    #@6f
    move-result-object v3

    #@70
    iput-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    #@72
    const/4 v4, 0x2

    #@73
    .line 351
    invoke-virtual {v3, v4}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    #@76
    .line 352
    invoke-virtual {v3, v2}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    #@79
    .line 353
    invoke-virtual {v1, v3}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroidx/customview/widget/ViewDragHelper;)V

    #@7c
    .line 356
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    #@7f
    .line 358
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@82
    .line 361
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;

    #@84
    invoke-direct {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    #@87
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@8a
    const/4 v0, 0x0

    #@8b
    .line 362
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setMotionEventSplittingEnabled(Z)V

    #@8e
    .line 363
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@91
    move-result v1

    #@92
    if-eqz v1, :cond_b6

    #@94
    .line 365
    new-instance v1, Landroidx/drawerlayout/widget/DrawerLayout$2;

    #@96
    invoke-direct {v1, p0}, Landroidx/drawerlayout/widget/DrawerLayout$2;-><init>(Landroidx/drawerlayout/widget/DrawerLayout;)V

    #@99
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    #@9c
    const/16 v1, 0x500

    #@9e
    .line 373
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setSystemUiVisibility(I)V

    #@a1
    .line 375
    sget-object v1, Landroidx/drawerlayout/widget/DrawerLayout;->THEME_ATTRS:[I

    #@a3
    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@a6
    move-result-object v1

    #@a7
    .line 377
    :try_start_a7
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@aa
    move-result-object v2

    #@ab
    iput-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
    :try_end_ad
    .catchall {:try_start_a7 .. :try_end_ad} :catchall_b1

    #@ad
    .line 379
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@b0
    goto :goto_b6

    #@b1
    :catchall_b1
    move-exception p1

    #@b2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    #@b5
    .line 380
    throw p1

    #@b6
    .line 386
    :cond_b6
    :goto_b6
    sget-object v1, Landroidx/drawerlayout/R$styleable;->DrawerLayout:[I

    #@b8
    .line 387
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@bb
    move-result-object p1

    #@bc
    .line 389
    :try_start_bc
    sget p2, Landroidx/drawerlayout/R$styleable;->DrawerLayout_elevation:I

    #@be
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@c1
    move-result p2

    #@c2
    if-eqz p2, :cond_ce

    #@c4
    .line 390
    sget p2, Landroidx/drawerlayout/R$styleable;->DrawerLayout_elevation:I

    #@c6
    const/4 p3, 0x0

    #@c7
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@ca
    move-result p2

    #@cb
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    #@cd
    goto :goto_da

    #@ce
    .line 392
    :cond_ce
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    #@d1
    move-result-object p2

    #@d2
    sget p3, Landroidx/drawerlayout/R$dimen;->def_drawer_elevation:I

    #@d4
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    #@d7
    move-result p2

    #@d8
    iput p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F
    :try_end_da
    .catchall {:try_start_bc .. :try_end_da} :catchall_e5

    #@da
    .line 395
    :goto_da
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@dd
    .line 398
    new-instance p1, Ljava/util/ArrayList;

    #@df
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@e2
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    #@e4
    return-void

    #@e5
    :catchall_e5
    move-exception p2

    #@e6
    .line 395
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@e9
    .line 396
    throw p2
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 6

    #@0
    .line 806
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@3
    move-result-object v0

    #@4
    .line 807
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_16

    #@a
    .line 808
    invoke-direct {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;

    #@d
    move-result-object p1

    #@e
    .line 809
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@11
    move-result p2

    #@12
    .line 810
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    #@15
    goto :goto_36

    #@16
    .line 812
    :cond_16
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollX()I

    #@19
    move-result v0

    #@1a
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@1d
    move-result v1

    #@1e
    sub-int/2addr v0, v1

    #@1f
    int-to-float v0, v0

    #@20
    .line 813
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollY()I

    #@23
    move-result v1

    #@24
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@27
    move-result v2

    #@28
    sub-int/2addr v1, v2

    #@29
    int-to-float v1, v1

    #@2a
    .line 814
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@2d
    .line 815
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@30
    move-result p2

    #@31
    neg-float v0, v0

    #@32
    neg-float v1, v1

    #@33
    .line 816
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@36
    :goto_36
    return p2
.end method

.method private getTransformedMotionEvent(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/view/MotionEvent;
    .registers 6

    #@0
    .line 826
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollX()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    #@7
    move-result v1

    #@8
    sub-int/2addr v0, v1

    #@9
    int-to-float v0, v0

    #@a
    .line 827
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getScrollY()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@11
    move-result v2

    #@12
    sub-int/2addr v1, v2

    #@13
    int-to-float v1, v1

    #@14
    .line 828
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@17
    move-result-object p1

    #@18
    .line 829
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@1b
    .line 830
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@1e
    move-result-object p2

    #@1f
    .line 831
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_3a

    #@25
    .line 832
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    #@27
    if-nez v0, :cond_30

    #@29
    .line 833
    new-instance v0, Landroid/graphics/Matrix;

    #@2b
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@2e
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    #@30
    .line 835
    :cond_30
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    #@32
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    #@35
    .line 836
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildInvertedMatrix:Landroid/graphics/Matrix;

    #@37
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    #@3a
    :cond_3a
    return-object p1
.end method

.method static gravityToString(I)Ljava/lang/String;
    .registers 3

    #@0
    and-int/lit8 v0, p0, 0x3

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_8

    #@5
    const-string p0, "LEFT"

    #@7
    return-object p0

    #@8
    :cond_8
    and-int/lit8 v0, p0, 0x5

    #@a
    const/4 v1, 0x5

    #@b
    if-ne v0, v1, :cond_10

    #@d
    const-string p0, "RIGHT"

    #@f
    return-object p0

    #@10
    .line 1052
    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object p0

    #@14
    return-object p0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .registers 3

    #@0
    .line 1377
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    if-eqz p0, :cond_f

    #@7
    .line 1379
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@a
    move-result p0

    #@b
    const/4 v1, -0x1

    #@c
    if-ne p0, v1, :cond_f

    #@e
    const/4 v0, 0x1

    #@f
    :cond_f
    return v0
.end method

.method private hasPeekingDrawer()Z
    .registers 5

    #@0
    .line 1950
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v0, :cond_1b

    #@8
    .line 1952
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@12
    .line 1953
    iget-boolean v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@14
    if-eqz v3, :cond_18

    #@16
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    :cond_18
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_6

    #@1b
    :cond_1b
    return v1
.end method

.method private hasVisibleDrawer()Z
    .registers 2

    #@0
    .line 2020
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    :goto_9
    return v0
.end method

.method static includeChildForAccessibility(Landroid/view/View;)Z
    .registers 3

    #@0
    .line 2160
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x4

    #@5
    if-eq v0, v1, :cond_10

    #@7
    .line 2162
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    #@a
    move-result p0

    #@b
    const/4 v0, 0x2

    #@c
    if-eq p0, v0, :cond_10

    #@e
    const/4 p0, 0x1

    #@f
    goto :goto_11

    #@10
    :cond_10
    const/4 p0, 0x0

    #@11
    :goto_11
    return p0
.end method

.method private isInBoundsOfChild(FFLandroid/view/View;)Z
    .registers 5

    #@0
    .line 793
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 794
    new-instance v0, Landroid/graphics/Rect;

    #@6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    #@b
    .line 796
    :cond_b
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    #@d
    invoke-virtual {p3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@10
    .line 797
    iget-object p3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildHitRect:Landroid/graphics/Rect;

    #@12
    float-to-int p1, p1

    #@13
    float-to-int p2, p2

    #@14
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    #@17
    move-result p1

    #@18
    return p1
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)V
    .registers 4

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 1243
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 1244
    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    #@b
    :cond_b
    return-void
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 1203
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_10

    #@6
    .line 1206
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v1, :cond_1a

    #@a
    .line 1208
    invoke-direct {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)V

    #@d
    .line 1209
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    #@f
    return-object v0

    #@10
    .line 1212
    :cond_10
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    #@12
    if-eqz v1, :cond_1a

    #@14
    .line 1214
    invoke-direct {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)V

    #@17
    .line 1215
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    #@19
    return-object v0

    #@1a
    .line 1218
    :cond_1a
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #@1c
    return-object v0
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    .line 1222
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_10

    #@6
    .line 1224
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    #@8
    if-eqz v1, :cond_1a

    #@a
    .line 1226
    invoke-direct {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)V

    #@d
    .line 1227
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    #@f
    return-object v0

    #@10
    .line 1230
    :cond_10
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    #@12
    if-eqz v1, :cond_1a

    #@14
    .line 1232
    invoke-direct {p0, v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)V

    #@17
    .line 1233
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    #@19
    return-object v0

    #@1a
    .line 1236
    :cond_1a
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #@1c
    return-object v0
.end method

.method private resolveShadowDrawables()V
    .registers 2

    #@0
    .line 1195
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 1198
    :cond_5
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    #@b
    .line 1199
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    #@11
    return-void
.end method

.method private updateChildAccessibilityAction(Landroid/view/View;)V
    .registers 5

    #@0
    .line 950
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@2
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    #@5
    move-result v0

    #@6
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->removeAccessibilityAction(Landroid/view/View;I)V

    #@9
    .line 951
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1e

    #@f
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@12
    move-result v0

    #@13
    const/4 v1, 0x2

    #@14
    if-eq v0, v1, :cond_1e

    #@16
    .line 952
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    #@18
    const/4 v1, 0x0

    #@19
    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mActionDismiss:Landroidx/core/view/accessibility/AccessibilityViewCommand;

    #@1b
    invoke-static {p1, v0, v1, v2}, Landroidx/core/view/ViewCompat;->replaceAccessibilityAction(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Landroidx/core/view/accessibility/AccessibilityViewCommand;)V

    #@1e
    :cond_1e
    return-void
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .registers 7

    #@0
    .line 934
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_23

    #@7
    .line 936
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    if-nez p2, :cond_13

    #@d
    .line 937
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_17

    #@13
    :cond_13
    if-eqz p2, :cond_1c

    #@15
    if-ne v2, p1, :cond_1c

    #@17
    :cond_17
    const/4 v3, 0x1

    #@18
    .line 940
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@1b
    goto :goto_20

    #@1c
    :cond_1c
    const/4 v3, 0x4

    #@1d
    .line 943
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@20
    :goto_20
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_5

    #@23
    :cond_23
    return-void
.end method


# virtual methods
.method public addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .registers 3

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 546
    :cond_3
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    #@5
    if-nez v0, :cond_e

    #@7
    .line 547
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    #@e
    .line 549
    :cond_e
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    #@10
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    #@0
    .line 1986
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getDescendantFocusability()I

    #@3
    move-result v0

    #@4
    const/high16 v1, 0x60000

    #@6
    if-ne v0, v1, :cond_9

    #@8
    return-void

    #@9
    .line 1992
    :cond_9
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@c
    move-result v0

    #@d
    const/4 v1, 0x0

    #@e
    move v2, v1

    #@f
    move v3, v2

    #@10
    :goto_10
    if-ge v2, v0, :cond_2f

    #@12
    .line 1995
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v4

    #@16
    .line 1996
    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_27

    #@1c
    .line 1997
    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_2c

    #@22
    .line 1999
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    #@25
    const/4 v3, 0x1

    #@26
    goto :goto_2c

    #@27
    .line 2002
    :cond_27
    iget-object v5, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_10

    #@2f
    :cond_2f
    if-nez v3, :cond_4d

    #@31
    .line 2007
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v0

    #@37
    :goto_37
    if-ge v1, v0, :cond_4d

    #@39
    .line 2009
    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Landroid/view/View;

    #@41
    .line 2010
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    #@44
    move-result v3

    #@45
    if-nez v3, :cond_4a

    #@47
    .line 2011
    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    #@4a
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_37

    #@4d
    .line 2016
    :cond_4d
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    #@52
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    #@0
    .line 2132
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 2134
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    #@6
    move-result-object p2

    #@7
    if-nez p2, :cond_15

    #@9
    .line 2135
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@c
    move-result p2

    #@d
    if-eqz p2, :cond_10

    #@f
    goto :goto_15

    #@10
    :cond_10
    const/4 p2, 0x1

    #@11
    .line 2143
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@14
    goto :goto_19

    #@15
    :cond_15
    :goto_15
    const/4 p2, 0x4

    #@16
    .line 2138
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    #@19
    .line 2149
    :goto_19
    sget-boolean p2, Landroidx/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    #@1b
    if-nez p2, :cond_22

    #@1d
    .line 2150
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroidx/drawerlayout/widget/DrawerLayout$ChildAccessibilityDelegate;

    #@1f
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@22
    :cond_22
    return-void
.end method

.method cancelChildViewTouch()V
    .registers 10

    #@0
    .line 2036
    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@2
    if-nez v0, :cond_28

    #@4
    .line 2037
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@7
    move-result-wide v3

    #@8
    const/4 v5, 0x3

    #@9
    const/4 v6, 0x0

    #@a
    const/4 v7, 0x0

    #@b
    const/4 v8, 0x0

    #@c
    move-wide v1, v3

    #@d
    .line 2038
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    #@10
    move-result-object v0

    #@11
    .line 2040
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@14
    move-result v1

    #@15
    const/4 v2, 0x0

    #@16
    :goto_16
    if-ge v2, v1, :cond_22

    #@18
    .line 2042
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@1f
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_16

    #@22
    .line 2044
    :cond_22
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@25
    const/4 v0, 0x1

    #@26
    .line 2045
    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@28
    :cond_28
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .registers 3

    #@0
    .line 991
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    #@3
    move-result p1

    #@4
    and-int/2addr p1, p2

    #@5
    if-ne p1, p2, :cond_9

    #@7
    const/4 p1, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    :goto_a
    return p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    #@0
    .line 1976
    instance-of v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@2
    if-eqz v0, :cond_c

    #@4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    #@7
    move-result p1

    #@8
    if-eqz p1, :cond_c

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

.method public close()V
    .registers 2

    #@0
    const v0, 0x800003

    #@3
    .line 1800
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    #@6
    return-void
.end method

.method public closeDrawer(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 1851
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(IZ)V

    #@4
    return-void
.end method

.method public closeDrawer(IZ)V
    .registers 5

    #@0
    .line 1862
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 1867
    invoke-virtual {p0, v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    #@9
    return-void

    #@a
    .line 1864
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    const-string v1, "No drawer view found with gravity "

    #@10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    .line 1865
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p1

    #@1b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p1

    #@1f
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw p2
.end method

.method public closeDrawer(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 1809
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    #@4
    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .registers 7

    #@0
    .line 1819
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_50

    #@6
    .line 1823
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@c
    .line 1824
    iget-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    #@e
    const/4 v2, 0x0

    #@f
    const/4 v3, 0x0

    #@10
    if-eqz v1, :cond_17

    #@12
    .line 1825
    iput v3, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@14
    .line 1826
    iput v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    #@16
    goto :goto_4c

    #@17
    :cond_17
    const/4 v1, 0x4

    #@18
    if-eqz p2, :cond_43

    #@1a
    .line 1828
    iget p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    #@1c
    or-int/2addr p2, v1

    #@1d
    iput p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    #@1f
    const/4 p2, 0x3

    #@20
    .line 1830
    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@23
    move-result p2

    #@24
    if-eqz p2, :cond_35

    #@26
    .line 1831
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@28
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@2b
    move-result v0

    #@2c
    neg-int v0, v0

    #@2d
    .line 1832
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@30
    move-result v1

    #@31
    .line 1831
    invoke-virtual {p2, p1, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@34
    goto :goto_4c

    #@35
    .line 1834
    :cond_35
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    #@37
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    #@3a
    move-result v0

    #@3b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3e
    move-result v1

    #@3f
    invoke-virtual {p2, p1, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@42
    goto :goto_4c

    #@43
    .line 1837
    :cond_43
    invoke-virtual {p0, p1, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    #@46
    .line 1838
    invoke-virtual {p0, v2, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateDrawerState(ILandroid/view/View;)V

    #@49
    .line 1839
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    #@4c
    .line 1841
    :goto_4c
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    #@4f
    return-void

    #@50
    .line 1820
    :cond_50
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@52
    new-instance v0, Ljava/lang/StringBuilder;

    #@54
    const-string v1, "View "

    #@56
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object p1

    #@5d
    const-string v0, " is not a sliding drawer"

    #@5f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object p1

    #@63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object p1

    #@67
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw p2
.end method

.method public closeDrawers()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 1682
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    #@4
    return-void
.end method

.method closeDrawers(Z)V
    .registers 11

    #@0
    .line 1687
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    move v3, v2

    #@7
    :goto_7
    if-ge v2, v0, :cond_4b

    #@9
    .line 1689
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v4

    #@d
    .line 1690
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@10
    move-result-object v5

    #@11
    check-cast v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@13
    .line 1692
    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@16
    move-result v6

    #@17
    if-eqz v6, :cond_48

    #@19
    if-eqz p1, :cond_20

    #@1b
    iget-boolean v6, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@1d
    if-nez v6, :cond_20

    #@1f
    goto :goto_48

    #@20
    .line 1696
    :cond_20
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    #@23
    move-result v6

    #@24
    const/4 v7, 0x3

    #@25
    .line 1698
    invoke-virtual {p0, v4, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_37

    #@2b
    .line 1699
    iget-object v7, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@2d
    neg-int v6, v6

    #@2e
    .line 1700
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@31
    move-result v8

    #@32
    .line 1699
    invoke-virtual {v7, v4, v6, v8}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@35
    move-result v4

    #@36
    goto :goto_45

    #@37
    .line 1702
    :cond_37
    iget-object v6, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    #@39
    .line 1703
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    #@3c
    move-result v7

    #@3d
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    #@40
    move-result v8

    #@41
    .line 1702
    invoke-virtual {v6, v4, v7, v8}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@44
    move-result v4

    #@45
    :goto_45
    or-int/2addr v3, v4

    #@46
    .line 1706
    iput-boolean v1, v5, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@48
    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_7

    #@4b
    .line 1709
    :cond_4b
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    #@4d
    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    #@50
    .line 1710
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    #@52
    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    #@55
    if-eqz v3, :cond_5a

    #@57
    .line 1713
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    #@5a
    :cond_5a
    return-void
.end method

.method public computeScroll()V
    .registers 5

    #@0
    .line 1359
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x0

    #@6
    :goto_6
    if-ge v2, v0, :cond_1b

    #@8
    .line 1362
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@12
    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@14
    .line 1363
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    #@17
    move-result v1

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    goto :goto_6

    #@1b
    .line 1365
    :cond_1b
    iput v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    #@1d
    .line 1367
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@1f
    const/4 v1, 0x1

    #@20
    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    #@23
    move-result v0

    #@24
    .line 1368
    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    #@26
    invoke-virtual {v2, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    #@29
    move-result v1

    #@2a
    if-nez v0, :cond_2e

    #@2c
    if-eqz v1, :cond_31

    #@2e
    .line 1370
    :cond_2e
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    #@31
    :cond_31
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    #@0
    .line 1586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    #@3
    move-result v0

    #@4
    and-int/lit8 v0, v0, 0x2

    #@6
    if-eqz v0, :cond_47

    #@8
    .line 1587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@b
    move-result v0

    #@c
    const/16 v1, 0xa

    #@e
    if-eq v0, v1, :cond_47

    #@10
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    #@12
    const/4 v1, 0x0

    #@13
    cmpg-float v0, v0, v1

    #@15
    if-gtz v0, :cond_18

    #@17
    goto :goto_47

    #@18
    .line 1592
    :cond_18
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_45

    #@1e
    .line 1594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@21
    move-result v1

    #@22
    .line 1595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@25
    move-result v2

    #@26
    const/4 v3, 0x1

    #@27
    sub-int/2addr v0, v3

    #@28
    :goto_28
    if-ltz v0, :cond_45

    #@2a
    .line 1599
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@2d
    move-result-object v4

    #@2e
    .line 1603
    invoke-direct {p0, v1, v2, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isInBoundsOfChild(FFLandroid/view/View;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_42

    #@34
    invoke-virtual {p0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@37
    move-result v5

    #@38
    if-eqz v5, :cond_3b

    #@3a
    goto :goto_42

    #@3b
    .line 1608
    :cond_3b
    invoke-direct {p0, p1, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_42

    #@41
    return v3

    #@42
    :cond_42
    :goto_42
    add-int/lit8 v0, v0, -0x1

    #@44
    goto :goto_28

    #@45
    :cond_45
    const/4 p1, 0x0

    #@46
    return p1

    #@47
    .line 1589
    :cond_47
    :goto_47
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    #@4a
    move-result p1

    #@4b
    return p1
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .registers 5

    #@0
    .line 882
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@6
    .line 883
    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    #@8
    const/4 v2, 0x1

    #@9
    and-int/2addr v1, v2

    #@a
    if-ne v1, v2, :cond_3f

    #@c
    const/4 v1, 0x0

    #@d
    .line 884
    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    #@f
    .line 886
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    #@11
    if-eqz v0, :cond_28

    #@13
    .line 889
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@16
    move-result v0

    #@17
    sub-int/2addr v0, v2

    #@18
    :goto_18
    if-ltz v0, :cond_28

    #@1a
    .line 891
    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    #@1c
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    #@22
    invoke-interface {v2, p1}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    #@25
    add-int/lit8 v0, v0, -0x1

    #@27
    goto :goto_18

    #@28
    .line 895
    :cond_28
    invoke-direct {p0, p1, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    #@2b
    .line 896
    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildAccessibilityAction(Landroid/view/View;)V

    #@2e
    .line 901
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->hasWindowFocus()Z

    #@31
    move-result p1

    #@32
    if-eqz p1, :cond_3f

    #@34
    .line 902
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getRootView()Landroid/view/View;

    #@37
    move-result-object p1

    #@38
    if-eqz p1, :cond_3f

    #@3a
    const/16 v0, 0x20

    #@3c
    .line 904
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    #@3f
    :cond_3f
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .registers 5

    #@0
    .line 911
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@6
    .line 912
    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    #@8
    const/4 v2, 0x1

    #@9
    and-int/2addr v1, v2

    #@a
    if-nez v1, :cond_38

    #@c
    .line 913
    iput v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    #@e
    .line 914
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    #@10
    if-eqz v0, :cond_27

    #@12
    .line 917
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@15
    move-result v0

    #@16
    sub-int/2addr v0, v2

    #@17
    :goto_17
    if-ltz v0, :cond_27

    #@19
    .line 919
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    #@1b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    #@21
    invoke-interface {v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    #@24
    add-int/lit8 v0, v0, -0x1

    #@26
    goto :goto_17

    #@27
    .line 923
    :cond_27
    invoke-direct {p0, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    #@2a
    .line 924
    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildAccessibilityAction(Landroid/view/View;)V

    #@2d
    .line 927
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->hasWindowFocus()Z

    #@30
    move-result p1

    #@31
    if-eqz p1, :cond_38

    #@33
    const/16 p1, 0x20

    #@35
    .line 928
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    #@38
    :cond_38
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .registers 5

    #@0
    .line 957
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    #@2
    if-eqz v0, :cond_1a

    #@4
    .line 960
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    :goto_a
    if-ltz v0, :cond_1a

    #@c
    .line 962
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    #@e
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    #@14
    invoke-interface {v1, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    #@17
    add-int/lit8 v0, v0, -0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 19

    #@0
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move-object/from16 v2, p2

    #@4
    .line 1453
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    #@7
    move-result v3

    #@8
    .line 1454
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@b
    move-result v4

    #@c
    .line 1455
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    #@f
    move-result v5

    #@10
    .line 1457
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@13
    move-result v6

    #@14
    const/4 v7, 0x3

    #@15
    const/4 v8, 0x0

    #@16
    if-eqz v4, :cond_5f

    #@18
    .line 1459
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@1b
    move-result v9

    #@1c
    move v10, v8

    #@1d
    move v11, v10

    #@1e
    :goto_1e
    if-ge v10, v9, :cond_57

    #@20
    .line 1461
    invoke-virtual {p0, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@23
    move-result-object v12

    #@24
    if-eq v12, v2, :cond_54

    #@26
    .line 1462
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    #@29
    move-result v13

    #@2a
    if-nez v13, :cond_54

    #@2c
    .line 1463
    invoke-static {v12}, Landroidx/drawerlayout/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    #@2f
    move-result v13

    #@30
    if-eqz v13, :cond_54

    #@32
    invoke-virtual {p0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@35
    move-result v13

    #@36
    if-eqz v13, :cond_54

    #@38
    .line 1464
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    #@3b
    move-result v13

    #@3c
    if-ge v13, v3, :cond_3f

    #@3e
    goto :goto_54

    #@3f
    .line 1468
    :cond_3f
    invoke-virtual {p0, v12, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@42
    move-result v13

    #@43
    if-eqz v13, :cond_4d

    #@45
    .line 1469
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    #@48
    move-result v12

    #@49
    if-le v12, v11, :cond_54

    #@4b
    move v11, v12

    #@4c
    goto :goto_54

    #@4d
    .line 1472
    :cond_4d
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    #@50
    move-result v12

    #@51
    if-ge v12, v5, :cond_54

    #@53
    move v5, v12

    #@54
    :cond_54
    :goto_54
    add-int/lit8 v10, v10, 0x1

    #@56
    goto :goto_1e

    #@57
    .line 1476
    :cond_57
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    #@5a
    move-result v3

    #@5b
    invoke-virtual {p1, v11, v8, v5, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@5e
    move v8, v11

    #@5f
    .line 1478
    :cond_5f
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@62
    move-result v9

    #@63
    .line 1479
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@66
    .line 1481
    iget v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    #@68
    const/4 v6, 0x0

    #@69
    cmpl-float v10, v3, v6

    #@6b
    if-lez v10, :cond_95

    #@6d
    if-eqz v4, :cond_95

    #@6f
    .line 1482
    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    #@71
    const/high16 v4, -0x1000000

    #@73
    and-int/2addr v4, v2

    #@74
    ushr-int/lit8 v4, v4, 0x18

    #@76
    int-to-float v4, v4

    #@77
    mul-float/2addr v4, v3

    #@78
    float-to-int v3, v4

    #@79
    shl-int/lit8 v3, v3, 0x18

    #@7b
    const v4, 0xffffff

    #@7e
    and-int/2addr v2, v4

    #@7f
    or-int/2addr v2, v3

    #@80
    .line 1485
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    #@82
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    #@85
    int-to-float v2, v8

    #@86
    const/4 v3, 0x0

    #@87
    int-to-float v4, v5

    #@88
    .line 1487
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getHeight()I

    #@8b
    move-result v5

    #@8c
    int-to-float v5, v5

    #@8d
    iget-object v6, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    #@8f
    move-object v1, p1

    #@90
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@93
    goto/16 :goto_11f

    #@95
    .line 1488
    :cond_95
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    #@97
    const/high16 v4, 0x437f0000    # 255.0f

    #@99
    const/high16 v5, 0x3f800000    # 1.0f

    #@9b
    if-eqz v3, :cond_d9

    #@9d
    .line 1489
    invoke-virtual {p0, v2, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@a0
    move-result v3

    #@a1
    if-eqz v3, :cond_d9

    #@a3
    .line 1490
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    #@a5
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@a8
    move-result v3

    #@a9
    .line 1491
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    #@ac
    move-result v7

    #@ad
    .line 1492
    iget-object v8, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@af
    invoke-virtual {v8}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    #@b2
    move-result v8

    #@b3
    int-to-float v10, v7

    #@b4
    int-to-float v8, v8

    #@b5
    div-float/2addr v10, v8

    #@b6
    .line 1494
    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    #@b9
    move-result v5

    #@ba
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    #@bd
    move-result v5

    #@be
    .line 1495
    iget-object v6, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    #@c0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    #@c3
    move-result v8

    #@c4
    add-int/2addr v3, v7

    #@c5
    .line 1496
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    #@c8
    move-result v2

    #@c9
    .line 1495
    invoke-virtual {v6, v7, v8, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@cc
    .line 1497
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    #@ce
    mul-float/2addr v5, v4

    #@cf
    float-to-int v3, v5

    #@d0
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@d3
    .line 1498
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    #@d5
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@d8
    goto :goto_11f

    #@d9
    .line 1499
    :cond_d9
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    #@db
    if-eqz v3, :cond_11f

    #@dd
    const/4 v3, 0x5

    #@de
    .line 1500
    invoke-virtual {p0, v2, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@e1
    move-result v3

    #@e2
    if-eqz v3, :cond_11f

    #@e4
    .line 1501
    iget-object v3, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    #@e6
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@e9
    move-result v3

    #@ea
    .line 1502
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    #@ed
    move-result v7

    #@ee
    .line 1503
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    #@f1
    move-result v8

    #@f2
    sub-int/2addr v8, v7

    #@f3
    .line 1504
    iget-object v10, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    #@f5
    invoke-virtual {v10}, Landroidx/customview/widget/ViewDragHelper;->getEdgeSize()I

    #@f8
    move-result v10

    #@f9
    int-to-float v8, v8

    #@fa
    int-to-float v10, v10

    #@fb
    div-float/2addr v8, v10

    #@fc
    .line 1506
    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    #@ff
    move-result v5

    #@100
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    #@103
    move-result v5

    #@104
    .line 1507
    iget-object v6, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    #@106
    sub-int v3, v7, v3

    #@108
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    #@10b
    move-result v8

    #@10c
    .line 1508
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    #@10f
    move-result v2

    #@110
    .line 1507
    invoke-virtual {v6, v3, v8, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@113
    .line 1509
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    #@115
    mul-float/2addr v5, v4

    #@116
    float-to-int v3, v5

    #@117
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@11a
    .line 1510
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    #@11c
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@11f
    :cond_11f
    :goto_11f
    return v9
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .registers 6

    #@0
    .line 1027
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    .line 1026
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result p1

    #@8
    and-int/lit8 p1, p1, 0x7

    #@a
    .line 1028
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x0

    #@f
    :goto_f
    if-ge v1, v0, :cond_21

    #@11
    .line 1030
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v2

    #@15
    .line 1031
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    #@18
    move-result v3

    #@19
    and-int/lit8 v3, v3, 0x7

    #@1b
    if-ne v3, p1, :cond_1e

    #@1d
    return-object v2

    #@1e
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_f

    #@21
    :cond_21
    const/4 p1, 0x0

    #@22
    return-object p1
.end method

.method findOpenDrawer()Landroid/view/View;
    .registers 6

    #@0
    .line 996
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_1b

    #@7
    .line 998
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 999
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@11
    .line 1000
    iget v3, v3, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    #@13
    const/4 v4, 0x1

    #@14
    and-int/2addr v3, v4

    #@15
    if-ne v3, v4, :cond_18

    #@17
    return-object v2

    #@18
    :cond_18
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_5

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    return-object v0
.end method

.method findVisibleDrawer()Landroid/view/View;
    .registers 5

    #@0
    .line 2024
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_1b

    #@7
    .line 2026
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 2027
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_18

    #@11
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_18

    #@17
    return-object v2

    #@18
    :cond_18
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_5

    #@1b
    :cond_1b
    const/4 v0, 0x0

    #@1c
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    #@0
    .line 1962
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@2
    const/4 v1, -0x1

    #@3
    invoke-direct {v0, v1, v1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    #@0
    .line 1981
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    #@0
    .line 1967
    instance-of v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@2
    if-eqz v0, :cond_c

    #@4
    .line 1968
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@6
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@8
    invoke-direct {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;)V

    #@b
    goto :goto_1d

    #@c
    .line 1969
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@e
    if-eqz v0, :cond_18

    #@10
    .line 1970
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@12
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    #@14
    invoke-direct {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    #@17
    goto :goto_1d

    #@18
    .line 1971
    :cond_18
    new-instance v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@1a
    invoke-direct {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@1d
    :goto_1d
    return-object v0
.end method

.method public getDrawerElevation()F
    .registers 2

    #@0
    .line 425
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 426
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    #@6
    return v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    return v0
.end method

.method public getDrawerLockMode(I)I
    .registers 5

    #@0
    .line 684
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x3

    #@5
    if-eq p1, v1, :cond_42

    #@7
    const/4 v2, 0x5

    #@8
    if-eq p1, v2, :cond_33

    #@a
    const v2, 0x800003

    #@d
    if-eq p1, v2, :cond_24

    #@f
    const v2, 0x800005

    #@12
    if-eq p1, v2, :cond_15

    #@14
    goto :goto_51

    #@15
    .line 718
    :cond_15
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    #@17
    if-eq p1, v1, :cond_1a

    #@19
    return p1

    #@1a
    :cond_1a
    if-nez v0, :cond_1f

    #@1c
    .line 722
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    #@1e
    goto :goto_21

    #@1f
    :cond_1f
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    #@21
    :goto_21
    if-eq p1, v1, :cond_51

    #@23
    return p1

    #@24
    .line 708
    :cond_24
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    #@26
    if-eq p1, v1, :cond_29

    #@28
    return p1

    #@29
    :cond_29
    if-nez v0, :cond_2e

    #@2b
    .line 712
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    #@2d
    goto :goto_30

    #@2e
    :cond_2e
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    #@30
    :goto_30
    if-eq p1, v1, :cond_51

    #@32
    return p1

    #@33
    .line 698
    :cond_33
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    #@35
    if-eq p1, v1, :cond_38

    #@37
    return p1

    #@38
    :cond_38
    if-nez v0, :cond_3d

    #@3a
    .line 702
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    #@3c
    goto :goto_3f

    #@3d
    :cond_3d
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    #@3f
    :goto_3f
    if-eq p1, v1, :cond_51

    #@41
    return p1

    #@42
    .line 688
    :cond_42
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    #@44
    if-eq p1, v1, :cond_47

    #@46
    return p1

    #@47
    :cond_47
    if-nez v0, :cond_4c

    #@49
    .line 692
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    #@4b
    goto :goto_4e

    #@4c
    :cond_4c
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    #@4e
    :goto_4e
    if-eq p1, v1, :cond_51

    #@50
    return p1

    #@51
    :cond_51
    :goto_51
    const/4 p1, 0x0

    #@52
    return p1
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .registers 5

    #@0
    .line 741
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_13

    #@6
    .line 744
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@c
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    #@e
    .line 745
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(I)I

    #@11
    move-result p1

    #@12
    return p1

    #@13
    .line 742
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    const-string v2, "View "

    #@19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object p1

    #@20
    const-string v1, " is not a drawer"

    #@22
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object p1

    #@26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object p1

    #@2a
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 779
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    .line 778
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result p1

    #@8
    const/4 v0, 0x3

    #@9
    if-ne p1, v0, :cond_e

    #@b
    .line 781
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    #@d
    return-object p1

    #@e
    :cond_e
    const/4 v0, 0x5

    #@f
    if-ne p1, v0, :cond_14

    #@11
    .line 783
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    #@13
    return-object p1

    #@14
    :cond_14
    const/4 p1, 0x0

    #@15
    return-object p1
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .registers 3

    #@0
    .line 986
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@6
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    #@8
    .line 987
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@b
    move-result v0

    #@c
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@f
    move-result p1

    #@10
    return p1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .registers 2

    #@0
    .line 978
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@6
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@8
    return p1
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 1402
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .registers 2

    #@0
    .line 1516
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@6
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    #@8
    if-nez p1, :cond_c

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

.method public isDrawerOpen(I)Z
    .registers 2

    #@0
    .line 1911
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_b

    #@6
    .line 1913
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    #@9
    move-result p1

    #@a
    return p1

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return p1
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .registers 5

    #@0
    .line 1881
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_15

    #@6
    .line 1884
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@c
    .line 1885
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    #@e
    const/4 v0, 0x1

    #@f
    and-int/2addr p1, v0

    #@10
    if-ne p1, v0, :cond_13

    #@12
    goto :goto_14

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    :goto_14
    return v0

    #@15
    .line 1882
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    const-string v2, "View "

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    const-string v1, " is not a drawer"

    #@24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object p1

    #@28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object p1

    #@2c
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .registers 4

    #@0
    .line 1520
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@6
    iget v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    #@8
    .line 1522
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@b
    move-result p1

    #@c
    .line 1521
    invoke-static {v0, p1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@f
    move-result p1

    #@10
    and-int/lit8 v0, p1, 0x3

    #@12
    const/4 v1, 0x1

    #@13
    if-eqz v0, :cond_16

    #@15
    return v1

    #@16
    :cond_16
    and-int/lit8 p1, p1, 0x5

    #@18
    if-eqz p1, :cond_1b

    #@1a
    return v1

    #@1b
    :cond_1b
    const/4 p1, 0x0

    #@1c
    return p1
.end method

.method public isDrawerVisible(I)Z
    .registers 2

    #@0
    .line 1942
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_b

    #@6
    .line 1944
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    #@9
    move-result p1

    #@a
    return p1

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return p1
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .registers 5

    #@0
    .line 1927
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_17

    #@6
    .line 1930
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@c
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@e
    const/4 v0, 0x0

    #@f
    cmpl-float p1, p1, v0

    #@11
    if-lez p1, :cond_15

    #@13
    const/4 p1, 0x1

    #@14
    goto :goto_16

    #@15
    :cond_15
    const/4 p1, 0x0

    #@16
    :goto_16
    return p1

    #@17
    .line 1928
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    const-string v2, "View "

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object p1

    #@24
    const-string v1, " is not a drawer"

    #@26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object p1

    #@2e
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0
.end method

.method public isOpen()Z
    .registers 2

    #@0
    const v0, 0x800003

    #@3
    .line 1898
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .registers 5

    #@0
    .line 1008
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    .line 1009
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@7
    move-result v1

    #@8
    int-to-float v1, v1

    #@9
    mul-float/2addr v0, v1

    #@a
    float-to-int v0, v0

    #@b
    mul-float/2addr v1, p2

    #@c
    float-to-int v1, v1

    #@d
    sub-int/2addr v1, v0

    #@e
    const/4 v0, 0x3

    #@f
    .line 1015
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_16

    #@15
    goto :goto_17

    #@16
    :cond_16
    neg-int v1, v1

    #@17
    .line 1014
    :goto_17
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    #@1a
    .line 1016
    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    #@1d
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 1063
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 1064
    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    #@6
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    #@0
    .line 1057
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 1058
    iput-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    #@6
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    #@0
    .line 1435
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    #@3
    .line 1436
    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    #@5
    if-eqz v0, :cond_28

    #@7
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@9
    if-eqz v0, :cond_28

    #@b
    .line 1439
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    #@d
    const/4 v1, 0x0

    #@e
    if-eqz v0, :cond_17

    #@10
    .line 1440
    check-cast v0, Landroid/view/WindowInsets;

    #@12
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@15
    move-result v0

    #@16
    goto :goto_18

    #@17
    :cond_17
    move v0, v1

    #@18
    :goto_18
    if-lez v0, :cond_28

    #@1a
    .line 1445
    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@1c
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    #@1f
    move-result v3

    #@20
    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@23
    .line 1446
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@25
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@28
    :cond_28
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    #@0
    .line 1537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@3
    move-result v0

    #@4
    .line 1540
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@6
    invoke-virtual {v1, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@9
    move-result v1

    #@a
    iget-object v2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    #@c
    .line 1541
    invoke-virtual {v2, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    #@f
    move-result v2

    #@10
    or-int/2addr v1, v2

    #@11
    const/4 v2, 0x1

    #@12
    const/4 v3, 0x0

    #@13
    if-eqz v0, :cond_38

    #@15
    if-eq v0, v2, :cond_31

    #@17
    const/4 p1, 0x2

    #@18
    const/4 v4, 0x3

    #@19
    if-eq v0, p1, :cond_1e

    #@1b
    if-eq v0, v4, :cond_31

    #@1d
    goto :goto_36

    #@1e
    .line 1563
    :cond_1e
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@20
    invoke-virtual {p1, v4}, Landroidx/customview/widget/ViewDragHelper;->checkTouchSlop(I)Z

    #@23
    move-result p1

    #@24
    if-eqz p1, :cond_36

    #@26
    .line 1564
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    #@28
    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    #@2b
    .line 1565
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightCallback:Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    #@2d
    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    #@30
    goto :goto_36

    #@31
    .line 1572
    :cond_31
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    #@34
    .line 1573
    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@36
    :cond_36
    :goto_36
    move p1, v3

    #@37
    goto :goto_60

    #@38
    .line 1547
    :cond_38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@3b
    move-result v0

    #@3c
    .line 1548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@3f
    move-result p1

    #@40
    .line 1549
    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    #@42
    .line 1550
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    #@44
    .line 1551
    iget v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimOpacity:F

    #@46
    const/4 v5, 0x0

    #@47
    cmpl-float v4, v4, v5

    #@49
    if-lez v4, :cond_5d

    #@4b
    .line 1552
    iget-object v4, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@4d
    float-to-int v0, v0

    #@4e
    float-to-int p1, p1

    #@4f
    invoke-virtual {v4, v0, p1}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@52
    move-result-object p1

    #@53
    if-eqz p1, :cond_5d

    #@55
    .line 1553
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@58
    move-result p1

    #@59
    if-eqz p1, :cond_5d

    #@5b
    move p1, v2

    #@5c
    goto :goto_5e

    #@5d
    :cond_5d
    move p1, v3

    #@5e
    .line 1557
    :goto_5e
    iput-boolean v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@60
    :goto_60
    if-nez v1, :cond_70

    #@62
    if-nez p1, :cond_70

    #@64
    .line 1577
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->hasPeekingDrawer()Z

    #@67
    move-result p1

    #@68
    if-nez p1, :cond_70

    #@6a
    iget-boolean p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@6c
    if-eqz p1, :cond_6f

    #@6e
    goto :goto_70

    #@6f
    :cond_6f
    move v2, v3

    #@70
    :cond_70
    :goto_70
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    if-ne p1, v0, :cond_e

    #@3
    .line 2051
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->hasVisibleDrawer()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_e

    #@9
    .line 2052
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    #@c
    const/4 p1, 0x1

    #@d
    return p1

    #@e
    .line 2055
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@11
    move-result p1

    #@12
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    if-ne p1, v0, :cond_18

    #@3
    .line 2061
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    #@6
    move-result-object p1

    #@7
    if-eqz p1, :cond_12

    #@9
    .line 2062
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@c
    move-result p2

    #@d
    if-nez p2, :cond_12

    #@f
    .line 2063
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    #@12
    :cond_12
    if-eqz p1, :cond_16

    #@14
    const/4 p1, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    const/4 p1, 0x0

    #@17
    :goto_17
    return p1

    #@18
    .line 2067
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@1b
    move-result p1

    #@1c
    return p1
.end method

.method protected onLayout(ZIIII)V
    .registers 22

    #@0
    move-object/from16 v0, p0

    #@2
    const/4 v1, 0x1

    #@3
    .line 1250
    iput-boolean v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    #@5
    sub-int v2, p4, p2

    #@7
    .line 1252
    invoke-virtual/range {p0 .. p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@a
    move-result v3

    #@b
    const/4 v4, 0x0

    #@c
    move v5, v4

    #@d
    :goto_d
    if-ge v5, v3, :cond_d5

    #@f
    .line 1254
    invoke-virtual {v0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v6

    #@13
    .line 1256
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@16
    move-result v7

    #@17
    const/16 v8, 0x8

    #@19
    if-ne v7, v8, :cond_1d

    #@1b
    goto/16 :goto_d0

    #@1d
    .line 1260
    :cond_1d
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@20
    move-result-object v7

    #@21
    check-cast v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@23
    .line 1262
    invoke-virtual {v0, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_40

    #@29
    .line 1263
    iget v8, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    #@2b
    iget v9, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@2d
    iget v10, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    #@2f
    .line 1264
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    #@32
    move-result v11

    #@33
    add-int/2addr v10, v11

    #@34
    iget v7, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@36
    .line 1265
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    #@39
    move-result v11

    #@3a
    add-int/2addr v7, v11

    #@3b
    .line 1263
    invoke-virtual {v6, v8, v9, v10, v7}, Landroid/view/View;->layout(IIII)V

    #@3e
    goto/16 :goto_d0

    #@40
    .line 1267
    :cond_40
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    #@43
    move-result v8

    #@44
    .line 1268
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    #@47
    move-result v9

    #@48
    const/4 v10, 0x3

    #@49
    .line 1272
    invoke-virtual {v0, v6, v10}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@4c
    move-result v10

    #@4d
    if-eqz v10, :cond_5b

    #@4f
    neg-int v10, v8

    #@50
    int-to-float v11, v8

    #@51
    .line 1273
    iget v12, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@53
    mul-float/2addr v12, v11

    #@54
    float-to-int v12, v12

    #@55
    add-int/2addr v10, v12

    #@56
    add-int v12, v8, v10

    #@58
    int-to-float v12, v12

    #@59
    div-float/2addr v12, v11

    #@5a
    goto :goto_67

    #@5b
    :cond_5b
    int-to-float v10, v8

    #@5c
    .line 1276
    iget v11, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@5e
    mul-float/2addr v11, v10

    #@5f
    float-to-int v11, v11

    #@60
    sub-int v11, v2, v11

    #@62
    sub-int v12, v2, v11

    #@64
    int-to-float v12, v12

    #@65
    div-float/2addr v12, v10

    #@66
    move v10, v11

    #@67
    .line 1280
    :goto_67
    iget v11, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@69
    cmpl-float v11, v12, v11

    #@6b
    if-eqz v11, :cond_6f

    #@6d
    move v11, v1

    #@6e
    goto :goto_70

    #@6f
    :cond_6f
    move v11, v4

    #@70
    .line 1282
    :goto_70
    iget v13, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    #@72
    and-int/lit8 v13, v13, 0x70

    #@74
    const/16 v14, 0x10

    #@76
    if-eq v13, v14, :cond_99

    #@78
    const/16 v14, 0x50

    #@7a
    if-eq v13, v14, :cond_86

    #@7c
    .line 1287
    iget v13, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@7e
    add-int/2addr v8, v10

    #@7f
    iget v14, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@81
    add-int/2addr v14, v9

    #@82
    invoke-virtual {v6, v10, v13, v8, v14}, Landroid/view/View;->layout(IIII)V

    #@85
    goto :goto_b8

    #@86
    :cond_86
    sub-int v9, p5, p3

    #@88
    .line 1294
    iget v13, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@8a
    sub-int v13, v9, v13

    #@8c
    .line 1295
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    #@8f
    move-result v14

    #@90
    sub-int/2addr v13, v14

    #@91
    add-int/2addr v8, v10

    #@92
    iget v14, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@94
    sub-int/2addr v9, v14

    #@95
    .line 1294
    invoke-virtual {v6, v10, v13, v8, v9}, Landroid/view/View;->layout(IIII)V

    #@98
    goto :goto_b8

    #@99
    :cond_99
    sub-int v13, p5, p3

    #@9b
    sub-int v14, v13, v9

    #@9d
    .line 1303
    div-int/lit8 v14, v14, 0x2

    #@9f
    .line 1307
    iget v15, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@a1
    if-ge v14, v15, :cond_a6

    #@a3
    .line 1308
    iget v14, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@a5
    goto :goto_b3

    #@a6
    :cond_a6
    add-int v15, v14, v9

    #@a8
    .line 1309
    iget v1, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@aa
    sub-int v1, v13, v1

    #@ac
    if-le v15, v1, :cond_b3

    #@ae
    .line 1310
    iget v1, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@b0
    sub-int/2addr v13, v1

    #@b1
    sub-int v14, v13, v9

    #@b3
    :cond_b3
    :goto_b3
    add-int/2addr v8, v10

    #@b4
    add-int/2addr v9, v14

    #@b5
    .line 1312
    invoke-virtual {v6, v10, v14, v8, v9}, Landroid/view/View;->layout(IIII)V

    #@b8
    :goto_b8
    if-eqz v11, :cond_bd

    #@ba
    .line 1319
    invoke-virtual {v0, v6, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    #@bd
    .line 1322
    :cond_bd
    iget v1, v7, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@bf
    const/4 v7, 0x0

    #@c0
    cmpl-float v1, v1, v7

    #@c2
    if-lez v1, :cond_c6

    #@c4
    move v1, v4

    #@c5
    goto :goto_c7

    #@c6
    :cond_c6
    const/4 v1, 0x4

    #@c7
    .line 1323
    :goto_c7
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@ca
    move-result v7

    #@cb
    if-eq v7, v1, :cond_d0

    #@cd
    .line 1324
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    #@d0
    :cond_d0
    :goto_d0
    add-int/lit8 v5, v5, 0x1

    #@d2
    const/4 v1, 0x1

    #@d3
    goto/16 :goto_d

    #@d5
    .line 1329
    :cond_d5
    sget-boolean v1, Landroidx/drawerlayout/widget/DrawerLayout;->sEdgeSizeUsingSystemGestureInsets:Z

    #@d7
    if-eqz v1, :cond_105

    #@d9
    .line 1331
    invoke-virtual/range {p0 .. p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    #@dc
    move-result-object v1

    #@dd
    if-eqz v1, :cond_105

    #@df
    .line 1334
    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    #@e2
    move-result-object v1

    #@e3
    .line 1335
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemGestureInsets()Landroidx/core/graphics/Insets;

    #@e6
    move-result-object v1

    #@e7
    .line 1339
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@e9
    .line 1340
    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->getDefaultEdgeSize()I

    #@ec
    move-result v3

    #@ed
    iget v5, v1, Landroidx/core/graphics/Insets;->left:I

    #@ef
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    #@f2
    move-result v3

    #@f3
    .line 1339
    invoke-virtual {v2, v3}, Landroidx/customview/widget/ViewDragHelper;->setEdgeSize(I)V

    #@f6
    .line 1341
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    #@f8
    .line 1342
    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->getDefaultEdgeSize()I

    #@fb
    move-result v3

    #@fc
    iget v1, v1, Landroidx/core/graphics/Insets;->right:I

    #@fe
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    #@101
    move-result v1

    #@102
    .line 1341
    invoke-virtual {v2, v1}, Landroidx/customview/widget/ViewDragHelper;->setEdgeSize(I)V

    #@105
    .line 1346
    :cond_105
    iput-boolean v4, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    #@107
    .line 1347
    iput-boolean v4, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    #@109
    return-void
.end method

.method protected onMeasure(II)V
    .registers 20

    #@0
    move-object/from16 v0, p0

    #@2
    .line 1072
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@5
    move-result v1

    #@6
    .line 1073
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@9
    move-result v2

    #@a
    .line 1074
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@d
    move-result v3

    #@e
    .line 1075
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@11
    move-result v4

    #@12
    const/high16 v5, 0x40000000    # 2.0f

    #@14
    if-ne v1, v5, :cond_18

    #@16
    if-eq v2, v5, :cond_26

    #@18
    .line 1078
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/drawerlayout/widget/DrawerLayout;->isInEditMode()Z

    #@1b
    move-result v6

    #@1c
    if-eqz v6, :cond_19c

    #@1e
    const/16 v6, 0x12c

    #@20
    if-nez v1, :cond_23

    #@22
    move v3, v6

    #@23
    :cond_23
    if-nez v2, :cond_26

    #@25
    move v4, v6

    #@26
    .line 1095
    :cond_26
    invoke-virtual {v0, v3, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->setMeasuredDimension(II)V

    #@29
    .line 1097
    iget-object v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    #@2b
    const/4 v6, 0x0

    #@2c
    if-eqz v1, :cond_36

    #@2e
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@31
    move-result v1

    #@32
    if-eqz v1, :cond_36

    #@34
    const/4 v1, 0x1

    #@35
    goto :goto_37

    #@36
    :cond_36
    move v1, v6

    #@37
    .line 1098
    :goto_37
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3a
    move-result v7

    #@3b
    .line 1104
    invoke-virtual/range {p0 .. p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@3e
    move-result v8

    #@3f
    move v9, v6

    #@40
    move v10, v9

    #@41
    move v11, v10

    #@42
    :goto_42
    if-ge v9, v8, :cond_19b

    #@44
    .line 1106
    invoke-virtual {v0, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@47
    move-result-object v12

    #@48
    .line 1108
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    #@4b
    move-result v13

    #@4c
    const/16 v14, 0x8

    #@4e
    if-ne v13, v14, :cond_52

    #@50
    goto/16 :goto_f8

    #@52
    .line 1112
    :cond_52
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@55
    move-result-object v13

    #@56
    check-cast v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@58
    const/4 v14, 0x3

    #@59
    if-eqz v1, :cond_d7

    #@5b
    .line 1115
    iget v15, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    #@5d
    invoke-static {v15, v7}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@60
    move-result v15

    #@61
    .line 1116
    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    #@64
    move-result v16

    #@65
    const/4 v2, 0x5

    #@66
    if-eqz v16, :cond_95

    #@68
    .line 1118
    iget-object v5, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    #@6a
    check-cast v5, Landroid/view/WindowInsets;

    #@6c
    if-ne v15, v14, :cond_7f

    #@6e
    .line 1120
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    #@71
    move-result v2

    #@72
    .line 1121
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@75
    move-result v15

    #@76
    .line 1122
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@79
    move-result v14

    #@7a
    .line 1120
    invoke-virtual {v5, v2, v15, v6, v14}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@7d
    move-result-object v5

    #@7e
    goto :goto_91

    #@7f
    :cond_7f
    if-ne v15, v2, :cond_91

    #@81
    .line 1124
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@84
    move-result v2

    #@85
    .line 1125
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@88
    move-result v14

    #@89
    .line 1126
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@8c
    move-result v15

    #@8d
    .line 1124
    invoke-virtual {v5, v6, v2, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@90
    move-result-object v5

    #@91
    .line 1128
    :cond_91
    :goto_91
    invoke-virtual {v12, v5}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    #@94
    goto :goto_d7

    #@95
    .line 1132
    :cond_95
    iget-object v5, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    #@97
    check-cast v5, Landroid/view/WindowInsets;

    #@99
    const/4 v14, 0x3

    #@9a
    if-ne v15, v14, :cond_ad

    #@9c
    .line 1134
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    #@9f
    move-result v2

    #@a0
    .line 1135
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@a3
    move-result v14

    #@a4
    .line 1136
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@a7
    move-result v15

    #@a8
    .line 1134
    invoke-virtual {v5, v2, v14, v6, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@ab
    move-result-object v5

    #@ac
    goto :goto_bf

    #@ad
    :cond_ad
    if-ne v15, v2, :cond_bf

    #@af
    .line 1138
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@b2
    move-result v2

    #@b3
    .line 1139
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@b6
    move-result v14

    #@b7
    .line 1140
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@ba
    move-result v15

    #@bb
    .line 1138
    invoke-virtual {v5, v6, v2, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@be
    move-result-object v5

    #@bf
    .line 1142
    :cond_bf
    :goto_bf
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    #@c2
    move-result v2

    #@c3
    iput v2, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    #@c5
    .line 1143
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@c8
    move-result v2

    #@c9
    iput v2, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@cb
    .line 1144
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@ce
    move-result v2

    #@cf
    iput v2, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    #@d1
    .line 1145
    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@d4
    move-result v2

    #@d5
    iput v2, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@d7
    .line 1150
    :cond_d7
    :goto_d7
    invoke-virtual {v0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@da
    move-result v2

    #@db
    if-eqz v2, :cond_fe

    #@dd
    .line 1152
    iget v2, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    #@df
    sub-int v2, v3, v2

    #@e1
    iget v5, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    #@e3
    sub-int/2addr v2, v5

    #@e4
    const/high16 v5, 0x40000000    # 2.0f

    #@e6
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@e9
    move-result v2

    #@ea
    .line 1154
    iget v14, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@ec
    sub-int v14, v4, v14

    #@ee
    iget v13, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@f0
    sub-int/2addr v14, v13

    #@f1
    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@f4
    move-result v13

    #@f5
    .line 1156
    invoke-virtual {v12, v2, v13}, Landroid/view/View;->measure(II)V

    #@f8
    :goto_f8
    move/from16 v15, p1

    #@fa
    move/from16 v13, p2

    #@fc
    goto/16 :goto_170

    #@fe
    :cond_fe
    const/high16 v5, 0x40000000    # 2.0f

    #@100
    .line 1157
    invoke-virtual {v0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@103
    move-result v2

    #@104
    if-eqz v2, :cond_176

    #@106
    .line 1158
    sget-boolean v2, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    #@108
    if-eqz v2, :cond_117

    #@10a
    .line 1159
    invoke-static {v12}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    #@10d
    move-result v2

    #@10e
    iget v14, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    #@110
    cmpl-float v2, v2, v14

    #@112
    if-eqz v2, :cond_117

    #@114
    .line 1160
    invoke-static {v12, v14}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    #@117
    .line 1164
    :cond_117
    invoke-virtual {v0, v12}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    #@11a
    move-result v2

    #@11b
    and-int/lit8 v2, v2, 0x7

    #@11d
    const/4 v14, 0x3

    #@11e
    if-ne v2, v14, :cond_122

    #@120
    const/4 v14, 0x1

    #@121
    goto :goto_123

    #@122
    :cond_122
    move v14, v6

    #@123
    :goto_123
    if-eqz v14, :cond_127

    #@125
    if-nez v10, :cond_12c

    #@127
    :cond_127
    if-nez v14, :cond_14b

    #@129
    if-nez v11, :cond_12c

    #@12b
    goto :goto_14b

    #@12c
    .line 1170
    :cond_12c
    new-instance v1, Ljava/lang/IllegalStateException;

    #@12e
    new-instance v3, Ljava/lang/StringBuilder;

    #@130
    const-string v4, "Child drawer has absolute gravity "

    #@132
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@135
    .line 1171
    invoke-static {v2}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    #@138
    move-result-object v2

    #@139
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v2

    #@13d
    const-string v3, " but this DrawerLayout already has a drawer view along that edge"

    #@13f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v2

    #@143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v2

    #@147
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14a
    throw v1

    #@14b
    :cond_14b
    :goto_14b
    if-eqz v14, :cond_14f

    #@14d
    const/4 v10, 0x1

    #@14e
    goto :goto_150

    #@14f
    :cond_14f
    const/4 v11, 0x1

    #@150
    .line 1179
    :goto_150
    iget v2, v0, Landroidx/drawerlayout/widget/DrawerLayout;->mMinDrawerMargin:I

    #@152
    iget v14, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->leftMargin:I

    #@154
    add-int/2addr v2, v14

    #@155
    iget v14, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->rightMargin:I

    #@157
    add-int/2addr v2, v14

    #@158
    iget v14, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->width:I

    #@15a
    move/from16 v15, p1

    #@15c
    invoke-static {v15, v2, v14}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildMeasureSpec(III)I

    #@15f
    move-result v2

    #@160
    .line 1182
    iget v14, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->topMargin:I

    #@162
    iget v5, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    #@164
    add-int/2addr v14, v5

    #@165
    iget v5, v13, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->height:I

    #@167
    move/from16 v13, p2

    #@169
    invoke-static {v13, v14, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildMeasureSpec(III)I

    #@16c
    move-result v5

    #@16d
    .line 1185
    invoke-virtual {v12, v2, v5}, Landroid/view/View;->measure(II)V

    #@170
    :goto_170
    add-int/lit8 v9, v9, 0x1

    #@172
    const/high16 v5, 0x40000000    # 2.0f

    #@174
    goto/16 :goto_42

    #@176
    .line 1187
    :cond_176
    new-instance v1, Ljava/lang/IllegalStateException;

    #@178
    new-instance v2, Ljava/lang/StringBuilder;

    #@17a
    const-string v3, "Child "

    #@17c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17f
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v2

    #@183
    const-string v3, " at index "

    #@185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@188
    move-result-object v2

    #@189
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v2

    #@18d
    const-string v3, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    #@18f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@192
    move-result-object v2

    #@193
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@196
    move-result-object v2

    #@197
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19a
    throw v1

    #@19b
    :cond_19b
    return-void

    #@19c
    .line 1090
    :cond_19c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@19e
    const-string v2, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    #@1a0
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a3
    throw v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    #@0
    .line 2072
    instance-of v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 2073
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@7
    return-void

    #@8
    .line 2077
    :cond_8
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    #@a
    .line 2078
    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@d
    move-result-object v0

    #@e
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@11
    .line 2080
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    #@13
    if-eqz v0, :cond_20

    #@15
    .line 2081
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    #@17
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@1a
    move-result-object v0

    #@1b
    if-eqz v0, :cond_20

    #@1d
    .line 2083
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    #@20
    .line 2087
    :cond_20
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    #@22
    const/4 v1, 0x3

    #@23
    if-eq v0, v1, :cond_2a

    #@25
    .line 2088
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    #@27
    invoke-virtual {p0, v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@2a
    .line 2090
    :cond_2a
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    #@2c
    if-eq v0, v1, :cond_34

    #@2e
    .line 2091
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    #@30
    const/4 v2, 0x5

    #@31
    invoke-virtual {p0, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@34
    .line 2093
    :cond_34
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    #@36
    if-eq v0, v1, :cond_40

    #@38
    .line 2094
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    #@3a
    const v2, 0x800003

    #@3d
    invoke-virtual {p0, v0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@40
    .line 2096
    :cond_40
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    #@42
    if-eq v0, v1, :cond_4c

    #@44
    .line 2097
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    #@46
    const v0, 0x800005

    #@49
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@4c
    :cond_4c
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    #@0
    .line 1430
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveShadowDrawables()V

    #@3
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 10

    #@0
    .line 2103
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    .line 2104
    new-instance v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;

    #@6
    invoke-direct {v1, v0}, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@9
    .line 2106
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@c
    move-result v0

    #@d
    const/4 v2, 0x0

    #@e
    move v3, v2

    #@f
    :goto_f
    if-ge v3, v0, :cond_36

    #@11
    .line 2108
    invoke-virtual {p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@14
    move-result-object v4

    #@15
    .line 2109
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@1b
    .line 2111
    iget v5, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    #@1d
    const/4 v6, 0x1

    #@1e
    if-ne v5, v6, :cond_22

    #@20
    move v5, v6

    #@21
    goto :goto_23

    #@22
    :cond_22
    move v5, v2

    #@23
    .line 2113
    :goto_23
    iget v7, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    #@25
    const/4 v8, 0x2

    #@26
    if-ne v7, v8, :cond_29

    #@28
    goto :goto_2a

    #@29
    :cond_29
    move v6, v2

    #@2a
    :goto_2a
    if-nez v5, :cond_32

    #@2c
    if-eqz v6, :cond_2f

    #@2e
    goto :goto_32

    #@2f
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_f

    #@32
    .line 2117
    :cond_32
    :goto_32
    iget v0, v4, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    #@34
    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    #@36
    .line 2122
    :cond_36
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    #@38
    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeLeft:I

    #@3a
    .line 2123
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    #@3c
    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeRight:I

    #@3e
    .line 2124
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    #@40
    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeStart:I

    #@42
    .line 2125
    iget v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    #@44
    iput v0, v1, Landroidx/drawerlayout/widget/DrawerLayout$SavedState;->lockModeEnd:I

    #@46
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    #@0
    .line 1619
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    #@5
    .line 1620
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    #@7
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    #@a
    .line 1622
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@d
    move-result v0

    #@e
    and-int/lit16 v0, v0, 0xff

    #@10
    const/4 v1, 0x0

    #@11
    const/4 v2, 0x1

    #@12
    if-eqz v0, :cond_5f

    #@14
    if-eq v0, v2, :cond_20

    #@16
    const/4 p1, 0x3

    #@17
    if-eq v0, p1, :cond_1a

    #@19
    goto :goto_6d

    #@1a
    .line 1656
    :cond_1a
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    #@1d
    .line 1657
    iput-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@1f
    goto :goto_6d

    #@20
    .line 1635
    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@23
    move-result v0

    #@24
    .line 1636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@27
    move-result p1

    #@28
    .line 1638
    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@2a
    float-to-int v4, v0

    #@2b
    float-to-int v5, p1

    #@2c
    invoke-virtual {v3, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    #@2f
    move-result-object v3

    #@30
    if-eqz v3, :cond_5a

    #@32
    .line 1639
    invoke-virtual {p0, v3}, Landroidx/drawerlayout/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_5a

    #@38
    .line 1640
    iget v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    #@3a
    sub-float/2addr v0, v3

    #@3b
    .line 1641
    iget v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    #@3d
    sub-float/2addr p1, v3

    #@3e
    .line 1642
    iget-object v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@40
    invoke-virtual {v3}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    #@43
    move-result v3

    #@44
    mul-float/2addr v0, v0

    #@45
    mul-float/2addr p1, p1

    #@46
    add-float/2addr v0, p1

    #@47
    mul-int/2addr v3, v3

    #@48
    int-to-float p1, v3

    #@49
    cmpg-float p1, v0, p1

    #@4b
    if-gez p1, :cond_5a

    #@4d
    .line 1645
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    #@50
    move-result-object p1

    #@51
    if-eqz p1, :cond_5a

    #@53
    .line 1647
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@56
    move-result p1

    #@57
    const/4 v0, 0x2

    #@58
    if-ne p1, v0, :cond_5b

    #@5a
    :cond_5a
    move v1, v2

    #@5b
    .line 1651
    :cond_5b
    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    #@5e
    goto :goto_6d

    #@5f
    .line 1626
    :cond_5f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@62
    move-result v0

    #@63
    .line 1627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@66
    move-result p1

    #@67
    .line 1628
    iput v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionX:F

    #@69
    .line 1629
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInitialMotionY:F

    #@6b
    .line 1630
    iput-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    #@6d
    :goto_6d
    return v2
.end method

.method public open()V
    .registers 2

    #@0
    const v0, 0x800003

    #@3
    .line 1722
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    #@6
    return-void
.end method

.method public openDrawer(I)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 1776
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(IZ)V

    #@4
    return-void
.end method

.method public openDrawer(IZ)V
    .registers 5

    #@0
    .line 1787
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_a

    #@6
    .line 1792
    invoke-virtual {p0, v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    #@9
    return-void

    #@a
    .line 1789
    :cond_a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    const-string v1, "No drawer view found with gravity "

    #@10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    .line 1790
    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    #@16
    move-result-object p1

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p1

    #@1b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p1

    #@1f
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw p2
.end method

.method public openDrawer(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 1731
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    #@4
    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .registers 6

    #@0
    .line 1741
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_58

    #@6
    .line 1745
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@c
    .line 1746
    iget-boolean v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mFirstLayout:Z

    #@e
    const/high16 v2, 0x3f800000    # 1.0f

    #@10
    if-eqz v1, :cond_1e

    #@12
    .line 1747
    iput v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@14
    const/4 p2, 0x1

    #@15
    .line 1748
    iput p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    #@17
    .line 1750
    invoke-direct {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    #@1a
    .line 1751
    invoke-direct {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateChildAccessibilityAction(Landroid/view/View;)V

    #@1d
    goto :goto_54

    #@1e
    :cond_1e
    const/4 v1, 0x0

    #@1f
    if-eqz p2, :cond_4b

    #@21
    .line 1753
    iget p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    #@23
    or-int/lit8 p2, p2, 0x2

    #@25
    iput p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->openState:I

    #@27
    const/4 p2, 0x3

    #@28
    .line 1755
    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@2b
    move-result p2

    #@2c
    if-eqz p2, :cond_38

    #@2e
    .line 1756
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@30
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@33
    move-result v0

    #@34
    invoke-virtual {p2, p1, v1, v0}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@37
    goto :goto_54

    #@38
    .line 1758
    :cond_38
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    #@3a
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getWidth()I

    #@3d
    move-result v0

    #@3e
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@41
    move-result v1

    #@42
    sub-int/2addr v0, v1

    #@43
    .line 1759
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@46
    move-result v1

    #@47
    .line 1758
    invoke-virtual {p2, p1, v0, v1}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@4a
    goto :goto_54

    #@4b
    .line 1762
    :cond_4b
    invoke-virtual {p0, p1, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    #@4e
    .line 1763
    invoke-virtual {p0, v1, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->updateDrawerState(ILandroid/view/View;)V

    #@51
    .line 1764
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    #@54
    .line 1766
    :goto_54
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    #@57
    return-void

    #@58
    .line 1742
    :cond_58
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@5a
    new-instance v0, Ljava/lang/StringBuilder;

    #@5c
    const-string v1, "View "

    #@5e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@64
    move-result-object p1

    #@65
    const-string v0, " is not a sliding drawer"

    #@67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object p1

    #@6b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object p1

    #@6f
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@72
    throw p2
.end method

.method public removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .registers 3

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 563
    :cond_3
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    #@5
    if-nez v0, :cond_8

    #@7
    return-void

    #@8
    .line 567
    :cond_8
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@b
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    #@0
    .line 1671
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    #@3
    if-eqz p1, :cond_9

    #@5
    const/4 p1, 0x1

    #@6
    .line 1674
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers(Z)V

    #@9
    :cond_9
    return-void
.end method

.method public requestLayout()V
    .registers 2

    #@0
    .line 1352
    iget-boolean v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mInLayout:Z

    #@2
    if-nez v0, :cond_7

    #@4
    .line 1353
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@7
    :cond_7
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    .line 437
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    #@2
    .line 438
    iput-boolean p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    #@4
    if-nez p2, :cond_e

    #@6
    .line 439
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    if-nez p1, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->setWillNotDraw(Z)V

    #@12
    .line 440
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->requestLayout()V

    #@15
    return-void
.end method

.method public setDrawerElevation(F)V
    .registers 4

    #@0
    .line 408
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    #@2
    const/4 p1, 0x0

    #@3
    .line 409
    :goto_3
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    #@6
    move-result v0

    #@7
    if-ge p1, v0, :cond_1b

    #@9
    .line 410
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    .line 411
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_18

    #@13
    .line 412
    iget v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerElevation:F

    #@15
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    #@18
    :cond_18
    add-int/lit8 p1, p1, 0x1

    #@1a
    goto :goto_3

    #@1b
    :cond_1b
    return-void
.end method

.method public setDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 525
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 526
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->removeDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    #@7
    :cond_7
    if-eqz p1, :cond_c

    #@9
    .line 529
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    #@c
    .line 533
    :cond_c
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListener:Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    #@e
    return-void
.end method

.method public setDrawerLockMode(I)V
    .registers 3

    #@0
    const/4 v0, 0x3

    #@1
    .line 584
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@4
    const/4 v0, 0x5

    #@5
    .line 585
    invoke-virtual {p0, p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@8
    return-void
.end method

.method public setDrawerLockMode(II)V
    .registers 6

    #@0
    .line 609
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    .line 608
    invoke-static {p2, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x3

    #@9
    if-eq p2, v1, :cond_22

    #@b
    const/4 v2, 0x5

    #@c
    if-eq p2, v2, :cond_1f

    #@e
    const v2, 0x800003

    #@11
    if-eq p2, v2, :cond_1c

    #@13
    const v2, 0x800005

    #@16
    if-eq p2, v2, :cond_19

    #@18
    goto :goto_24

    #@19
    .line 622
    :cond_19
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeEnd:I

    #@1b
    goto :goto_24

    #@1c
    .line 619
    :cond_1c
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeStart:I

    #@1e
    goto :goto_24

    #@1f
    .line 616
    :cond_1f
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeRight:I

    #@21
    goto :goto_24

    #@22
    .line 613
    :cond_22
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLockModeLeft:I

    #@24
    :goto_24
    if-eqz p1, :cond_30

    #@26
    if-ne v0, v1, :cond_2b

    #@28
    .line 628
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@2a
    goto :goto_2d

    #@2b
    :cond_2b
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    #@2d
    .line 629
    :goto_2d
    invoke-virtual {p2}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    #@30
    :cond_30
    const/4 p2, 0x1

    #@31
    if-eq p1, p2, :cond_41

    #@33
    const/4 p2, 0x2

    #@34
    if-eq p1, p2, :cond_37

    #@36
    goto :goto_4a

    #@37
    .line 633
    :cond_37
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@3a
    move-result-object p1

    #@3b
    if-eqz p1, :cond_4a

    #@3d
    .line 635
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    #@40
    goto :goto_4a

    #@41
    .line 639
    :cond_41
    invoke-virtual {p0, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@44
    move-result-object p1

    #@45
    if-eqz p1, :cond_4a

    #@47
    .line 641
    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    #@4a
    :cond_4a
    :goto_4a
    return-void
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .registers 5

    #@0
    .line 667
    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_12

    #@6
    .line 671
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@9
    move-result-object p2

    #@a
    check-cast p2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@c
    iget p2, p2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    #@e
    .line 672
    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(II)V

    #@11
    return-void

    #@12
    .line 668
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v0, Ljava/lang/StringBuilder;

    #@16
    const-string v1, "View "

    #@18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object p2

    #@1f
    const-string v0, " is not a drawer with appropriate layout_gravity"

    #@21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object p2

    #@25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object p2

    #@29
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw p1
.end method

.method public setDrawerShadow(II)V
    .registers 4

    #@0
    .line 497
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    #@b
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .registers 5

    #@0
    .line 463
    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const v0, 0x800003

    #@8
    and-int v1, p2, v0

    #@a
    if-ne v1, v0, :cond_f

    #@c
    .line 468
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    #@e
    goto :goto_27

    #@f
    :cond_f
    const v0, 0x800005

    #@12
    and-int v1, p2, v0

    #@14
    if-ne v1, v0, :cond_19

    #@16
    .line 470
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    #@18
    goto :goto_27

    #@19
    :cond_19
    and-int/lit8 v0, p2, 0x3

    #@1b
    const/4 v1, 0x3

    #@1c
    if-ne v0, v1, :cond_21

    #@1e
    .line 472
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    #@20
    goto :goto_27

    #@21
    :cond_21
    const/4 v0, 0x5

    #@22
    and-int/2addr p2, v0

    #@23
    if-ne p2, v0, :cond_2d

    #@25
    .line 474
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    #@27
    .line 478
    :goto_27
    invoke-direct {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->resolveShadowDrawables()V

    #@2a
    .line 479
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    #@2d
    :cond_2d
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .registers 4

    #@0
    .line 760
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    .line 759
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    #@7
    move-result p1

    #@8
    const/4 v0, 0x3

    #@9
    if-ne p1, v0, :cond_e

    #@b
    .line 762
    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    #@d
    goto :goto_13

    #@e
    :cond_e
    const/4 v0, 0x5

    #@f
    if-ne p1, v0, :cond_13

    #@11
    .line 764
    iput-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    #@13
    :cond_13
    :goto_13
    return-void
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .registers 5

    #@0
    .line 968
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@6
    .line 969
    iget v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@8
    cmpl-float v1, p2, v1

    #@a
    if-nez v1, :cond_d

    #@c
    return-void

    #@d
    .line 973
    :cond_d
    iput p2, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@f
    .line 974
    invoke-virtual {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    #@12
    return-void
.end method

.method public setScrimColor(I)V
    .registers 2

    #@0
    .line 506
    iput p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mScrimColor:I

    #@2
    .line 507
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    #@5
    return-void
.end method

.method public setStatusBarBackground(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 1412
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object p1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@e
    .line 1413
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    #@11
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 1391
    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@2
    .line 1392
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    #@5
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3

    #@0
    .line 1424
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@2
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@5
    iput-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    #@7
    .line 1425
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->invalidate()V

    #@a
    return-void
.end method

.method updateDrawerState(ILandroid/view/View;)V
    .registers 7

    #@0
    .line 846
    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mLeftDragger:Landroidx/customview/widget/ViewDragHelper;

    #@2
    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    #@5
    move-result v0

    #@6
    .line 847
    iget-object v1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mRightDragger:Landroidx/customview/widget/ViewDragHelper;

    #@8
    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    #@b
    move-result v1

    #@c
    const/4 v2, 0x1

    #@d
    if-eq v0, v2, :cond_1a

    #@f
    if-ne v1, v2, :cond_12

    #@11
    goto :goto_1a

    #@12
    :cond_12
    const/4 v3, 0x2

    #@13
    if-eq v0, v3, :cond_1b

    #@15
    if-ne v1, v3, :cond_18

    #@17
    goto :goto_1b

    #@18
    :cond_18
    const/4 v3, 0x0

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    :goto_1a
    move v3, v2

    #@1b
    :cond_1b
    :goto_1b
    if-eqz p2, :cond_3b

    #@1d
    if-nez p1, :cond_3b

    #@1f
    .line 859
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@22
    move-result-object p1

    #@23
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    #@25
    .line 860
    iget v0, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@27
    const/4 v1, 0x0

    #@28
    cmpl-float v0, v0, v1

    #@2a
    if-nez v0, :cond_30

    #@2c
    .line 861
    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    #@2f
    goto :goto_3b

    #@30
    .line 862
    :cond_30
    iget p1, p1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->onScreen:F

    #@32
    const/high16 v0, 0x3f800000    # 1.0f

    #@34
    cmpl-float p1, p1, v0

    #@36
    if-nez p1, :cond_3b

    #@38
    .line 863
    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    #@3b
    .line 867
    :cond_3b
    :goto_3b
    iget p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerState:I

    #@3d
    if-eq v3, p1, :cond_5a

    #@3f
    .line 868
    iput v3, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mDrawerState:I

    #@41
    .line 870
    iget-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    #@43
    if-eqz p1, :cond_5a

    #@45
    .line 873
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@48
    move-result p1

    #@49
    sub-int/2addr p1, v2

    #@4a
    :goto_4a
    if-ltz p1, :cond_5a

    #@4c
    .line 875
    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout;->mListeners:Ljava/util/List;

    #@4e
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@51
    move-result-object p2

    #@52
    check-cast p2, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    #@54
    invoke-interface {p2, v3}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    #@57
    add-int/lit8 p1, p1, -0x1

    #@59
    goto :goto_4a

    #@5a
    :cond_5a
    return-void
.end method
