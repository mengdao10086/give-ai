.class public Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/core/widgets/WidgetContainer;
.source "ConstraintWidgetContainer.java"


# static fields
.field private static final DEBUG:Z = false

.field static final DEBUG_GRAPH:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final MAX_ITERATIONS:I = 0x8

.field static myCounter:I


# instance fields
.field private horizontalWrapMax:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private horizontalWrapMin:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

.field mDebugSolverPassCount:I

.field public mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

.field public mGroupsWrapOptimized:Z

.field private mHeightMeasuredTooSmall:Z

.field mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mHorizontalChainsSize:I

.field public mHorizontalWrapOptimized:Z

.field private mIsRtl:Z

.field public mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field protected mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

.field public mMetrics:Landroidx/constraintlayout/core/Metrics;

.field private mOptimizationLevel:I

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field public mSkipSolver:Z

.field protected mSystem:Landroidx/constraintlayout/core/LinearSystem;

.field mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

.field public mVerticalChainsSize:I

.field public mVerticalWrapOptimized:Z

.field private mWidthMeasuredTooSmall:Z

.field public mWrapFixedHeight:I

.field public mWrapFixedWidth:I

.field private pass:I

.field private verticalWrapMax:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private verticalWrapMin:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field widgetsToAdd:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
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

.method public constructor <init>()V
    .registers 5

    #@0
    .line 179
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>()V

    #@3
    .line 48
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    #@5
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    #@a
    .line 54
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@c
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@11
    const/4 v0, 0x0

    #@12
    .line 128
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@14
    const/4 v1, 0x0

    #@15
    .line 139
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    #@17
    .line 147
    new-instance v2, Landroidx/constraintlayout/core/LinearSystem;

    #@19
    invoke-direct {v2}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    #@1c
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@1e
    .line 154
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    #@20
    .line 155
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    #@22
    const/4 v2, 0x4

    #@23
    new-array v3, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    #@25
    .line 157
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@27
    new-array v2, v2, [Landroidx/constraintlayout/core/widgets/ChainHead;

    #@29
    .line 158
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@2b
    .line 160
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    #@2d
    .line 161
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    #@2f
    .line 162
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    #@31
    .line 163
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    #@33
    .line 164
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    #@35
    const/16 v2, 0x101

    #@37
    .line 166
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    #@39
    .line 167
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    #@3b
    .line 169
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    #@3d
    .line 170
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    #@3f
    .line 273
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    #@41
    .line 275
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    #@43
    .line 276
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    #@45
    .line 277
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    #@47
    .line 278
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    #@49
    .line 320
    new-instance v0, Ljava/util/HashSet;

    #@4b
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@4e
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    #@50
    .line 518
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@52
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@55
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@57
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    #@0
    .line 201
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(II)V

    #@3
    .line 48
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    #@5
    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    #@8
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    #@a
    .line 54
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@c
    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    #@f
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@11
    const/4 p1, 0x0

    #@12
    .line 128
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@14
    const/4 p2, 0x0

    #@15
    .line 139
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    #@17
    .line 147
    new-instance v0, Landroidx/constraintlayout/core/LinearSystem;

    #@19
    invoke-direct {v0}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    #@1c
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@1e
    .line 154
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    #@20
    .line 155
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    #@22
    const/4 v0, 0x4

    #@23
    new-array v1, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    #@25
    .line 157
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@27
    new-array v0, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    #@29
    .line 158
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@2b
    .line 160
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    #@2d
    .line 161
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    #@2f
    .line 162
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    #@31
    .line 163
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    #@33
    .line 164
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    #@35
    const/16 v0, 0x101

    #@37
    .line 166
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    #@39
    .line 167
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    #@3b
    .line 169
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    #@3d
    .line 170
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    #@3f
    .line 273
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    #@41
    .line 275
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    #@43
    .line 276
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    #@45
    .line 277
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    #@47
    .line 278
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    #@49
    .line 320
    new-instance p1, Ljava/util/HashSet;

    #@4b
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    #@4e
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    #@50
    .line 518
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@52
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@55
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@57
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    #@0
    .line 191
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(IIII)V

    #@3
    .line 48
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    #@5
    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    #@8
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    #@a
    .line 54
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@c
    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    #@f
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@11
    const/4 p1, 0x0

    #@12
    .line 128
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@14
    const/4 p2, 0x0

    #@15
    .line 139
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    #@17
    .line 147
    new-instance p3, Landroidx/constraintlayout/core/LinearSystem;

    #@19
    invoke-direct {p3}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    #@1c
    iput-object p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@1e
    .line 154
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    #@20
    .line 155
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    #@22
    const/4 p3, 0x4

    #@23
    new-array p4, p3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    #@25
    .line 157
    iput-object p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@27
    new-array p3, p3, [Landroidx/constraintlayout/core/widgets/ChainHead;

    #@29
    .line 158
    iput-object p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@2b
    .line 160
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    #@2d
    .line 161
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    #@2f
    .line 162
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    #@31
    .line 163
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    #@33
    .line 164
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    #@35
    const/16 p3, 0x101

    #@37
    .line 166
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    #@39
    .line 167
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    #@3b
    .line 169
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    #@3d
    .line 170
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    #@3f
    .line 273
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    #@41
    .line 275
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    #@43
    .line 276
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    #@45
    .line 277
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    #@47
    .line 278
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    #@49
    .line 320
    new-instance p1, Ljava/util/HashSet;

    #@4b
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    #@4e
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    #@50
    .line 518
    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@52
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@55
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 6

    #@0
    .line 205
    invoke-direct {p0, p2, p3}, Landroidx/constraintlayout/core/widgets/WidgetContainer;-><init>(II)V

    #@3
    .line 48
    new-instance p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    #@5
    invoke-direct {p2, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    #@8
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    #@a
    .line 54
    new-instance p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@c
    invoke-direct {p2, p0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    #@f
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@11
    const/4 p2, 0x0

    #@12
    .line 128
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@14
    const/4 p3, 0x0

    #@15
    .line 139
    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    #@17
    .line 147
    new-instance v0, Landroidx/constraintlayout/core/LinearSystem;

    #@19
    invoke-direct {v0}, Landroidx/constraintlayout/core/LinearSystem;-><init>()V

    #@1c
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@1e
    .line 154
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    #@20
    .line 155
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    #@22
    const/4 v0, 0x4

    #@23
    new-array v1, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    #@25
    .line 157
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@27
    new-array v0, v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    #@29
    .line 158
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@2b
    .line 160
    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    #@2d
    .line 161
    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    #@2f
    .line 162
    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    #@31
    .line 163
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    #@33
    .line 164
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    #@35
    const/16 v0, 0x101

    #@37
    .line 166
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    #@39
    .line 167
    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    #@3b
    .line 169
    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    #@3d
    .line 170
    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    #@3f
    .line 273
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    #@41
    .line 275
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    #@43
    .line 276
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    #@45
    .line 277
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    #@47
    .line 278
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    #@49
    .line 320
    new-instance p2, Ljava/util/HashSet;

    #@4b
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    #@4e
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    #@50
    .line 518
    new-instance p2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@52
    invoke-direct {p2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@55
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@57
    .line 206
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setDebugName(Ljava/lang/String;)V

    #@5a
    return-void
.end method

.method private addHorizontalChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 7

    #@0
    .line 1074
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@6
    array-length v2, v1

    #@7
    if-lt v0, v2, :cond_14

    #@9
    .line 1075
    array-length v0, v1

    #@a
    mul-int/lit8 v0, v0, 0x2

    #@c
    .line 1076
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    #@12
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@14
    .line 1078
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@16
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    #@18
    new-instance v2, Landroidx/constraintlayout/core/widgets/ChainHead;

    #@1a
    const/4 v3, 0x0

    #@1b
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    #@1e
    move-result v4

    #@1f
    invoke-direct {v2, p1, v3, v4}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    #@22
    aput-object v2, v0, v1

    #@24
    .line 1079
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    #@26
    add-int/lit8 p1, p1, 0x1

    #@28
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    #@2a
    return-void
.end method

.method private addMaxWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 6

    #@0
    .line 315
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@5
    move-result-object p1

    #@6
    .line 317
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@8
    const/4 v1, 0x0

    #@9
    const/4 v2, 0x5

    #@a
    invoke-virtual {v0, p2, p1, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@d
    return-void
.end method

.method private addMinWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V
    .registers 6

    #@0
    .line 309
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@5
    move-result-object p1

    #@6
    .line 311
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@8
    const/4 v1, 0x0

    #@9
    const/4 v2, 0x5

    #@a
    invoke-virtual {v0, p1, p2, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@d
    return-void
.end method

.method private addVerticalChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 7

    #@0
    .line 1089
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    #@2
    const/4 v1, 0x1

    #@3
    add-int/2addr v0, v1

    #@4
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@6
    array-length v3, v2

    #@7
    if-lt v0, v3, :cond_14

    #@9
    .line 1090
    array-length v0, v2

    #@a
    mul-int/lit8 v0, v0, 0x2

    #@c
    .line 1091
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [Landroidx/constraintlayout/core/widgets/ChainHead;

    #@12
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@14
    .line 1093
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    #@16
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    #@18
    new-instance v3, Landroidx/constraintlayout/core/widgets/ChainHead;

    #@1a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    #@1d
    move-result v4

    #@1e
    invoke-direct {v3, p1, v1, v4}, Landroidx/constraintlayout/core/widgets/ChainHead;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V

    #@21
    aput-object v3, v0, v2

    #@23
    .line 1094
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    #@25
    add-int/2addr p1, v1

    #@26
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    #@28
    return-void
.end method

.method public static measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z
    .registers 10

    #@0
    const/4 p0, 0x0

    #@1
    if-nez p2, :cond_4

    #@3
    return p0

    #@4
    .line 527
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@7
    move-result v0

    #@8
    const/16 v1, 0x8

    #@a
    if-eq v0, v1, :cond_138

    #@c
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/Guideline;

    #@e
    if-nez v0, :cond_138

    #@10
    instance-of v0, p1, Landroidx/constraintlayout/core/widgets/Barrier;

    #@12
    if-eqz v0, :cond_16

    #@14
    goto/16 :goto_138

    #@16
    .line 538
    :cond_16
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1c
    .line 539
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@22
    .line 540
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@25
    move-result v0

    #@26
    iput v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    #@28
    .line 541
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@2b
    move-result v0

    #@2c
    iput v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    #@2e
    .line 542
    iput-boolean p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    #@30
    .line 543
    iput p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    #@32
    .line 545
    iget-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@34
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@36
    const/4 v1, 0x1

    #@37
    if-ne p4, v0, :cond_3b

    #@39
    move p4, v1

    #@3a
    goto :goto_3c

    #@3b
    :cond_3b
    move p4, p0

    #@3c
    .line 546
    :goto_3c
    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3e
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@40
    if-ne v0, v2, :cond_44

    #@42
    move v0, v1

    #@43
    goto :goto_45

    #@44
    :cond_44
    move v0, p0

    #@45
    :goto_45
    const/4 v2, 0x0

    #@46
    if-eqz p4, :cond_50

    #@48
    .line 548
    iget v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@4a
    cmpl-float v3, v3, v2

    #@4c
    if-lez v3, :cond_50

    #@4e
    move v3, v1

    #@4f
    goto :goto_51

    #@50
    :cond_50
    move v3, p0

    #@51
    :goto_51
    if-eqz v0, :cond_5b

    #@53
    .line 549
    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@55
    cmpl-float v2, v4, v2

    #@57
    if-lez v2, :cond_5b

    #@59
    move v2, v1

    #@5a
    goto :goto_5c

    #@5b
    :cond_5b
    move v2, p0

    #@5c
    :goto_5c
    if-eqz p4, :cond_79

    #@5e
    .line 551
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    #@61
    move-result v4

    #@62
    if-eqz v4, :cond_79

    #@64
    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@66
    if-nez v4, :cond_79

    #@68
    if-nez v3, :cond_79

    #@6a
    .line 555
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@6c
    iput-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@6e
    if-eqz v0, :cond_78

    #@70
    .line 556
    iget p4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@72
    if-nez p4, :cond_78

    #@74
    .line 558
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@76
    iput-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@78
    :cond_78
    move p4, p0

    #@79
    :cond_79
    if-eqz v0, :cond_96

    #@7b
    .line 562
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDanglingDimension(I)Z

    #@7e
    move-result v4

    #@7f
    if-eqz v4, :cond_96

    #@81
    iget v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@83
    if-nez v4, :cond_96

    #@85
    if-nez v2, :cond_96

    #@87
    .line 566
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@89
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@8b
    if-eqz p4, :cond_95

    #@8d
    .line 567
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@8f
    if-nez v0, :cond_95

    #@91
    .line 569
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@93
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@95
    :cond_95
    move v0, p0

    #@96
    .line 573
    :cond_96
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedHorizontally()Z

    #@99
    move-result v4

    #@9a
    if-eqz v4, :cond_a1

    #@9c
    .line 575
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@9e
    iput-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@a0
    move p4, p0

    #@a1
    .line 577
    :cond_a1
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isResolvedVertically()Z

    #@a4
    move-result v4

    #@a5
    if-eqz v4, :cond_ac

    #@a7
    .line 579
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@a9
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@ab
    move v0, p0

    #@ac
    :cond_ac
    const/4 v4, 0x4

    #@ad
    if-eqz v3, :cond_db

    #@af
    .line 583
    iget-object v3, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    #@b1
    aget p0, v3, p0

    #@b3
    if-ne p0, v4, :cond_ba

    #@b5
    .line 584
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@b7
    iput-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@b9
    goto :goto_db

    #@ba
    :cond_ba
    if-nez v0, :cond_db

    #@bc
    .line 588
    iget-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@be
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@c0
    if-ne p0, v0, :cond_c5

    #@c2
    .line 589
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    #@c4
    goto :goto_ce

    #@c5
    .line 591
    :cond_c5
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@c7
    iput-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@c9
    .line 592
    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    #@cc
    .line 593
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    #@ce
    .line 595
    :goto_ce
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@d0
    iput-object v0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@d2
    .line 598
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    #@d5
    move-result v0

    #@d6
    int-to-float p0, p0

    #@d7
    mul-float/2addr v0, p0

    #@d8
    float-to-int p0, v0

    #@d9
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    #@db
    :cond_db
    :goto_db
    if-eqz v2, :cond_11a

    #@dd
    .line 605
    iget-object p0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    #@df
    aget p0, p0, v1

    #@e1
    if-ne p0, v4, :cond_e8

    #@e3
    .line 606
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@e5
    iput-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@e7
    goto :goto_11a

    #@e8
    :cond_e8
    if-nez p4, :cond_11a

    #@ea
    .line 610
    iget-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@ec
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@ee
    if-ne p0, p4, :cond_f3

    #@f0
    .line 611
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    #@f2
    goto :goto_fc

    #@f3
    .line 613
    :cond_f3
    sget-object p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@f5
    iput-object p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@f7
    .line 614
    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    #@fa
    .line 615
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    #@fc
    .line 617
    :goto_fc
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@fe
    iput-object p4, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@100
    .line 618
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatioSide()I

    #@103
    move-result p4

    #@104
    const/4 v0, -0x1

    #@105
    if-ne p4, v0, :cond_111

    #@107
    int-to-float p0, p0

    #@108
    .line 621
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    #@10b
    move-result p4

    #@10c
    div-float/2addr p0, p4

    #@10d
    float-to-int p0, p0

    #@10e
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    #@110
    goto :goto_11a

    #@111
    .line 624
    :cond_111
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    #@114
    move-result p4

    #@115
    int-to-float p0, p0

    #@116
    mul-float/2addr p4, p0

    #@117
    float-to-int p0, p4

    #@118
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    #@11a
    .line 632
    :cond_11a
    :goto_11a
    invoke-interface {p2, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    #@11d
    .line 633
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    #@11f
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    #@122
    .line 634
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    #@124
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    #@127
    .line 635
    iget-boolean p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    #@129
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    #@12c
    .line 636
    iget p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    #@12e
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    #@131
    .line 637
    sget p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    #@133
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    #@135
    .line 643
    iget-boolean p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    #@137
    return p0

    #@138
    .line 533
    :cond_138
    :goto_138
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    #@13a
    .line 534
    iput p0, p3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    #@13c
    return p0
.end method

.method private resetChains()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 1048
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    #@3
    .line 1049
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    #@5
    return-void
.end method


# virtual methods
.method addChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .registers 4

    #@0
    if-nez p2, :cond_6

    #@2
    .line 1061
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@5
    goto :goto_c

    #@6
    :cond_6
    const/4 v0, 0x1

    #@7
    if-ne p2, v0, :cond_c

    #@9
    .line 1063
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@c
    :cond_c
    :goto_c
    return-void
.end method

.method public addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)Z
    .registers 14

    #@0
    const/16 v0, 0x40

    #@2
    .line 335
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    #@5
    move-result v0

    #@6
    .line 336
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@9
    .line 337
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x0

    #@10
    move v3, v2

    #@11
    move v4, v3

    #@12
    :goto_12
    const/4 v5, 0x1

    #@13
    if-ge v3, v1, :cond_2b

    #@15
    .line 341
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v6

    #@1b
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1d
    .line 342
    invoke-virtual {v6, v2, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInBarrier(IZ)V

    #@20
    .line 343
    invoke-virtual {v6, v5, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setInBarrier(IZ)V

    #@23
    .line 344
    instance-of v6, v6, Landroidx/constraintlayout/core/widgets/Barrier;

    #@25
    if-eqz v6, :cond_28

    #@27
    move v4, v5

    #@28
    :cond_28
    add-int/lit8 v3, v3, 0x1

    #@2a
    goto :goto_12

    #@2b
    :cond_2b
    if-eqz v4, :cond_44

    #@2d
    move v3, v2

    #@2e
    :goto_2e
    if-ge v3, v1, :cond_44

    #@30
    .line 351
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@38
    .line 352
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    #@3a
    if-eqz v6, :cond_41

    #@3c
    .line 353
    check-cast v4, Landroidx/constraintlayout/core/widgets/Barrier;

    #@3e
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/Barrier;->markWidgets()V

    #@41
    :cond_41
    add-int/lit8 v3, v3, 0x1

    #@43
    goto :goto_2e

    #@44
    .line 358
    :cond_44
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    #@46
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    #@49
    move v3, v2

    #@4a
    :goto_4a
    if-ge v3, v1, :cond_6a

    #@4c
    .line 360
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@4e
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@51
    move-result-object v4

    #@52
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@54
    .line 361
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addFirst()Z

    #@57
    move-result v6

    #@58
    if-eqz v6, :cond_67

    #@5a
    .line 362
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    #@5c
    if-eqz v6, :cond_64

    #@5e
    .line 363
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    #@60
    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@63
    goto :goto_67

    #@64
    .line 365
    :cond_64
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@67
    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    #@69
    goto :goto_4a

    #@6a
    .line 372
    :cond_6a
    :goto_6a
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    #@6c
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    #@6f
    move-result v3

    #@70
    if-lez v3, :cond_c0

    #@72
    .line 373
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    #@74
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    #@77
    move-result v3

    #@78
    .line 375
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    #@7a
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@7d
    move-result-object v4

    #@7e
    :cond_7e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@81
    move-result v6

    #@82
    if-eqz v6, :cond_9c

    #@84
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@87
    move-result-object v6

    #@88
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@8a
    .line 376
    check-cast v6, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    #@8c
    .line 380
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    #@8e
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->contains(Ljava/util/HashSet;)Z

    #@91
    move-result v7

    #@92
    if-eqz v7, :cond_7e

    #@94
    .line 381
    invoke-virtual {v6, p1, v0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@97
    .line 382
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    #@99
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@9c
    .line 386
    :cond_9c
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    #@9e
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    #@a1
    move-result v4

    #@a2
    if-ne v3, v4, :cond_6a

    #@a4
    .line 388
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    #@a6
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@a9
    move-result-object v3

    #@aa
    :goto_aa
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@ad
    move-result v4

    #@ae
    if-eqz v4, :cond_ba

    #@b0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b3
    move-result-object v4

    #@b4
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@b6
    .line 389
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@b9
    goto :goto_aa

    #@ba
    .line 391
    :cond_ba
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->widgetsToAdd:Ljava/util/HashSet;

    #@bc
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    #@bf
    goto :goto_6a

    #@c0
    .line 395
    :cond_c0
    sget-boolean v3, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    #@c2
    if-eqz v3, :cond_10a

    #@c4
    .line 396
    new-instance v3, Ljava/util/HashSet;

    #@c6
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@c9
    move v4, v2

    #@ca
    :goto_ca
    if-ge v4, v1, :cond_e0

    #@cc
    .line 398
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@ce
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d1
    move-result-object v6

    #@d2
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@d4
    .line 399
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addFirst()Z

    #@d7
    move-result v7

    #@d8
    if-nez v7, :cond_dd

    #@da
    .line 400
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@dd
    :cond_dd
    add-int/lit8 v4, v4, 0x1

    #@df
    goto :goto_ca

    #@e0
    .line 404
    :cond_e0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@e3
    move-result-object v1

    #@e4
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@e6
    if-ne v1, v4, :cond_ea

    #@e8
    move v10, v2

    #@e9
    goto :goto_eb

    #@ea
    :cond_ea
    move v10, v5

    #@eb
    :goto_eb
    const/4 v11, 0x0

    #@ec
    move-object v6, p0

    #@ed
    move-object v7, p0

    #@ee
    move-object v8, p1

    #@ef
    move-object v9, v3

    #@f0
    .line 407
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    #@f3
    .line 408
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@f6
    move-result-object v1

    #@f7
    :goto_f7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@fa
    move-result v3

    #@fb
    if-eqz v3, :cond_154

    #@fd
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@100
    move-result-object v3

    #@101
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@103
    .line 409
    invoke-static {p0, p1, v3}, Landroidx/constraintlayout/core/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@106
    .line 410
    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@109
    goto :goto_f7

    #@10a
    :cond_10a
    move v3, v2

    #@10b
    :goto_10b
    if-ge v3, v1, :cond_154

    #@10d
    .line 415
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@10f
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@112
    move-result-object v4

    #@113
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@115
    .line 416
    instance-of v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@117
    if-eqz v6, :cond_145

    #@119
    .line 417
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@11b
    aget-object v6, v6, v2

    #@11d
    .line 418
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@11f
    aget-object v7, v7, v5

    #@121
    .line 419
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@123
    if-ne v6, v8, :cond_12a

    #@125
    .line 420
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@127
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@12a
    .line 422
    :cond_12a
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@12c
    if-ne v7, v8, :cond_133

    #@12e
    .line 423
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@130
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@133
    .line 425
    :cond_133
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@136
    .line 426
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@138
    if-ne v6, v8, :cond_13d

    #@13a
    .line 427
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@13d
    .line 429
    :cond_13d
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@13f
    if-ne v7, v6, :cond_151

    #@141
    .line 430
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@144
    goto :goto_151

    #@145
    .line 433
    :cond_145
    invoke-static {p0, p1, v4}, Landroidx/constraintlayout/core/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@148
    .line 434
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addFirst()Z

    #@14b
    move-result v6

    #@14c
    if-nez v6, :cond_151

    #@14e
    .line 435
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@151
    :cond_151
    :goto_151
    add-int/lit8 v3, v3, 0x1

    #@153
    goto :goto_10b

    #@154
    .line 441
    :cond_154
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    #@156
    const/4 v1, 0x0

    #@157
    if-lez v0, :cond_15c

    #@159
    .line 442
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    #@15c
    .line 444
    :cond_15c
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    #@15e
    if-lez v0, :cond_163

    #@160
    .line 445
    invoke-static {p0, p1, v1, v5}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    #@163
    :cond_163
    return v5
.end method

.method public addHorizontalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .registers 4

    #@0
    .line 302
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_1c

    #@4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_1c

    #@a
    .line 303
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@d
    move-result v0

    #@e
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    #@10
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@19
    move-result v1

    #@1a
    if-le v0, v1, :cond_23

    #@1c
    .line 304
    :cond_1c
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@1e
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@21
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    #@23
    :cond_23
    return-void
.end method

.method public addHorizontalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .registers 4

    #@0
    .line 288
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_1c

    #@4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_1c

    #@a
    .line 289
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@d
    move-result v0

    #@e
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    #@10
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@19
    move-result v1

    #@1a
    if-le v0, v1, :cond_23

    #@1c
    .line 290
    :cond_1c
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@1e
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@21
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    #@23
    :cond_23
    return-void
.end method

.method addVerticalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .registers 4

    #@0
    .line 295
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_1c

    #@4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_1c

    #@a
    .line 296
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@d
    move-result v0

    #@e
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    #@10
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@19
    move-result v1

    #@1a
    if-le v0, v1, :cond_23

    #@1c
    .line 297
    :cond_1c
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@1e
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@21
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    #@23
    :cond_23
    return-void
.end method

.method addVerticalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .registers 4

    #@0
    .line 281
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_1c

    #@4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_1c

    #@a
    .line 282
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@d
    move-result v0

    #@e
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    #@10
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@19
    move-result v1

    #@1a
    if-le v0, v1, :cond_23

    #@1c
    .line 283
    :cond_1c
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@1e
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@21
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    #@23
    :cond_23
    return-void
.end method

.method public defineTerminalWidgets()V
    .registers 4

    #@0
    .line 100
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@2
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->defineTerminalWidgets(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@d
    return-void
.end method

.method public directMeasure(Z)Z
    .registers 3

    #@0
    .line 73
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->directMeasure(Z)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public directMeasureSetup(Z)Z
    .registers 3

    #@0
    .line 92
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->directMeasureSetup(Z)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public directMeasureWithOrientation(ZI)Z
    .registers 4

    #@0
    .line 96
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->directMeasureWithOrientation(ZI)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public fillMetrics(Landroidx/constraintlayout/core/Metrics;)V
    .registers 3

    #@0
    .line 143
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    #@2
    .line 144
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@4
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/LinearSystem;->fillMetrics(Landroidx/constraintlayout/core/Metrics;)V

    #@7
    return-void
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/Guideline;",
            ">;"
        }
    .end annotation

    #@0
    .line 1023
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1024
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    const/4 v2, 0x0

    #@c
    :goto_c
    if-ge v2, v1, :cond_28

    #@e
    .line 1025
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16
    .line 1026
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/Guideline;

    #@18
    if-eqz v4, :cond_25

    #@1a
    .line 1027
    check-cast v3, Landroidx/constraintlayout/core/widgets/Guideline;

    #@1c
    .line 1028
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    #@1f
    move-result v4

    #@20
    if-nez v4, :cond_25

    #@22
    .line 1029
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@25
    :cond_25
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_c

    #@28
    :cond_28
    return-object v0
.end method

.method public getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;
    .registers 2

    #@0
    .line 136
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@2
    return-object v0
.end method

.method public getOptimizationLevel()I
    .registers 2

    #@0
    .line 225
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    #@2
    return v0
.end method

.method public getSceneString(Ljava/lang/StringBuilder;)V
    .registers 5

    #@0
    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->stringId:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string v1, ":{\n"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a
    const-string v1, "  actualWidth:"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1f
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidth:I

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    const-string v0, "\n"

    #@2e
    .line 1109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    const-string v2, "  actualHeight:"

    #@35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@38
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeight:I

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 1111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 1113
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    #@4b
    move-result-object v0

    #@4c
    .line 1114
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@4f
    move-result-object v0

    #@50
    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_65

    #@56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@59
    move-result-object v1

    #@5a
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@5c
    .line 1115
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;)V

    #@5f
    const-string v1, ",\n"

    #@61
    .line 1116
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    goto :goto_50

    #@65
    :cond_65
    const-string v0, "}"

    #@67
    .line 1118
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    return-void
.end method

.method public getSystem()Landroidx/constraintlayout/core/LinearSystem;
    .registers 2

    #@0
    .line 1037
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "ConstraintLayout"

    #@2
    return-object v0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/Guideline;",
            ">;"
        }
    .end annotation

    #@0
    .line 1004
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1005
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v1

    #@b
    const/4 v2, 0x0

    #@c
    :goto_c
    if-ge v2, v1, :cond_29

    #@e
    .line 1006
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16
    .line 1007
    instance-of v4, v3, Landroidx/constraintlayout/core/widgets/Guideline;

    #@18
    if-eqz v4, :cond_26

    #@1a
    .line 1008
    check-cast v3, Landroidx/constraintlayout/core/widgets/Guideline;

    #@1c
    .line 1009
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    #@1f
    move-result v4

    #@20
    const/4 v5, 0x1

    #@21
    if-ne v4, v5, :cond_26

    #@23
    .line 1010
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@26
    :cond_26
    add-int/lit8 v2, v2, 0x1

    #@28
    goto :goto_c

    #@29
    :cond_29
    return-object v0
.end method

.method public handlesInternalConstraints()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public invalidateGraph()V
    .registers 2

    #@0
    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->invalidateGraph()V

    #@5
    return-void
.end method

.method public invalidateMeasures()V
    .registers 2

    #@0
    .line 68
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->invalidateMeasures()V

    #@5
    return-void
.end method

.method public isHeightMeasuredTooSmall()Z
    .registers 2

    #@0
    .line 270
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    #@2
    return v0
.end method

.method public isRtl()Z
    .registers 2

    #@0
    .line 511
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    #@2
    return v0
.end method

.method public isWidthMeasuredTooSmall()Z
    .registers 2

    #@0
    .line 263
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    #@2
    return v0
.end method

.method public layout()V
    .registers 19

    #@0
    move-object/from16 v1, p0

    #@2
    const/4 v2, 0x0

    #@3
    .line 660
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mX:I

    #@5
    .line 661
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mY:I

    #@7
    .line 663
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    #@9
    .line 664
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    #@b
    .line 665
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v3

    #@11
    .line 667
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@14
    move-result v0

    #@15
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    #@18
    move-result v0

    #@19
    .line 668
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@1c
    move-result v4

    #@1d
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    #@20
    move-result v4

    #@21
    .line 669
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@23
    const/4 v6, 0x1

    #@24
    aget-object v5, v5, v6

    #@26
    .line 670
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@28
    aget-object v7, v7, v2

    #@2a
    .line 677
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    #@2c
    if-eqz v8, :cond_35

    #@2e
    .line 678
    iget-wide v9, v8, Landroidx/constraintlayout/core/Metrics;->layouts:J

    #@30
    const-wide/16 v11, 0x1

    #@32
    add-long/2addr v9, v11

    #@33
    iput-wide v9, v8, Landroidx/constraintlayout/core/Metrics;->layouts:J

    #@35
    .line 689
    :cond_35
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->pass:I

    #@37
    if-nez v8, :cond_97

    #@39
    iget v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    #@3b
    invoke-static {v8, v6}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    #@3e
    move-result v8

    #@3f
    if-eqz v8, :cond_97

    #@41
    .line 693
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@44
    move-result-object v8

    #@45
    invoke-static {v1, v8}, Landroidx/constraintlayout/core/widgets/analyzer/Direct;->solvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@48
    move v8, v2

    #@49
    :goto_49
    if-ge v8, v3, :cond_97

    #@4b
    .line 698
    iget-object v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@50
    move-result-object v9

    #@51
    check-cast v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@53
    .line 719
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isMeasureRequested()Z

    #@56
    move-result v10

    #@57
    if-eqz v10, :cond_94

    #@59
    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/Guideline;

    #@5b
    if-nez v10, :cond_94

    #@5d
    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/Barrier;

    #@5f
    if-nez v10, :cond_94

    #@61
    instance-of v10, v9, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    #@63
    if-nez v10, :cond_94

    #@65
    .line 723
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    #@68
    move-result v10

    #@69
    if-nez v10, :cond_94

    #@6b
    .line 724
    invoke-virtual {v9, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@6e
    move-result-object v10

    #@6f
    .line 725
    invoke-virtual {v9, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@72
    move-result-object v11

    #@73
    .line 727
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@75
    if-ne v10, v12, :cond_85

    #@77
    iget v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@79
    if-eq v10, v6, :cond_85

    #@7b
    sget-object v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@7d
    if-ne v11, v10, :cond_85

    #@7f
    iget v10, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@81
    if-eq v10, v6, :cond_85

    #@83
    move v10, v6

    #@84
    goto :goto_86

    #@85
    :cond_85
    move v10, v2

    #@86
    :goto_86
    if-nez v10, :cond_94

    #@88
    .line 732
    new-instance v10, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    #@8a
    invoke-direct {v10}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    #@8d
    .line 733
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@8f
    sget v12, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    #@91
    invoke-static {v2, v9, v11, v10, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->measure(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;I)Z

    #@94
    :cond_94
    add-int/lit8 v8, v8, 0x1

    #@96
    goto :goto_49

    #@97
    :cond_97
    const/4 v8, 0x2

    #@98
    if-le v3, v8, :cond_e6

    #@9a
    .line 747
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@9c
    if-eq v7, v9, :cond_a2

    #@9e
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@a0
    if-ne v5, v9, :cond_e6

    #@a2
    :cond_a2
    iget v9, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    #@a4
    const/16 v10, 0x400

    #@a6
    .line 749
    invoke-static {v9, v10}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    #@a9
    move-result v9

    #@aa
    if-eqz v9, :cond_e6

    #@ac
    .line 750
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@af
    move-result-object v9

    #@b0
    invoke-static {v1, v9}, Landroidx/constraintlayout/core/widgets/analyzer/Grouping;->simpleSolvingPass(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)Z

    #@b3
    move-result v9

    #@b4
    if-eqz v9, :cond_e6

    #@b6
    .line 751
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@b8
    if-ne v7, v9, :cond_cc

    #@ba
    .line 752
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@bd
    move-result v9

    #@be
    if-ge v0, v9, :cond_c8

    #@c0
    if-lez v0, :cond_c8

    #@c2
    .line 756
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    #@c5
    .line 757
    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    #@c7
    goto :goto_cc

    #@c8
    .line 759
    :cond_c8
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@cb
    move-result v0

    #@cc
    .line 762
    :cond_cc
    :goto_cc
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@ce
    if-ne v5, v9, :cond_e2

    #@d0
    .line 763
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@d3
    move-result v9

    #@d4
    if-ge v4, v9, :cond_de

    #@d6
    if-lez v4, :cond_de

    #@d8
    .line 767
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    #@db
    .line 768
    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    #@dd
    goto :goto_e2

    #@de
    .line 770
    :cond_de
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@e1
    move-result v4

    #@e2
    :cond_e2
    :goto_e2
    move v9, v4

    #@e3
    move v4, v0

    #@e4
    move v0, v6

    #@e5
    goto :goto_e9

    #@e6
    :cond_e6
    move v9, v4

    #@e7
    move v4, v0

    #@e8
    move v0, v2

    #@e9
    :goto_e9
    const/16 v10, 0x40

    #@eb
    .line 781
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    #@ee
    move-result v11

    #@ef
    if-nez v11, :cond_fc

    #@f1
    const/16 v11, 0x80

    #@f3
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    #@f6
    move-result v11

    #@f7
    if-eqz v11, :cond_fa

    #@f9
    goto :goto_fc

    #@fa
    :cond_fa
    move v11, v2

    #@fb
    goto :goto_fd

    #@fc
    :cond_fc
    :goto_fc
    move v11, v6

    #@fd
    .line 783
    :goto_fd
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@ff
    iput-boolean v2, v12, Landroidx/constraintlayout/core/LinearSystem;->graphOptimizer:Z

    #@101
    .line 784
    iget-object v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@103
    iput-boolean v2, v12, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    #@105
    .line 786
    iget v12, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    #@107
    if-eqz v12, :cond_10f

    #@109
    if-eqz v11, :cond_10f

    #@10b
    .line 788
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@10d
    iput-boolean v6, v11, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    #@10f
    .line 792
    :cond_10f
    iget-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@111
    .line 793
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@114
    move-result-object v12

    #@115
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@117
    if-eq v12, v13, :cond_124

    #@119
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@11c
    move-result-object v12

    #@11d
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@11f
    if-ne v12, v13, :cond_122

    #@121
    goto :goto_124

    #@122
    :cond_122
    move v12, v2

    #@123
    goto :goto_125

    #@124
    :cond_124
    :goto_124
    move v12, v6

    #@125
    .line 796
    :goto_125
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetChains()V

    #@128
    move v13, v2

    #@129
    :goto_129
    if-ge v13, v3, :cond_13f

    #@12b
    .line 802
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@12d
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@130
    move-result-object v14

    #@131
    check-cast v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@133
    .line 803
    instance-of v15, v14, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    #@135
    if-eqz v15, :cond_13c

    #@137
    .line 804
    check-cast v14, Landroidx/constraintlayout/core/widgets/WidgetContainer;

    #@139
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->layout()V

    #@13c
    :cond_13c
    add-int/lit8 v13, v13, 0x1

    #@13e
    goto :goto_129

    #@13f
    .line 807
    :cond_13f
    invoke-virtual {v1, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    #@142
    move-result v10

    #@143
    move v13, v0

    #@144
    move v0, v2

    #@145
    move v14, v6

    #@146
    :goto_146
    if-eqz v14, :cond_338

    #@148
    add-int/lit8 v15, v0, 0x1

    #@14a
    .line 814
    :try_start_14a
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@14c
    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    #@14f
    .line 815
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetChains()V

    #@152
    .line 829
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@154
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    #@157
    move v0, v2

    #@158
    :goto_158
    if-ge v0, v3, :cond_16c

    #@15a
    .line 831
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@15c
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15f
    move-result-object v6

    #@160
    check-cast v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@162
    .line 832
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@164
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V

    #@167
    add-int/lit8 v0, v0, 0x1

    #@169
    const/4 v2, 0x0

    #@16a
    const/4 v6, 0x1

    #@16b
    goto :goto_158

    #@16c
    .line 835
    :cond_16c
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@16e
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroidx/constraintlayout/core/LinearSystem;)Z

    #@171
    move-result v14

    #@172
    .line 836
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    #@174
    const/4 v2, 0x0

    #@175
    if-eqz v0, :cond_192

    #@177
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@17a
    move-result-object v0

    #@17b
    if-eqz v0, :cond_192

    #@17d
    .line 837
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    #@17f
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@182
    move-result-object v0

    #@183
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@185
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@187
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@189
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@18c
    move-result-object v6

    #@18d
    invoke-direct {v1, v0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addMinWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    #@190
    .line 838
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMin:Ljava/lang/ref/WeakReference;

    #@192
    .line 840
    :cond_192
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    #@194
    if-eqz v0, :cond_1b1

    #@196
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@199
    move-result-object v0

    #@19a
    if-eqz v0, :cond_1b1

    #@19c
    .line 841
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    #@19e
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1a1
    move-result-object v0

    #@1a2
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a4
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@1a6
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a8
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@1ab
    move-result-object v6

    #@1ac
    invoke-direct {v1, v0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addMaxWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    #@1af
    .line 842
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->verticalWrapMax:Ljava/lang/ref/WeakReference;

    #@1b1
    .line 844
    :cond_1b1
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    #@1b3
    if-eqz v0, :cond_1d0

    #@1b5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1b8
    move-result-object v0

    #@1b9
    if-eqz v0, :cond_1d0

    #@1bb
    .line 845
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    #@1bd
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1c0
    move-result-object v0

    #@1c1
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1c3
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@1c5
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1c7
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@1ca
    move-result-object v6

    #@1cb
    invoke-direct {v1, v0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addMinWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    #@1ce
    .line 846
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMin:Ljava/lang/ref/WeakReference;

    #@1d0
    .line 848
    :cond_1d0
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    #@1d2
    if-eqz v0, :cond_1ef

    #@1d4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1d7
    move-result-object v0

    #@1d8
    if-eqz v0, :cond_1ef

    #@1da
    .line 849
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    #@1dc
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@1df
    move-result-object v0

    #@1e0
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e2
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@1e4
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e6
    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@1e9
    move-result-object v6

    #@1ea
    invoke-direct {v1, v0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addMaxWrap(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/SolverVariable;)V

    #@1ed
    .line 850
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->horizontalWrapMax:Ljava/lang/ref/WeakReference;

    #@1ef
    :cond_1ef
    if-eqz v14, :cond_20f

    #@1f1
    .line 853
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@1f3
    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->minimize()V
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_1f6} :catch_1f7

    #@1f6
    goto :goto_20f

    #@1f7
    :catch_1f7
    move-exception v0

    #@1f8
    .line 856
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@1fb
    .line 857
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1fd
    new-instance v6, Ljava/lang/StringBuilder;

    #@1ff
    const-string v8, "EXCEPTION : "

    #@201
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@204
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@207
    move-result-object v0

    #@208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20b
    move-result-object v0

    #@20c
    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20f
    :cond_20f
    :goto_20f
    if-eqz v14, :cond_21a

    #@211
    .line 860
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@213
    sget-object v2, Landroidx/constraintlayout/core/widgets/Optimizer;->flags:[Z

    #@215
    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateChildrenFromSolver(Landroidx/constraintlayout/core/LinearSystem;[Z)Z

    #@218
    move-result v0

    #@219
    goto :goto_233

    #@21a
    .line 862
    :cond_21a
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@21c
    invoke-virtual {v1, v0, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@21f
    const/4 v0, 0x0

    #@220
    :goto_220
    if-ge v0, v3, :cond_232

    #@222
    .line 864
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@224
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@227
    move-result-object v2

    #@228
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@22a
    .line 865
    iget-object v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@22c
    invoke-virtual {v2, v6, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@22f
    add-int/lit8 v0, v0, 0x1

    #@231
    goto :goto_220

    #@232
    :cond_232
    const/4 v0, 0x0

    #@233
    :goto_233
    const/16 v2, 0x8

    #@235
    if-eqz v12, :cond_2aa

    #@237
    if-ge v15, v2, :cond_2aa

    #@239
    .line 870
    sget-object v6, Landroidx/constraintlayout/core/widgets/Optimizer;->flags:[Z

    #@23b
    const/4 v8, 0x2

    #@23c
    aget-boolean v6, v6, v8

    #@23e
    if-eqz v6, :cond_2aa

    #@240
    const/4 v6, 0x0

    #@241
    const/4 v8, 0x0

    #@242
    const/4 v14, 0x0

    #@243
    :goto_243
    if-ge v6, v3, :cond_26d

    #@245
    .line 876
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@247
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24a
    move-result-object v2

    #@24b
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@24d
    move/from16 v16, v0

    #@24f
    .line 877
    iget v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@251
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@254
    move-result v17

    #@255
    add-int v0, v0, v17

    #@257
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    #@25a
    move-result v14

    #@25b
    .line 878
    iget v0, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@25d
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@260
    move-result v2

    #@261
    add-int/2addr v0, v2

    #@262
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    #@265
    move-result v8

    #@266
    add-int/lit8 v6, v6, 0x1

    #@268
    move/from16 v0, v16

    #@26a
    const/16 v2, 0x8

    #@26c
    goto :goto_243

    #@26d
    :cond_26d
    move/from16 v16, v0

    #@26f
    .line 880
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMinWidth:I

    #@271
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    #@274
    move-result v0

    #@275
    .line 881
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMinHeight:I

    #@277
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    #@27a
    move-result v2

    #@27b
    .line 882
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@27d
    if-ne v7, v6, :cond_292

    #@27f
    .line 883
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@282
    move-result v6

    #@283
    if-ge v6, v0, :cond_292

    #@285
    .line 888
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    #@288
    .line 889
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@28a
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@28c
    const/4 v8, 0x0

    #@28d
    aput-object v6, v0, v8

    #@28f
    const/4 v13, 0x1

    #@290
    const/16 v16, 0x1

    #@292
    .line 894
    :cond_292
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@294
    if-ne v5, v0, :cond_2ac

    #@296
    .line 895
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@299
    move-result v0

    #@29a
    if-ge v0, v2, :cond_2ac

    #@29c
    .line 900
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    #@29f
    .line 901
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2a1
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2a3
    const/4 v6, 0x1

    #@2a4
    aput-object v2, v0, v6

    #@2a6
    const/4 v13, 0x1

    #@2a7
    const/16 v16, 0x1

    #@2a9
    goto :goto_2ac

    #@2aa
    :cond_2aa
    move/from16 v16, v0

    #@2ac
    .line 908
    :cond_2ac
    :goto_2ac
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMinWidth:I

    #@2ae
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@2b1
    move-result v2

    #@2b2
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@2b5
    move-result v0

    #@2b6
    .line 909
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@2b9
    move-result v2

    #@2ba
    if-le v0, v2, :cond_2c9

    #@2bc
    .line 914
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    #@2bf
    .line 915
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2c1
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2c3
    const/4 v6, 0x0

    #@2c4
    aput-object v2, v0, v6

    #@2c6
    const/4 v13, 0x1

    #@2c7
    const/16 v16, 0x1

    #@2c9
    .line 919
    :cond_2c9
    iget v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMinHeight:I

    #@2cb
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@2ce
    move-result v2

    #@2cf
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@2d2
    move-result v0

    #@2d3
    .line 920
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@2d6
    move-result v2

    #@2d7
    if-le v0, v2, :cond_2e7

    #@2d9
    .line 925
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    #@2dc
    .line 926
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2de
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2e0
    const/4 v6, 0x1

    #@2e1
    aput-object v2, v0, v6

    #@2e3
    move v13, v6

    #@2e4
    move/from16 v16, v13

    #@2e6
    goto :goto_2e8

    #@2e7
    :cond_2e7
    const/4 v6, 0x1

    #@2e8
    :goto_2e8
    if-nez v13, :cond_329

    #@2ea
    .line 932
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2ec
    const/4 v2, 0x0

    #@2ed
    aget-object v0, v0, v2

    #@2ef
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2f1
    if-ne v0, v8, :cond_309

    #@2f3
    if-lez v4, :cond_309

    #@2f5
    .line 934
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@2f8
    move-result v0

    #@2f9
    if-le v0, v4, :cond_309

    #@2fb
    .line 940
    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    #@2fd
    .line 942
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2ff
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@301
    aput-object v8, v0, v2

    #@303
    .line 943
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    #@306
    move v13, v6

    #@307
    move/from16 v16, v13

    #@309
    .line 947
    :cond_309
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@30b
    aget-object v0, v0, v6

    #@30d
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@30f
    if-ne v0, v2, :cond_329

    #@311
    if-lez v9, :cond_329

    #@313
    .line 949
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@316
    move-result v0

    #@317
    if-le v0, v9, :cond_329

    #@319
    .line 955
    iput-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    #@31b
    .line 957
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@31d
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@31f
    aput-object v2, v0, v6

    #@321
    .line 958
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    #@324
    const/16 v0, 0x8

    #@326
    const/4 v6, 0x1

    #@327
    const/4 v13, 0x1

    #@328
    goto :goto_32d

    #@329
    :cond_329
    move/from16 v6, v16

    #@32b
    const/16 v0, 0x8

    #@32d
    :goto_32d
    if-le v15, v0, :cond_331

    #@32f
    const/4 v14, 0x0

    #@330
    goto :goto_332

    #@331
    :cond_331
    move v14, v6

    #@332
    :goto_332
    move v0, v15

    #@333
    const/4 v2, 0x0

    #@334
    const/4 v6, 0x1

    #@335
    const/4 v8, 0x2

    #@336
    goto/16 :goto_146

    #@338
    .line 975
    :cond_338
    move-object v0, v11

    #@339
    check-cast v0, Ljava/util/ArrayList;

    #@33b
    iput-object v11, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@33d
    if-eqz v13, :cond_349

    #@33f
    .line 978
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@341
    const/4 v2, 0x0

    #@342
    aput-object v7, v0, v2

    #@344
    .line 979
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@346
    const/4 v2, 0x1

    #@347
    aput-object v5, v0, v2

    #@349
    .line 982
    :cond_349
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@34b
    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->getCache()Landroidx/constraintlayout/core/Cache;

    #@34e
    move-result-object v0

    #@34f
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroidx/constraintlayout/core/Cache;)V

    #@352
    return-void
.end method

.method public measure(IIIIIIIII)J
    .registers 22

    #@0
    move-object v11, p0

    #@1
    move/from16 v3, p8

    #@3
    .line 118
    iput v3, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    #@5
    move/from16 v4, p9

    #@7
    .line 119
    iput v4, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    #@9
    .line 120
    iget-object v0, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    #@b
    move-object v1, p0

    #@c
    move v2, p1

    #@d
    move v5, p2

    #@e
    move v6, p3

    #@f
    move/from16 v7, p4

    #@11
    move/from16 v8, p5

    #@13
    move/from16 v9, p6

    #@15
    move/from16 v10, p7

    #@17
    invoke-virtual/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->solverMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;IIIIIIIII)J

    #@1a
    move-result-wide v0

    #@1b
    return-wide v0
.end method

.method public optimizeFor(I)Z
    .registers 3

    #@0
    .line 235
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    #@2
    and-int/2addr v0, p1

    #@3
    if-ne v0, p1, :cond_7

    #@5
    const/4 p1, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p1, 0x0

    #@8
    :goto_8
    return p1
.end method

.method public reset()V
    .registers 2

    #@0
    .line 250
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/core/LinearSystem;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    #@5
    const/4 v0, 0x0

    #@6
    .line 251
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    #@8
    .line 252
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    #@a
    .line 253
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    #@c
    .line 254
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    #@e
    .line 255
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    #@10
    .line 256
    invoke-super {p0}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->reset()V

    #@13
    return-void
.end method

.method public setMeasurer(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V
    .registers 3

    #@0
    .line 131
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@2
    .line 132
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;

    #@4
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph;->setMeasurer(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@7
    return-void
.end method

.method public setOptimizationLevel(I)V
    .registers 2

    #@0
    .line 215
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    #@2
    const/16 p1, 0x200

    #@4
    .line 216
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    #@7
    move-result p1

    #@8
    sput-boolean p1, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    #@a
    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    #@0
    .line 490
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    #@2
    .line 491
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    #@4
    .line 492
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    #@6
    .line 493
    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    #@8
    return-void
.end method

.method public setPass(I)V
    .registers 2

    #@0
    .line 1102
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->pass:I

    #@2
    return-void
.end method

.method public setRtl(Z)V
    .registers 2

    #@0
    .line 502
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    #@2
    return-void
.end method

.method public updateChildrenFromSolver(Landroidx/constraintlayout/core/LinearSystem;[Z)Z
    .registers 7

    #@0
    const/4 v0, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    .line 456
    aput-boolean v1, p2, v0

    #@4
    const/16 p2, 0x40

    #@6
    .line 457
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    #@9
    move-result p2

    #@a
    .line 458
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@d
    .line 459
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v0

    #@13
    move v2, v1

    #@14
    :goto_14
    if-ge v1, v0, :cond_2b

    #@16
    .line 462
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1e
    .line 463
    invoke-virtual {v3, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@21
    .line 464
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDimensionOverride()Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_28

    #@27
    const/4 v2, 0x1

    #@28
    :cond_28
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_14

    #@2b
    :cond_2b
    return v2
.end method

.method public updateFromRuns(ZZ)V
    .registers 6

    #@0
    .line 473
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/WidgetContainer;->updateFromRuns(ZZ)V

    #@3
    .line 474
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    :goto_a
    if-ge v1, v0, :cond_1a

    #@c
    .line 476
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@14
    .line 477
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->updateFromRuns(ZZ)V

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-void
.end method

.method public updateHierarchy()V
    .registers 2

    #@0
    .line 125
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;

    #@2
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    #@5
    return-void
.end method
