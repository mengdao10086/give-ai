.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;,
        Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_DRAW_CONSTRAINTS:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final MEASURE:Z = false

.field private static final OPTIMIZE_HEIGHT_CHANGE:Z = false

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-2.1.4"

.field private static sSharedValues:Landroidx/constraintlayout/widget/SharedValues;


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field protected mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

.field private mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field private mConstraintSetId:I

.field private mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field protected mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

.field private mMetrics:Landroidx/constraintlayout/core/Metrics;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOnMeasureHeightMeasureSpec:I

.field private mOnMeasureWidthMeasureSpec:I

.field private mOptimizationLevel:I

.field private mTempMapIdToWidget:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    #@0
    .line 582
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@3
    .line 499
    new-instance p1, Landroid/util/SparseArray;

    #@5
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    #@a
    .line 502
    new-instance p1, Ljava/util/ArrayList;

    #@c
    const/4 v0, 0x4

    #@d
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@10
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    #@12
    .line 504
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@14
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    #@17
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@19
    const/4 p1, 0x0

    #@1a
    .line 506
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    #@1c
    .line 507
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    #@1e
    const v0, 0x7fffffff

    #@21
    .line 508
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    #@23
    .line 509
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    #@25
    const/4 v0, 0x1

    #@26
    .line 511
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    #@28
    const/16 v0, 0x101

    #@2a
    .line 512
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    #@2c
    const/4 v0, 0x0

    #@2d
    .line 513
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@2f
    .line 514
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@31
    const/4 v1, -0x1

    #@32
    .line 516
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    #@34
    .line 518
    new-instance v2, Ljava/util/HashMap;

    #@36
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@39
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    #@3b
    .line 521
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    #@3d
    .line 522
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    #@3f
    .line 523
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    #@41
    .line 524
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    #@43
    .line 525
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    #@45
    .line 526
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    #@47
    .line 527
    new-instance v1, Landroid/util/SparseArray;

    #@49
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@4c
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    #@4e
    .line 941
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    #@50
    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@53
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    #@55
    .line 1549
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    #@57
    .line 1550
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    #@59
    .line 583
    invoke-direct {p0, v0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    #@5c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    .line 587
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 499
    new-instance p1, Landroid/util/SparseArray;

    #@5
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    #@a
    .line 502
    new-instance p1, Ljava/util/ArrayList;

    #@c
    const/4 v0, 0x4

    #@d
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@10
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    #@12
    .line 504
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@14
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    #@17
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@19
    const/4 p1, 0x0

    #@1a
    .line 506
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    #@1c
    .line 507
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    #@1e
    const v0, 0x7fffffff

    #@21
    .line 508
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    #@23
    .line 509
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    #@25
    const/4 v0, 0x1

    #@26
    .line 511
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    #@28
    const/16 v0, 0x101

    #@2a
    .line 512
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    #@2c
    const/4 v0, 0x0

    #@2d
    .line 513
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@2f
    .line 514
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@31
    const/4 v0, -0x1

    #@32
    .line 516
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    #@34
    .line 518
    new-instance v1, Ljava/util/HashMap;

    #@36
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@39
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    #@3b
    .line 521
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    #@3d
    .line 522
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    #@3f
    .line 523
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    #@41
    .line 524
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    #@43
    .line 525
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    #@45
    .line 526
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    #@47
    .line 527
    new-instance v0, Landroid/util/SparseArray;

    #@49
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@4c
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    #@4e
    .line 941
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    #@50
    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@53
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    #@55
    .line 1549
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    #@57
    .line 1550
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    #@59
    .line 588
    invoke-direct {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    #@5c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    #@0
    .line 592
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 499
    new-instance p1, Landroid/util/SparseArray;

    #@5
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    #@a
    .line 502
    new-instance p1, Ljava/util/ArrayList;

    #@c
    const/4 v0, 0x4

    #@d
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@10
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    #@12
    .line 504
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@14
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    #@17
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@19
    const/4 p1, 0x0

    #@1a
    .line 506
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    #@1c
    .line 507
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    #@1e
    const v0, 0x7fffffff

    #@21
    .line 508
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    #@23
    .line 509
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    #@25
    const/4 v0, 0x1

    #@26
    .line 511
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    #@28
    const/16 v0, 0x101

    #@2a
    .line 512
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    #@2c
    const/4 v0, 0x0

    #@2d
    .line 513
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@2f
    .line 514
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@31
    const/4 v0, -0x1

    #@32
    .line 516
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    #@34
    .line 518
    new-instance v1, Ljava/util/HashMap;

    #@36
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@39
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    #@3b
    .line 521
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    #@3d
    .line 522
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    #@3f
    .line 523
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    #@41
    .line 524
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    #@43
    .line 525
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    #@45
    .line 526
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    #@47
    .line 527
    new-instance v0, Landroid/util/SparseArray;

    #@49
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@4c
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    #@4e
    .line 941
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    #@50
    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@53
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    #@55
    .line 1549
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    #@57
    .line 1550
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    #@59
    .line 593
    invoke-direct {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    #@5c
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    #@0
    .line 598
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 499
    new-instance p1, Landroid/util/SparseArray;

    #@5
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    #@a
    .line 502
    new-instance p1, Ljava/util/ArrayList;

    #@c
    const/4 v0, 0x4

    #@d
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@10
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    #@12
    .line 504
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@14
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    #@17
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@19
    const/4 p1, 0x0

    #@1a
    .line 506
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    #@1c
    .line 507
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    #@1e
    const v0, 0x7fffffff

    #@21
    .line 508
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    #@23
    .line 509
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    #@25
    const/4 v0, 0x1

    #@26
    .line 511
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    #@28
    const/16 v0, 0x101

    #@2a
    .line 512
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    #@2c
    const/4 v0, 0x0

    #@2d
    .line 513
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@2f
    .line 514
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@31
    const/4 v0, -0x1

    #@32
    .line 516
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    #@34
    .line 518
    new-instance v1, Ljava/util/HashMap;

    #@36
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@39
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    #@3b
    .line 521
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    #@3d
    .line 522
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    #@3f
    .line 523
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    #@41
    .line 524
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    #@43
    .line 525
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    #@45
    .line 526
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    #@47
    .line 527
    new-instance v0, Landroid/util/SparseArray;

    #@49
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@4c
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    #@4e
    .line 941
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    #@50
    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@53
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    #@55
    .line 1549
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    #@57
    .line 1550
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    #@59
    .line 599
    invoke-direct {p0, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    #@5c
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    .registers 1

    #@0
    .line 486
    iget p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    #@2
    return p0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    .registers 1

    #@0
    .line 486
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    #@2
    return-object p0
.end method

.method private getPaddingWidth()I
    .registers 5

    #@0
    .line 1734
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@8
    move-result v0

    #@9
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    #@c
    move-result v2

    #@d
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v2

    #@11
    add-int/2addr v0, v2

    #@12
    .line 1738
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    #@15
    move-result v2

    #@16
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@19
    move-result v2

    #@1a
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    #@1d
    move-result v3

    #@1e
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    #@21
    move-result v1

    #@22
    add-int/2addr v2, v1

    #@23
    if-lez v2, :cond_26

    #@25
    move v0, v2

    #@26
    :cond_26
    return v0
.end method

.method public static getSharedValues()Landroidx/constraintlayout/widget/SharedValues;
    .registers 1

    #@0
    .line 544
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 545
    new-instance v0, Landroidx/constraintlayout/widget/SharedValues;

    #@6
    invoke-direct {v0}, Landroidx/constraintlayout/widget/SharedValues;-><init>()V

    #@9
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    #@b
    .line 547
    :cond_b
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    #@d
    return-object v0
.end method

.method private final getTargetWidget(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    if-nez p1, :cond_5

    #@2
    .line 1503
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@4
    return-object p1

    #@5
    .line 1505
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    #@7
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/view/View;

    #@d
    if-nez v0, :cond_20

    #@f
    .line 1507
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_20

    #@15
    if-eq v0, p0, :cond_20

    #@17
    .line 1508
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@1a
    move-result-object p1

    #@1b
    if-ne p1, p0, :cond_20

    #@1d
    .line 1509
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    #@20
    :cond_20
    if-ne v0, p0, :cond_25

    #@22
    .line 1513
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@24
    return-object p1

    #@25
    :cond_25
    if-nez v0, :cond_29

    #@27
    const/4 p1, 0x0

    #@28
    goto :goto_31

    #@29
    .line 1515
    :cond_29
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2c
    move-result-object p1

    #@2d
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@2f
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@31
    :goto_31
    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    #@0
    .line 944
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@2
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    #@5
    .line 945
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@7
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    #@9
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMeasurer(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@c
    .line 946
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    #@e
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    #@11
    move-result v1

    #@12
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@15
    const/4 v0, 0x0

    #@16
    .line 947
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@18
    if-eqz p1, :cond_a3

    #@1a
    .line 949
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v1

    #@1e
    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    #@20
    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@23
    move-result-object p1

    #@24
    .line 950
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@27
    move-result p2

    #@28
    const/4 p3, 0x0

    #@29
    move v1, p3

    #@2a
    :goto_2a
    if-ge v1, p2, :cond_a0

    #@2c
    .line 952
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@2f
    move-result v2

    #@30
    .line 953
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    #@32
    if-ne v2, v3, :cond_3d

    #@34
    .line 954
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    #@36
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@39
    move-result v2

    #@3a
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    #@3c
    goto :goto_9d

    #@3d
    .line 955
    :cond_3d
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    #@3f
    if-ne v2, v3, :cond_4a

    #@41
    .line 956
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    #@43
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@46
    move-result v2

    #@47
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    #@49
    goto :goto_9d

    #@4a
    .line 957
    :cond_4a
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    #@4c
    if-ne v2, v3, :cond_57

    #@4e
    .line 958
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    #@50
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@53
    move-result v2

    #@54
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    #@56
    goto :goto_9d

    #@57
    .line 959
    :cond_57
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    #@59
    if-ne v2, v3, :cond_64

    #@5b
    .line 960
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    #@5d
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@60
    move-result v2

    #@61
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    #@63
    goto :goto_9d

    #@64
    .line 961
    :cond_64
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    #@66
    if-ne v2, v3, :cond_71

    #@68
    .line 962
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    #@6a
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@6d
    move-result v2

    #@6e
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    #@70
    goto :goto_9d

    #@71
    .line 963
    :cond_71
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layoutDescription:I

    #@73
    if-ne v2, v3, :cond_82

    #@75
    .line 964
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@78
    move-result v2

    #@79
    if-eqz v2, :cond_9d

    #@7b
    .line 967
    :try_start_7b
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->parseLayoutDescription(I)V
    :try_end_7e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7b .. :try_end_7e} :catch_7f

    #@7e
    goto :goto_9d

    #@7f
    .line 969
    :catch_7f
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@81
    goto :goto_9d

    #@82
    .line 972
    :cond_82
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    #@84
    if-ne v2, v3, :cond_9d

    #@86
    .line 973
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@89
    move-result v2

    #@8a
    .line 975
    :try_start_8a
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    #@8c
    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    #@8f
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@91
    .line 976
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    #@94
    move-result-object v4

    #@95
    invoke-virtual {v3, v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_98
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8a .. :try_end_98} :catch_99

    #@98
    goto :goto_9b

    #@99
    .line 978
    :catch_99
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@9b
    .line 980
    :goto_9b
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    #@9d
    :cond_9d
    :goto_9d
    add-int/lit8 v1, v1, 0x1

    #@9f
    goto :goto_2a

    #@a0
    .line 983
    :cond_a0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@a3
    .line 985
    :cond_a3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@a5
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    #@a7
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    #@aa
    return-void
.end method

.method private markHierarchyDirty()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 3615
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    #@3
    const/4 v0, -0x1

    #@4
    .line 3617
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    #@6
    .line 3618
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    #@8
    .line 3619
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    #@a
    .line 3620
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    #@c
    const/4 v0, 0x0

    #@d
    .line 3621
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    #@f
    .line 3622
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    #@11
    return-void
.end method

.method private setChildrenConstraints()V
    .registers 10

    #@0
    .line 1149
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    #@3
    move-result v6

    #@4
    .line 1151
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    #@7
    move-result v7

    #@8
    const/4 v0, 0x0

    #@9
    move v1, v0

    #@a
    :goto_a
    if-ge v1, v7, :cond_1d

    #@c
    .line 1155
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object v2

    #@10
    .line 1156
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@13
    move-result-object v2

    #@14
    if-nez v2, :cond_17

    #@16
    goto :goto_1a

    #@17
    .line 1160
    :cond_17
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    #@1a
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_a

    #@1d
    :cond_1d
    const/4 v1, -0x1

    #@1e
    if-eqz v6, :cond_5a

    #@20
    move v2, v0

    #@21
    :goto_21
    if-ge v2, v7, :cond_5a

    #@23
    .line 1168
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@26
    move-result-object v3

    #@27
    .line 1170
    :try_start_27
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    #@2e
    move-result v5

    #@2f
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    .line 1171
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    #@36
    move-result v5

    #@37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {p0, v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    #@3e
    const/16 v5, 0x2f

    #@40
    .line 1172
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    #@43
    move-result v5

    #@44
    if-eq v5, v1, :cond_4c

    #@46
    add-int/lit8 v5, v5, 0x1

    #@48
    .line 1174
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    .line 1176
    :cond_4c
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    #@4f
    move-result v3

    #@50
    invoke-direct {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_57} :catch_57

    #@57
    :catch_57
    add-int/lit8 v2, v2, 0x1

    #@59
    goto :goto_21

    #@5a
    .line 1199
    :cond_5a
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    #@5c
    if-eq v2, v1, :cond_7c

    #@5e
    move v1, v0

    #@5f
    :goto_5f
    if-ge v1, v7, :cond_7c

    #@61
    .line 1201
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@64
    move-result-object v2

    #@65
    .line 1202
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    #@68
    move-result v3

    #@69
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    #@6b
    if-ne v3, v4, :cond_79

    #@6d
    instance-of v3, v2, Landroidx/constraintlayout/widget/Constraints;

    #@6f
    if-eqz v3, :cond_79

    #@71
    .line 1203
    check-cast v2, Landroidx/constraintlayout/widget/Constraints;

    #@73
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()Landroidx/constraintlayout/widget/ConstraintSet;

    #@76
    move-result-object v2

    #@77
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@79
    :cond_79
    add-int/lit8 v1, v1, 0x1

    #@7b
    goto :goto_5f

    #@7c
    .line 1208
    :cond_7c
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@7e
    if-eqz v1, :cond_84

    #@80
    const/4 v2, 0x1

    #@81
    .line 1209
    invoke-virtual {v1, p0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    #@84
    .line 1212
    :cond_84
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@86
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    #@89
    .line 1214
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8e
    move-result v1

    #@8f
    if-lez v1, :cond_a2

    #@91
    move v2, v0

    #@92
    :goto_92
    if-ge v2, v1, :cond_a2

    #@94
    .line 1217
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    #@96
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@99
    move-result-object v3

    #@9a
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@9c
    .line 1218
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@9f
    add-int/lit8 v2, v2, 0x1

    #@a1
    goto :goto_92

    #@a2
    :cond_a2
    move v1, v0

    #@a3
    :goto_a3
    if-ge v1, v7, :cond_b5

    #@a5
    .line 1224
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@a8
    move-result-object v2

    #@a9
    .line 1225
    instance-of v3, v2, Landroidx/constraintlayout/widget/Placeholder;

    #@ab
    if-eqz v3, :cond_b2

    #@ad
    .line 1226
    check-cast v2, Landroidx/constraintlayout/widget/Placeholder;

    #@af
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/Placeholder;->updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@b2
    :cond_b2
    add-int/lit8 v1, v1, 0x1

    #@b4
    goto :goto_a3

    #@b5
    .line 1230
    :cond_b5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    #@b7
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    #@ba
    .line 1231
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    #@bc
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@be
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@c1
    .line 1232
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    #@c3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    #@c6
    move-result v2

    #@c7
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@c9
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@cc
    move v1, v0

    #@cd
    :goto_cd
    if-ge v1, v7, :cond_e3

    #@cf
    .line 1234
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@d2
    move-result-object v2

    #@d3
    .line 1235
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@d6
    move-result-object v3

    #@d7
    .line 1236
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    #@d9
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    #@dc
    move-result v2

    #@dd
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@e0
    add-int/lit8 v1, v1, 0x1

    #@e2
    goto :goto_cd

    #@e3
    :cond_e3
    move v8, v0

    #@e4
    :goto_e4
    if-ge v8, v7, :cond_107

    #@e6
    .line 1240
    invoke-virtual {p0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@e9
    move-result-object v2

    #@ea
    .line 1241
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@ed
    move-result-object v3

    #@ee
    if-nez v3, :cond_f1

    #@f0
    goto :goto_104

    #@f1
    .line 1245
    :cond_f1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@f4
    move-result-object v0

    #@f5
    move-object v4, v0

    #@f6
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@f8
    .line 1246
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@fa
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@fd
    .line 1247
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    #@ff
    move-object v0, p0

    #@100
    move v1, v6

    #@101
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    #@104
    :goto_104
    add-int/lit8 v8, v8, 0x1

    #@106
    goto :goto_e4

    #@107
    :cond_107
    return-void
.end method

.method private setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "widget",
            "layoutParams",
            "idToWidget",
            "baselineTarget",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;",
            ")V"
        }
    .end annotation

    #@0
    .line 1483
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/View;

    #@8
    .line 1484
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b
    move-result-object p3

    #@c
    check-cast p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@e
    if-eqz p3, :cond_54

    #@10
    if-eqz v0, :cond_54

    #@12
    .line 1485
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@15
    move-result-object p4

    #@16
    instance-of p4, p4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@18
    if-eqz p4, :cond_54

    #@1a
    const/4 p4, 0x1

    #@1b
    .line 1486
    iput-boolean p4, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    #@1d
    .line 1487
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1f
    if-ne p5, v1, :cond_2e

    #@21
    .line 1488
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@27
    .line 1489
    iput-boolean p4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    #@29
    .line 1490
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2b
    invoke-virtual {v0, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    #@2e
    .line 1492
    :cond_2e
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@30
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@33
    move-result-object v0

    #@34
    .line 1493
    invoke-virtual {p3, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@37
    move-result-object p3

    #@38
    .line 1494
    iget p5, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    #@3a
    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    #@3c
    invoke-virtual {v0, p3, p5, p2, p4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    #@3f
    .line 1495
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    #@42
    .line 1496
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@44
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@47
    move-result-object p2

    #@48
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@4b
    .line 1497
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@4d
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@50
    move-result-object p1

    #@51
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@54
    :cond_54
    return-void
.end method

.method private updateHierarchy()Z
    .registers 5

    #@0
    .line 1132
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v0, :cond_17

    #@8
    .line 1136
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@b
    move-result-object v3

    #@c
    .line 1137
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_14

    #@12
    const/4 v1, 0x1

    #@13
    goto :goto_17

    #@14
    :cond_14
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_6

    #@17
    :cond_17
    :goto_17
    if-eqz v1, :cond_1c

    #@19
    .line 1143
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setChildrenConstraints()V

    #@1c
    :cond_1c
    return v1
.end method


# virtual methods
.method protected applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isInEditMode",
            "child",
            "widget",
            "layoutParams",
            "idToWidget"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    #@0
    move-object/from16 v0, p2

    #@2
    move-object/from16 v6, p3

    #@4
    move-object/from16 v7, p4

    #@6
    move-object/from16 v8, p5

    #@8
    .line 1257
    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    #@b
    const/4 v9, 0x0

    #@c
    .line 1258
    iput-boolean v9, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    #@e
    .line 1260
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    #@11
    move-result v1

    #@12
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVisibility(I)V

    #@15
    .line 1261
    iget-boolean v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    #@17
    if-eqz v1, :cond_22

    #@19
    const/4 v1, 0x1

    #@1a
    .line 1262
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInPlaceholder(Z)V

    #@1d
    const/16 v1, 0x8

    #@1f
    .line 1263
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVisibility(I)V

    #@22
    .line 1265
    :cond_22
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    #@25
    .line 1267
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@27
    if-eqz v1, :cond_37

    #@29
    .line 1268
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@2b
    move-object/from16 v10, p0

    #@2d
    .line 1269
    iget-object v1, v10, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@2f
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    #@32
    move-result v1

    #@33
    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->resolveRtl(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Z)V

    #@36
    goto :goto_39

    #@37
    :cond_37
    move-object/from16 v10, p0

    #@39
    .line 1271
    :goto_39
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    #@3b
    const/4 v11, -0x1

    #@3c
    if-eqz v0, :cond_60

    #@3e
    .line 1272
    move-object v0, v6

    #@3f
    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    #@41
    .line 1273
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    #@43
    .line 1274
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    #@45
    .line 1275
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    #@47
    const/high16 v4, -0x40800000    # -1.0f

    #@49
    cmpl-float v4, v3, v4

    #@4b
    if-eqz v4, :cond_52

    #@4d
    .line 1282
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuidePercent(F)V

    #@50
    goto/16 :goto_277

    #@52
    :cond_52
    if-eq v1, v11, :cond_59

    #@54
    .line 1284
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideBegin(I)V

    #@57
    goto/16 :goto_277

    #@59
    :cond_59
    if-eq v2, v11, :cond_277

    #@5b
    .line 1286
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideEnd(I)V

    #@5e
    goto/16 :goto_277

    #@60
    .line 1290
    :cond_60
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    #@62
    .line 1291
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    #@64
    .line 1292
    iget v12, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    #@66
    .line 1293
    iget v13, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    #@68
    .line 1294
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    #@6a
    .line 1295
    iget v14, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    #@6c
    .line 1296
    iget v15, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    #@6e
    .line 1326
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    #@70
    if-eq v2, v11, :cond_85

    #@72
    .line 1327
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    #@74
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@77
    move-result-object v0

    #@78
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@7a
    if-eqz v0, :cond_1a1

    #@7c
    .line 1329
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    #@7e
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    #@80
    invoke-virtual {v6, v0, v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connectCircularConstraint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V

    #@83
    goto/16 :goto_1a1

    #@85
    :cond_85
    if-eq v0, v11, :cond_9c

    #@87
    .line 1334
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8a
    move-result-object v0

    #@8b
    move-object v2, v0

    #@8c
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@8e
    if-eqz v2, :cond_b2

    #@90
    .line 1336
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@92
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@94
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    #@96
    move-object/from16 v0, p3

    #@98
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    #@9b
    goto :goto_b2

    #@9c
    :cond_9c
    if-eq v1, v11, :cond_b2

    #@9e
    .line 1341
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@a1
    move-result-object v0

    #@a2
    move-object v2, v0

    #@a3
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@a5
    if-eqz v2, :cond_b2

    #@a7
    .line 1343
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@a9
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@ab
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    #@ad
    move-object/from16 v0, p3

    #@af
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    #@b2
    :cond_b2
    :goto_b2
    if-eq v12, v11, :cond_ca

    #@b4
    .line 1351
    invoke-virtual {v8, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@b7
    move-result-object v0

    #@b8
    move-object v2, v0

    #@b9
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@bb
    if-eqz v2, :cond_e1

    #@bd
    .line 1353
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@bf
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@c1
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    #@c3
    move-object/from16 v0, p3

    #@c5
    move v5, v14

    #@c6
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    #@c9
    goto :goto_e1

    #@ca
    :cond_ca
    if-eq v13, v11, :cond_e1

    #@cc
    .line 1358
    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@cf
    move-result-object v0

    #@d0
    move-object v2, v0

    #@d1
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@d3
    if-eqz v2, :cond_e1

    #@d5
    .line 1360
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@d7
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@d9
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    #@db
    move-object/from16 v0, p3

    #@dd
    move v5, v14

    #@de
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    #@e1
    .line 1367
    :cond_e1
    :goto_e1
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    #@e3
    if-eq v0, v11, :cond_fe

    #@e5
    .line 1368
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    #@e7
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@ea
    move-result-object v0

    #@eb
    move-object v2, v0

    #@ec
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@ee
    if-eqz v2, :cond_11a

    #@f0
    .line 1370
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@f2
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@f4
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    #@f6
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    #@f8
    move-object/from16 v0, p3

    #@fa
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    #@fd
    goto :goto_11a

    #@fe
    .line 1374
    :cond_fe
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    #@100
    if-eq v0, v11, :cond_11a

    #@102
    .line 1375
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    #@104
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@107
    move-result-object v0

    #@108
    move-object v2, v0

    #@109
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@10b
    if-eqz v2, :cond_11a

    #@10d
    .line 1377
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@10f
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@111
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    #@113
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    #@115
    move-object/from16 v0, p3

    #@117
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    #@11a
    .line 1384
    :cond_11a
    :goto_11a
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    #@11c
    if-eq v0, v11, :cond_137

    #@11e
    .line 1385
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    #@120
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@123
    move-result-object v0

    #@124
    move-object v2, v0

    #@125
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@127
    if-eqz v2, :cond_153

    #@129
    .line 1387
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@12b
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@12d
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    #@12f
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    #@131
    move-object/from16 v0, p3

    #@133
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    #@136
    goto :goto_153

    #@137
    .line 1391
    :cond_137
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    #@139
    if-eq v0, v11, :cond_153

    #@13b
    .line 1392
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    #@13d
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@140
    move-result-object v0

    #@141
    move-object v2, v0

    #@142
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@144
    if-eqz v2, :cond_153

    #@146
    .line 1394
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@148
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@14a
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    #@14c
    iget v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    #@14e
    move-object/from16 v0, p3

    #@150
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    #@153
    .line 1401
    :cond_153
    :goto_153
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    #@155
    if-eq v0, v11, :cond_167

    #@157
    .line 1402
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    #@159
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@15b
    move-object/from16 v0, p0

    #@15d
    move-object/from16 v1, p3

    #@15f
    move-object/from16 v2, p4

    #@161
    move-object/from16 v3, p5

    #@163
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@166
    goto :goto_18e

    #@167
    .line 1404
    :cond_167
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    #@169
    if-eq v0, v11, :cond_17b

    #@16b
    .line 1405
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    #@16d
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@16f
    move-object/from16 v0, p0

    #@171
    move-object/from16 v1, p3

    #@173
    move-object/from16 v2, p4

    #@175
    move-object/from16 v3, p5

    #@177
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@17a
    goto :goto_18e

    #@17b
    .line 1407
    :cond_17b
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    #@17d
    if-eq v0, v11, :cond_18e

    #@17f
    .line 1408
    iget v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    #@181
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@183
    move-object/from16 v0, p0

    #@185
    move-object/from16 v1, p3

    #@187
    move-object/from16 v2, p4

    #@189
    move-object/from16 v3, p5

    #@18b
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setWidgetBaseline(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@18e
    :cond_18e
    :goto_18e
    const/4 v0, 0x0

    #@18f
    cmpl-float v1, v15, v0

    #@191
    if-ltz v1, :cond_196

    #@193
    .line 1413
    invoke-virtual {v6, v15}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    #@196
    .line 1415
    :cond_196
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    #@198
    cmpl-float v0, v1, v0

    #@19a
    if-ltz v0, :cond_1a1

    #@19c
    .line 1416
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    #@19e
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    #@1a1
    :cond_1a1
    :goto_1a1
    if-eqz p1, :cond_1b2

    #@1a3
    .line 1420
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    #@1a5
    if-ne v0, v11, :cond_1ab

    #@1a7
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    #@1a9
    if-eq v0, v11, :cond_1b2

    #@1ab
    .line 1422
    :cond_1ab
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    #@1ad
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    #@1af
    invoke-virtual {v6, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setOrigin(II)V

    #@1b2
    .line 1426
    :cond_1b2
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    #@1b4
    const/4 v1, -0x2

    #@1b5
    if-nez v0, :cond_1e8

    #@1b7
    .line 1427
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    #@1b9
    if-ne v0, v11, :cond_1df

    #@1bb
    .line 1428
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    #@1bd
    if-eqz v0, :cond_1c5

    #@1bf
    .line 1429
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1c1
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@1c4
    goto :goto_1ca

    #@1c5
    .line 1431
    :cond_1c5
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1c7
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@1ca
    .line 1433
    :goto_1ca
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1cc
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1cf
    move-result-object v0

    #@1d0
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    #@1d2
    iput v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@1d4
    .line 1434
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1d6
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1d9
    move-result-object v0

    #@1da
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    #@1dc
    iput v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@1de
    goto :goto_1fb

    #@1df
    .line 1436
    :cond_1df
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1e1
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@1e4
    .line 1437
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    #@1e7
    goto :goto_1fb

    #@1e8
    .line 1440
    :cond_1e8
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1ea
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@1ed
    .line 1441
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    #@1ef
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    #@1f2
    .line 1442
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    #@1f4
    if-ne v0, v1, :cond_1fb

    #@1f6
    .line 1443
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1f8
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@1fb
    .line 1446
    :cond_1fb
    :goto_1fb
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    #@1fd
    if-nez v0, :cond_230

    #@1ff
    .line 1447
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    #@201
    if-ne v0, v11, :cond_227

    #@203
    .line 1448
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    #@205
    if-eqz v0, :cond_20d

    #@207
    .line 1449
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@209
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@20c
    goto :goto_212

    #@20d
    .line 1451
    :cond_20d
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@20f
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@212
    .line 1453
    :goto_212
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@214
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@217
    move-result-object v0

    #@218
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    #@21a
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@21c
    .line 1454
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@21e
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@221
    move-result-object v0

    #@222
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    #@224
    iput v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@226
    goto :goto_243

    #@227
    .line 1456
    :cond_227
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@229
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@22c
    .line 1457
    invoke-virtual {v6, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    #@22f
    goto :goto_243

    #@230
    .line 1460
    :cond_230
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@232
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@235
    .line 1461
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    #@237
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    #@23a
    .line 1462
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    #@23c
    if-ne v0, v1, :cond_243

    #@23e
    .line 1463
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@240
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@243
    .line 1467
    :cond_243
    :goto_243
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    #@245
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    #@248
    .line 1468
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    #@24a
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    #@24d
    .line 1469
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    #@24f
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalWeight(F)V

    #@252
    .line 1470
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    #@254
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    #@257
    .line 1471
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    #@259
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    #@25c
    .line 1472
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    #@25e
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWrapBehaviorInParent(I)V

    #@261
    .line 1473
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    #@263
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    #@265
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    #@267
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    #@269
    invoke-virtual {v6, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    #@26c
    .line 1476
    iget v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    #@26e
    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    #@270
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    #@272
    iget v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    #@274
    invoke-virtual {v6, v0, v1, v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    #@277
    :cond_277
    :goto_277
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    #@0
    .line 1958
    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@2
    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    .line 1984
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    #@4
    const/4 v2, 0x0

    #@5
    if-eqz v1, :cond_1e

    #@7
    .line 1985
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    if-lez v1, :cond_1e

    #@d
    move v3, v2

    #@e
    :goto_e
    if-ge v3, v1, :cond_1e

    #@10
    .line 1988
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@18
    .line 1989
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreDraw(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@1b
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_e

    #@1e
    .line 1994
    :cond_1e
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@21
    .line 1996
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_d1

    #@27
    .line 1997
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    #@2a
    move-result v1

    #@2b
    int-to-float v1, v1

    #@2c
    .line 1998
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    #@2f
    move-result v3

    #@30
    int-to-float v3, v3

    #@31
    .line 2001
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    #@34
    move-result v4

    #@35
    move v5, v2

    #@36
    :goto_36
    if-ge v5, v4, :cond_d1

    #@38
    .line 2003
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@3b
    move-result-object v6

    #@3c
    .line 2004
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    #@3f
    move-result v7

    #@40
    const/16 v8, 0x8

    #@42
    if-ne v7, v8, :cond_46

    #@44
    goto/16 :goto_cd

    #@46
    .line 2007
    :cond_46
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@49
    move-result-object v6

    #@4a
    if-eqz v6, :cond_cd

    #@4c
    .line 2008
    instance-of v7, v6, Ljava/lang/String;

    #@4e
    if-eqz v7, :cond_cd

    #@50
    .line 2009
    check-cast v6, Ljava/lang/String;

    #@52
    const-string v7, ","

    #@54
    .line 2010
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    .line 2011
    array-length v7, v6

    #@59
    const/4 v8, 0x4

    #@5a
    if-ne v7, v8, :cond_cd

    #@5c
    .line 2012
    aget-object v7, v6, v2

    #@5e
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@61
    move-result v7

    #@62
    const/4 v8, 0x1

    #@63
    .line 2013
    aget-object v8, v6, v8

    #@65
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@68
    move-result v8

    #@69
    const/4 v9, 0x2

    #@6a
    .line 2014
    aget-object v9, v6, v9

    #@6c
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6f
    move-result v9

    #@70
    const/4 v10, 0x3

    #@71
    .line 2015
    aget-object v6, v6, v10

    #@73
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@76
    move-result v6

    #@77
    int-to-float v7, v7

    #@78
    const/high16 v10, 0x44870000    # 1080.0f

    #@7a
    div-float/2addr v7, v10

    #@7b
    mul-float/2addr v7, v1

    #@7c
    float-to-int v7, v7

    #@7d
    int-to-float v8, v8

    #@7e
    const/high16 v11, 0x44f00000    # 1920.0f

    #@80
    div-float/2addr v8, v11

    #@81
    mul-float/2addr v8, v3

    #@82
    float-to-int v8, v8

    #@83
    int-to-float v9, v9

    #@84
    div-float/2addr v9, v10

    #@85
    mul-float/2addr v9, v1

    #@86
    float-to-int v9, v9

    #@87
    int-to-float v6, v6

    #@88
    div-float/2addr v6, v11

    #@89
    mul-float/2addr v6, v3

    #@8a
    float-to-int v6, v6

    #@8b
    .line 2020
    new-instance v15, Landroid/graphics/Paint;

    #@8d
    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    #@90
    const/high16 v10, -0x10000

    #@92
    .line 2021
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    #@95
    int-to-float v14, v7

    #@96
    int-to-float v13, v8

    #@97
    add-int/2addr v7, v9

    #@98
    int-to-float v7, v7

    #@99
    move-object/from16 v10, p1

    #@9b
    move v11, v14

    #@9c
    move v12, v13

    #@9d
    move v9, v13

    #@9e
    move v13, v7

    #@9f
    move/from16 v16, v14

    #@a1
    move v14, v9

    #@a2
    move-object/from16 v17, v15

    #@a4
    .line 2022
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@a7
    add-int/2addr v8, v6

    #@a8
    int-to-float v6, v8

    #@a9
    move v11, v7

    #@aa
    move v12, v9

    #@ab
    move v14, v6

    #@ac
    .line 2023
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@af
    move v12, v6

    #@b0
    move/from16 v13, v16

    #@b2
    .line 2024
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@b5
    move/from16 v11, v16

    #@b7
    move v14, v9

    #@b8
    .line 2025
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@bb
    const v8, -0xff0100

    #@be
    .line 2026
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    #@c1
    move v12, v9

    #@c2
    move v13, v7

    #@c3
    move v14, v6

    #@c4
    move-object v8, v15

    #@c5
    .line 2027
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@c8
    move v12, v6

    #@c9
    move v14, v9

    #@ca
    .line 2028
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    #@cd
    :cond_cd
    :goto_cd
    add-int/lit8 v5, v5, 0x1

    #@cf
    goto/16 :goto_36

    #@d1
    :cond_d1
    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/core/Metrics;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metrics"
        }
    .end annotation

    #@0
    .line 1545
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    #@2
    .line 1546
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@4
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->fillMetrics(Landroidx/constraintlayout/core/Metrics;)V

    #@7
    return-void
.end method

.method public forceLayout()V
    .registers 1

    #@0
    .line 3610
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->markHierarchyDirty()V

    #@3
    .line 3611
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    #@6
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    #@0
    .line 486
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .registers 3

    #@0
    .line 1942
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@2
    const/4 v1, -0x2

    #@3
    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    #@6
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "attrs"
        }
    .end annotation

    #@0
    .line 486
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    #@0
    .line 1950
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@2
    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    #@0
    .line 1934
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@9
    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    #@0
    if-nez p1, :cond_19

    #@2
    .line 572
    instance-of p1, p2, Ljava/lang/String;

    #@4
    if-eqz p1, :cond_19

    #@6
    .line 573
    check-cast p2, Ljava/lang/String;

    #@8
    .line 574
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    #@a
    if-eqz p1, :cond_19

    #@c
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@f
    move-result p1

    #@10
    if-eqz p1, :cond_19

    #@12
    .line 575
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    #@14
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object p1

    #@18
    return-object p1

    #@19
    :cond_19
    const/4 p1, 0x0

    #@1a
    return-object p1
.end method

.method public getMaxHeight()I
    .registers 2

    #@0
    .line 1128
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    #@2
    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    #@0
    .line 1118
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    #@2
    return v0
.end method

.method public getMinHeight()I
    .registers 2

    #@0
    .line 1081
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    #@2
    return v0
.end method

.method public getMinWidth()I
    .registers 2

    #@0
    .line 1071
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    #@2
    return v0
.end method

.method public getOptimizationLevel()I
    .registers 2

    #@0
    .line 1926
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSceneString()Ljava/lang/String;
    .registers 9

    #@0
    .line 3642
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 3644
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@7
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->stringId:Ljava/lang/String;

    #@9
    const/4 v2, -0x1

    #@a
    if-nez v1, :cond_29

    #@c
    .line 3645
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    #@f
    move-result v1

    #@10
    if-eq v1, v2, :cond_23

    #@12
    .line 3647
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 3648
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@20
    iput-object v1, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->stringId:Ljava/lang/String;

    #@22
    goto :goto_29

    #@23
    .line 3650
    :cond_23
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@25
    const-string v3, "parent"

    #@27
    iput-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->stringId:Ljava/lang/String;

    #@29
    .line 3653
    :cond_29
    :goto_29
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@2b
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getDebugName()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    const-string v3, " setDebugName "

    #@31
    const-string v4, "ConstraintLayout"

    #@33
    if-nez v1, :cond_52

    #@35
    .line 3654
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@37
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->stringId:Ljava/lang/String;

    #@39
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setDebugName(Ljava/lang/String;)V

    #@3c
    .line 3655
    new-instance v1, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@41
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@43
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getDebugName()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    .line 3658
    :cond_52
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@54
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    #@57
    move-result-object v1

    #@58
    .line 3659
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5b
    move-result-object v1

    #@5c
    :cond_5c
    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5f
    move-result v5

    #@60
    if-eqz v5, :cond_a8

    #@62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@65
    move-result-object v5

    #@66
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@68
    .line 3660
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    #@6b
    move-result-object v6

    #@6c
    check-cast v6, Landroid/view/View;

    #@6e
    if-eqz v6, :cond_5c

    #@70
    .line 3662
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@72
    if-nez v7, :cond_88

    #@74
    .line 3663
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    #@77
    move-result v6

    #@78
    if-eq v6, v2, :cond_88

    #@7a
    .line 3665
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    #@7d
    move-result-object v7

    #@7e
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@85
    move-result-object v6

    #@86
    .line 3666
    iput-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@88
    .line 3669
    :cond_88
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    #@8b
    move-result-object v6

    #@8c
    if-nez v6, :cond_5c

    #@8e
    .line 3670
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@90
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    #@93
    .line 3671
    new-instance v6, Ljava/lang/StringBuilder;

    #@95
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@98
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v5

    #@a0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v5

    #@a4
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a7
    goto :goto_5c

    #@a8
    .line 3676
    :cond_a8
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@aa
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getSceneString(Ljava/lang/StringBuilder;)V

    #@ad
    .line 3677
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v0

    #@b1
    return-object v0
.end method

.method public getViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 1976
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Landroid/view/View;

    #@8
    return-object p1
.end method

.method public final getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    if-ne p1, p0, :cond_5

    #@2
    .line 1526
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@4
    return-object p1

    #@5
    :cond_5
    if-eqz p1, :cond_34

    #@7
    .line 1529
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@a
    move-result-object v0

    #@b
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@d
    if-eqz v0, :cond_18

    #@f
    .line 1530
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@12
    move-result-object p1

    #@13
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@15
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@17
    return-object p1

    #@18
    .line 1532
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@23
    .line 1533
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@26
    move-result-object v0

    #@27
    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@29
    if-eqz v0, :cond_34

    #@2b
    .line 1534
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@2e
    move-result-object p1

    #@2f
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@31
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@33
    return-object p1

    #@34
    :cond_34
    const/4 p1, 0x0

    #@35
    return-object p1
.end method

.method protected isRtl()Z
    .registers 4

    #@0
    .line 1723
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    #@a
    const/high16 v1, 0x400000

    #@c
    and-int/2addr v0, v1

    #@d
    const/4 v1, 0x0

    #@e
    const/4 v2, 0x1

    #@f
    if-eqz v0, :cond_13

    #@11
    move v0, v2

    #@12
    goto :goto_14

    #@13
    :cond_13
    move v0, v1

    #@14
    :goto_14
    if-eqz v0, :cond_1d

    #@16
    .line 1724
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutDirection()I

    #@19
    move-result v0

    #@1a
    if-ne v2, v0, :cond_1d

    #@1c
    move v1, v2

    #@1d
    :cond_1d
    return v1
.end method

.method public loadLayoutDescription(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutDescription"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_12

    #@3
    .line 2092
    :try_start_3
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@5
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    #@8
    move-result-object v2

    #@9
    invoke-direct {v1, v2, p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    #@c
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_e} :catch_f

    #@e
    goto :goto_14

    #@f
    .line 2094
    :catch_f
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@11
    goto :goto_14

    #@12
    .line 2097
    :cond_12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@14
    :goto_14
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    #@0
    .line 1839
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    #@3
    move-result p1

    #@4
    .line 1840
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    #@7
    move-result p2

    #@8
    const/4 p3, 0x0

    #@9
    move p4, p3

    #@a
    :goto_a
    if-ge p4, p1, :cond_5e

    #@c
    .line 1842
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@f
    move-result-object p5

    #@10
    .line 1843
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@16
    .line 1844
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@18
    .line 1846
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    #@1b
    move-result v2

    #@1c
    const/16 v3, 0x8

    #@1e
    if-ne v2, v3, :cond_2f

    #@20
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    #@22
    if-nez v2, :cond_2f

    #@24
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    #@26
    if-nez v2, :cond_2f

    #@28
    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isVirtualGroup:Z

    #@2a
    if-nez v2, :cond_2f

    #@2c
    if-nez p2, :cond_2f

    #@2e
    goto :goto_5b

    #@2f
    .line 1851
    :cond_2f
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    #@31
    if-eqz v0, :cond_34

    #@33
    goto :goto_5b

    #@34
    .line 1854
    :cond_34
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    #@37
    move-result v0

    #@38
    .line 1855
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    #@3b
    move-result v2

    #@3c
    .line 1856
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@3f
    move-result v3

    #@40
    add-int/2addr v3, v0

    #@41
    .line 1857
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@44
    move-result v1

    #@45
    add-int/2addr v1, v2

    #@46
    .line 1873
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    #@49
    .line 1874
    instance-of v4, p5, Landroidx/constraintlayout/widget/Placeholder;

    #@4b
    if-eqz v4, :cond_5b

    #@4d
    .line 1875
    check-cast p5, Landroidx/constraintlayout/widget/Placeholder;

    #@4f
    .line 1876
    invoke-virtual {p5}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    #@52
    move-result-object p5

    #@53
    if-eqz p5, :cond_5b

    #@55
    .line 1878
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    #@58
    .line 1879
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    #@5b
    :cond_5b
    :goto_5b
    add-int/lit8 p4, p4, 0x1

    #@5d
    goto :goto_a

    #@5e
    .line 1883
    :cond_5e
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    #@60
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@63
    move-result p1

    #@64
    if-lez p1, :cond_76

    #@66
    :goto_66
    if-ge p3, p1, :cond_76

    #@68
    .line 1886
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    #@6a
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6d
    move-result-object p2

    #@6e
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@70
    .line 1887
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@73
    add-int/lit8 p3, p3, 0x1

    #@75
    goto :goto_66

    #@76
    :cond_76
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    #@0
    .line 1646
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    #@2
    if-ne v0, p1, :cond_6

    #@4
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    #@6
    .line 1649
    :cond_6
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    #@8
    const/4 v1, 0x0

    #@9
    if-nez v0, :cond_23

    #@b
    .line 1654
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    #@e
    move-result v0

    #@f
    move v2, v1

    #@10
    :goto_10
    if-ge v2, v0, :cond_23

    #@12
    .line 1656
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    #@15
    move-result-object v3

    #@16
    .line 1657
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_20

    #@1c
    const/4 v0, 0x1

    #@1d
    .line 1661
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    #@1f
    goto :goto_23

    #@20
    :cond_20
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_10

    #@23
    .line 1667
    :cond_23
    :goto_23
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    #@25
    .line 1691
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    #@27
    .line 1692
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    #@29
    .line 1699
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@2b
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    #@2e
    move-result v2

    #@2f
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    #@32
    .line 1701
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    #@34
    if-eqz v0, :cond_43

    #@36
    .line 1702
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    #@38
    .line 1703
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->updateHierarchy()Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_43

    #@3e
    .line 1704
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@40
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    #@43
    .line 1708
    :cond_43
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@45
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    #@47
    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    #@4a
    .line 1709
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@4c
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@4f
    move-result v4

    #@50
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@52
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@55
    move-result v5

    #@56
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@58
    .line 1710
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    #@5b
    move-result v6

    #@5c
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@5e
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    #@61
    move-result v7

    #@62
    move-object v1, p0

    #@63
    move v2, p1

    #@64
    move v3, p2

    #@65
    .line 1709
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    #@68
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    .line 1002
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    #@3
    .line 1003
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@6
    move-result-object v0

    #@7
    .line 1004
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    #@9
    const/4 v2, 0x1

    #@a
    if-eqz v1, :cond_28

    #@c
    .line 1005
    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    #@e
    if-nez v0, :cond_28

    #@10
    .line 1006
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@16
    .line 1007
    new-instance v1, Landroidx/constraintlayout/core/widgets/Guideline;

    #@18
    invoke-direct {v1}, Landroidx/constraintlayout/core/widgets/Guideline;-><init>()V

    #@1b
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1d
    .line 1008
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    #@1f
    .line 1009
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@21
    check-cast v1, Landroidx/constraintlayout/core/widgets/Guideline;

    #@23
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    #@25
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setOrientation(I)V

    #@28
    .line 1012
    :cond_28
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@2a
    if-eqz v0, :cond_47

    #@2c
    .line 1013
    move-object v0, p1

    #@2d
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@2f
    .line 1014
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    #@32
    .line 1015
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    #@38
    .line 1016
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    #@3a
    .line 1017
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@3f
    move-result v1

    #@40
    if-nez v1, :cond_47

    #@42
    .line 1018
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@47
    .line 1021
    :cond_47
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    #@49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@4c
    move-result v1

    #@4d
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@50
    .line 1022
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    #@52
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    .line 1030
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    #@3
    .line 1031
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    #@5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    #@c
    .line 1032
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@f
    move-result-object v0

    #@10
    .line 1033
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@12
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->remove(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@15
    .line 1034
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1a
    const/4 p1, 0x1

    #@1b
    .line 1035
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    #@1d
    return-void
.end method

.method protected parseLayoutDescription(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 994
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    #@9
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@b
    return-void
.end method

.method public requestLayout()V
    .registers 1

    #@0
    .line 3604
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->markHierarchyDirty()V

    #@3
    .line 3605
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    #@6
    return-void
.end method

.method protected resolveMeasuredDimension(IIIIZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec",
            "measuredWidth",
            "measuredHeight",
            "isWidthMeasuredTooSmall",
            "isHeightMeasuredTooSmall"
        }
    .end annotation

    #@0
    .line 1612
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    #@2
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    #@4
    .line 1613
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    #@6
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    #@8
    add-int/2addr p3, v1

    #@9
    add-int/2addr p4, v0

    #@a
    const/4 v0, 0x0

    #@b
    .line 1618
    invoke-static {p3, p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    #@e
    move-result p1

    #@f
    .line 1619
    invoke-static {p4, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    #@12
    move-result p2

    #@13
    const p3, 0xffffff

    #@16
    and-int/2addr p1, p3

    #@17
    and-int/2addr p2, p3

    #@18
    .line 1623
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    #@1a
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    #@1d
    move-result p1

    #@1e
    .line 1624
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    #@20
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    #@23
    move-result p2

    #@24
    const/high16 p3, 0x1000000

    #@26
    if-eqz p5, :cond_29

    #@28
    or-int/2addr p1, p3

    #@29
    :cond_29
    if-eqz p6, :cond_2c

    #@2b
    or-int/2addr p2, p3

    #@2c
    .line 1631
    :cond_2c
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    #@2f
    .line 1632
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    #@31
    .line 1633
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    #@33
    return-void
.end method

.method protected resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .registers 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layout",
            "optimizationLevel",
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    #@0
    move-object/from16 v6, p0

    #@2
    .line 1562
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@5
    move-result v9

    #@6
    .line 1563
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@9
    move-result v0

    #@a
    .line 1564
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@d
    move-result v11

    #@e
    .line 1565
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@11
    move-result v1

    #@12
    .line 1567
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    #@15
    move-result v2

    #@16
    const/4 v3, 0x0

    #@17
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@1a
    move-result v19

    #@1b
    .line 1568
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    #@1e
    move-result v2

    #@1f
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@22
    move-result v16

    #@23
    add-int v2, v19, v16

    #@25
    .line 1570
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    #@28
    move-result v4

    #@29
    .line 1572
    iget-object v12, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    #@2b
    move/from16 v13, p3

    #@2d
    move/from16 v14, p4

    #@2f
    move/from16 v15, v19

    #@31
    move/from16 v17, v4

    #@33
    move/from16 v18, v2

    #@35
    invoke-virtual/range {v12 .. v18}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->captureLayoutInfo(IIIIII)V

    #@38
    .line 1575
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    #@3b
    move-result v5

    #@3c
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v5

    #@40
    .line 1576
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    #@43
    move-result v7

    #@44
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    #@47
    move-result v7

    #@48
    if-gtz v5, :cond_57

    #@4a
    if-lez v7, :cond_4d

    #@4c
    goto :goto_57

    #@4d
    .line 1584
    :cond_4d
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    #@50
    move-result v5

    #@51
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    #@54
    move-result v3

    #@55
    move v15, v3

    #@56
    goto :goto_60

    #@57
    .line 1578
    :cond_57
    :goto_57
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    #@5a
    move-result v3

    #@5b
    if-eqz v3, :cond_5f

    #@5d
    move v15, v7

    #@5e
    goto :goto_60

    #@5f
    :cond_5f
    move v15, v5

    #@60
    :goto_60
    sub-int v10, v0, v4

    #@62
    sub-int v12, v1, v2

    #@64
    move-object/from16 v0, p0

    #@66
    move-object/from16 v1, p1

    #@68
    move v2, v9

    #@69
    move v3, v10

    #@6a
    move v4, v11

    #@6b
    move v5, v12

    #@6c
    .line 1593
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelfDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;IIII)V

    #@6f
    .line 1594
    iget v13, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    #@71
    iget v14, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    #@73
    move-object/from16 v7, p1

    #@75
    move/from16 v8, p2

    #@77
    move/from16 v16, v19

    #@79
    invoke-virtual/range {v7 .. v16}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(IIIIIIIII)J

    #@7c
    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    #@0
    .line 1967
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    #@2
    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "value1",
            "value2"
        }
    .end annotation

    #@0
    if-nez p1, :cond_35

    #@2
    .line 554
    instance-of p1, p2, Ljava/lang/String;

    #@4
    if-eqz p1, :cond_35

    #@6
    instance-of p1, p3, Ljava/lang/Integer;

    #@8
    if-eqz p1, :cond_35

    #@a
    .line 555
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    #@c
    if-nez p1, :cond_15

    #@e
    .line 556
    new-instance p1, Ljava/util/HashMap;

    #@10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    #@13
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    #@15
    .line 558
    :cond_15
    check-cast p2, Ljava/lang/String;

    #@17
    const-string p1, "/"

    #@19
    .line 559
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1c
    move-result p1

    #@1d
    const/4 v0, -0x1

    #@1e
    if-eq p1, v0, :cond_26

    #@20
    add-int/lit8 p1, p1, 0x1

    #@22
    .line 561
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@25
    move-result-object p2

    #@26
    .line 563
    :cond_26
    check-cast p3, Ljava/lang/Integer;

    #@28
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result p1

    #@2c
    .line 564
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    #@2e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object p1

    #@32
    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    :cond_35
    return-void
.end method

.method public setId(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 607
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    #@2
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    #@9
    .line 608
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    #@c
    .line 609
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    #@e
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    #@11
    move-result v0

    #@12
    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@15
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    #@0
    .line 1103
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    .line 1106
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    #@7
    .line 1107
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    #@a
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    #@0
    .line 1090
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    .line 1093
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    #@7
    .line 1094
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    #@a
    return-void
.end method

.method public setMinHeight(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    #@0
    .line 1057
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    .line 1060
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    #@7
    .line 1061
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    #@a
    return-void
.end method

.method public setMinWidth(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    #@0
    .line 1044
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return-void

    #@5
    .line 1047
    :cond_5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    #@7
    .line 1048
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    #@a
    return-void
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintsChangedListener"
        }
    .end annotation

    #@0
    .line 2078
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    #@2
    .line 2079
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@4
    if-eqz v0, :cond_9

    #@6
    .line 2080
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V

    #@9
    :cond_9
    return-void
.end method

.method public setOptimizationLevel(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    #@0
    .line 1915
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    #@2
    .line 1916
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@4
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    #@7
    return-void
.end method

.method protected setSelfDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;IIII)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "layout",
            "widthMode",
            "widthSize",
            "heightMode",
            "heightSize"
        }
    .end annotation

    #@0
    .line 1748
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    #@2
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    #@4
    .line 1749
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    #@6
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    #@8
    .line 1751
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@a
    .line 1752
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@c
    .line 1756
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    #@f
    move-result v4

    #@10
    const/high16 v5, 0x40000000    # 2.0f

    #@12
    const/high16 v6, -0x80000000

    #@14
    const/4 v7, 0x0

    #@15
    if-eq p2, v6, :cond_30

    #@17
    if-eqz p2, :cond_25

    #@19
    if-eq p2, v5, :cond_1d

    #@1b
    :cond_1b
    move p3, v7

    #@1c
    goto :goto_3a

    #@1d
    .line 1775
    :cond_1d
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    #@1f
    sub-int/2addr p2, v1

    #@20
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    #@23
    move-result p3

    #@24
    goto :goto_3a

    #@25
    .line 1768
    :cond_25
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@27
    if-nez v4, :cond_1b

    #@29
    .line 1770
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    #@2b
    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    #@2e
    move-result p3

    #@2f
    goto :goto_3a

    #@30
    .line 1760
    :cond_30
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@32
    if-nez v4, :cond_3a

    #@34
    .line 1763
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    #@36
    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    #@39
    move-result p3

    #@3a
    :cond_3a
    :goto_3a
    if-eq p4, v6, :cond_55

    #@3c
    if-eqz p4, :cond_4a

    #@3e
    if-eq p4, v5, :cond_42

    #@40
    :cond_40
    move p5, v7

    #@41
    goto :goto_5f

    #@42
    .line 1795
    :cond_42
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    #@44
    sub-int/2addr p2, v0

    #@45
    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    #@48
    move-result p5

    #@49
    goto :goto_5f

    #@4a
    .line 1788
    :cond_4a
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@4c
    if-nez v4, :cond_40

    #@4e
    .line 1790
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    #@50
    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    #@53
    move-result p5

    #@54
    goto :goto_5f

    #@55
    .line 1780
    :cond_55
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@57
    if-nez v4, :cond_5f

    #@59
    .line 1783
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    #@5b
    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    #@5e
    move-result p5

    #@5f
    .line 1799
    :cond_5f
    :goto_5f
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@62
    move-result p2

    #@63
    if-ne p3, p2, :cond_6b

    #@65
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@68
    move-result p2

    #@69
    if-eq p5, p2, :cond_6e

    #@6b
    .line 1800
    :cond_6b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateMeasures()V

    #@6e
    .line 1802
    :cond_6e
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setX(I)V

    #@71
    .line 1803
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setY(I)V

    #@74
    .line 1804
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    #@76
    sub-int/2addr p2, v1

    #@77
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    #@7a
    .line 1805
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    #@7c
    sub-int/2addr p2, v0

    #@7d
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    #@80
    .line 1806
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    #@83
    .line 1807
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    #@86
    .line 1808
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@89
    .line 1809
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    #@8c
    .line 1810
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@8f
    .line 1811
    invoke-virtual {p1, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    #@92
    .line 1812
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    #@94
    sub-int/2addr p2, v1

    #@95
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    #@98
    .line 1813
    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    #@9a
    sub-int/2addr p2, v0

    #@9b
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    #@9e
    return-void
.end method

.method public setState(III)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "screenWidth",
            "screenHeight"
        }
    .end annotation

    #@0
    .line 1825
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@2
    if-eqz v0, :cond_9

    #@4
    int-to-float p2, p2

    #@5
    int-to-float p3, p3

    #@6
    .line 1826
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->updateConstraints(IFF)V

    #@9
    :cond_9
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method
