.class public Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    }
.end annotation


# static fields
.field public static final ANCHOR_BASELINE:I = 0x4

.field public static final ANCHOR_BOTTOM:I = 0x3

.field public static final ANCHOR_LEFT:I = 0x0

.field public static final ANCHOR_RIGHT:I = 0x1

.field public static final ANCHOR_TOP:I = 0x2

.field private static final AUTOTAG_CENTER:Z = false

.field public static final BOTH:I = 0x2

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static DEFAULT_BIAS:F = 0.5f

.field static final DIMENSION_HORIZONTAL:I = 0x0

.field static final DIMENSION_VERTICAL:I = 0x1

.field protected static final DIRECT:I = 0x2

.field public static final GONE:I = 0x8

.field public static final HORIZONTAL:I = 0x0

.field public static final INVISIBLE:I = 0x4

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_RATIO:I = 0x3

.field public static final MATCH_CONSTRAINT_RATIO_RESOLVED:I = 0x4

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field protected static final SOLVER:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field private static final USE_WRAP_DIMENSION_FOR_SPREAD:Z = false

.field public static final VERTICAL:I = 0x1

.field public static final VISIBLE:I = 0x0

.field private static final WRAP:I = -0x2

.field public static final WRAP_BEHAVIOR_HORIZONTAL_ONLY:I = 0x1

.field public static final WRAP_BEHAVIOR_INCLUDED:I = 0x0

.field public static final WRAP_BEHAVIOR_SKIPPED:I = 0x3

.field public static final WRAP_BEHAVIOR_VERTICAL_ONLY:I = 0x2


# instance fields
.field private OPTIMIZE_WRAP:Z

.field private OPTIMIZE_WRAP_ON_RESOLVED:Z

.field public frame:Landroidx/constraintlayout/core/state/WidgetFrame;

.field private hasBaseline:Z

.field public horizontalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

.field public horizontalGroup:I

.field public horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

.field private horizontalSolvingPass:Z

.field private inPlaceholder:Z

.field public isTerminalWidget:[Z

.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimated:Z

.field public mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field public mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mBottomHasCentered:Z

.field public mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mCircleConstraintAngle:F

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field public mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field mDistToBottom:I

.field mDistToLeft:I

.field mDistToRight:I

.field mDistToTop:I

.field mGroupsToSolver:Z

.field mHeight:I

.field private mHeightOverride:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWrapVisited:Z

.field private mInVirtualLayout:Z

.field public mIsHeightWrapContent:Z

.field private mIsInBarrier:[Z

.field public mIsWidthWrapContent:Z

.field private mLastHorizontalMeasureSpec:I

.field private mLastVerticalMeasureSpec:I

.field public mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mLeftHasCentered:Z

.field public mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field public mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

.field protected mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mMatchConstraintDefaultHeight:I

.field public mMatchConstraintDefaultWidth:I

.field public mMatchConstraintMaxHeight:I

.field public mMatchConstraintMaxWidth:I

.field public mMatchConstraintMinHeight:I

.field public mMatchConstraintMinWidth:I

.field public mMatchConstraintPercentHeight:F

.field public mMatchConstraintPercentWidth:F

.field private mMaxDimension:[I

.field private mMeasureRequested:Z

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field protected mOffsetX:I

.field protected mOffsetY:I

.field public mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field mRelX:I

.field mRelY:I

.field mResolvedDimensionRatio:F

.field mResolvedDimensionRatioSide:I

.field mResolvedHasRatio:Z

.field public mResolvedMatchConstraintDefault:[I

.field public mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mRightHasCentered:Z

.field public mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field mTopHasCentered:Z

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field public mWeight:[F

.field mWidth:I

.field private mWidthOverride:I

.field private mWrapBehaviorInParent:I

.field protected mX:I

.field protected mY:I

.field public measured:Z

.field private resolvedHorizontal:Z

.field private resolvedVertical:Z

.field public run:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field public stringId:Ljava/lang/String;

.field public verticalChainRun:Landroidx/constraintlayout/core/widgets/analyzer/ChainRun;

.field public verticalGroup:I

.field public verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

.field private verticalSolvingPass:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>()V
    .registers 11

    #@0
    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 62
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    #@6
    const/4 v1, 0x2

    #@7
    new-array v2, v1, [Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@9
    .line 63
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@b
    const/4 v2, 0x0

    #@c
    .line 67
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@e
    .line 68
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@10
    new-array v3, v1, [Z

    #@12
    .line 70
    fill-array-data v3, :array_134

    #@15
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    #@17
    .line 71
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    #@19
    const/4 v3, 0x1

    #@1a
    .line 72
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    #@1c
    .line 73
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    #@1e
    .line 74
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    #@20
    const/4 v4, -0x1

    #@21
    .line 76
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    #@23
    .line 77
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    #@25
    .line 79
    new-instance v5, Landroidx/constraintlayout/core/state/WidgetFrame;

    #@27
    invoke-direct {v5, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@2a
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2c
    .line 92
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@2e
    .line 93
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@30
    .line 95
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    #@32
    .line 96
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    #@34
    .line 282
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    #@36
    .line 283
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    #@38
    .line 287
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    #@3a
    .line 289
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@3c
    .line 290
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@3e
    new-array v5, v1, [I

    #@40
    .line 291
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    #@42
    .line 293
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@44
    .line 294
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@46
    const/high16 v5, 0x3f800000    # 1.0f

    #@48
    .line 295
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    #@4a
    .line 296
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@4c
    .line 297
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@4e
    .line 298
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    #@50
    .line 302
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@52
    .line 303
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@54
    new-array v5, v1, [I

    #@56
    .line 305
    fill-array-data v5, :array_13a

    #@59
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@5b
    const/4 v5, 0x0

    #@5c
    .line 306
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    #@5e
    .line 307
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    #@60
    .line 310
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    #@62
    .line 398
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    #@64
    .line 399
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    #@66
    .line 417
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@68
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@6a
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@6d
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6f
    .line 418
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@71
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@73
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@76
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@78
    .line 419
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7a
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@7c
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@7f
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@81
    .line 420
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@83
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@85
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@88
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8a
    .line 421
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8c
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@8e
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@91
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@93
    .line 422
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@95
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@97
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@9a
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9c
    .line 423
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9e
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@a0
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@a3
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a5
    .line 424
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a7
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@a9
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@ac
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@ae
    const/4 v7, 0x6

    #@af
    new-array v7, v7, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b1
    .line 432
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b3
    aput-object v8, v7, v0

    #@b5
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b7
    aput-object v8, v7, v3

    #@b9
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@bb
    aput-object v8, v7, v1

    #@bd
    const/4 v8, 0x3

    #@be
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c0
    aput-object v9, v7, v8

    #@c2
    const/4 v8, 0x4

    #@c3
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c5
    aput-object v9, v7, v8

    #@c7
    const/4 v8, 0x5

    #@c8
    aput-object v6, v7, v8

    #@ca
    iput-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@cc
    .line 433
    new-instance v6, Ljava/util/ArrayList;

    #@ce
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@d1
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@d3
    new-array v6, v1, [Z

    #@d5
    .line 435
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    #@d7
    new-array v6, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@d9
    .line 440
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@db
    aput-object v7, v6, v0

    #@dd
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@df
    aput-object v7, v6, v3

    #@e1
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@e3
    .line 443
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@e5
    .line 446
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@e7
    .line 447
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@e9
    .line 448
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@eb
    .line 449
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    #@ed
    .line 452
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@ef
    .line 453
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@f1
    .line 454
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    #@f3
    .line 455
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    #@f5
    .line 458
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    #@f7
    .line 459
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    #@f9
    .line 462
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    #@fb
    .line 471
    sget v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    #@fd
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@ff
    .line 472
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@101
    .line 480
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    #@103
    .line 483
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@105
    .line 485
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    #@107
    .line 486
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    #@109
    .line 487
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    #@10b
    .line 499
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mGroupsToSolver:Z

    #@10d
    .line 502
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    #@10f
    .line 503
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    #@111
    new-array v5, v1, [F

    #@113
    .line 507
    fill-array-data v5, :array_142

    #@116
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@118
    new-array v5, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@11a
    aput-object v2, v5, v0

    #@11c
    aput-object v2, v5, v3

    #@11e
    .line 509
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@120
    new-array v1, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@122
    aput-object v2, v1, v0

    #@124
    aput-object v2, v1, v3

    #@126
    .line 510
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@128
    .line 512
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@12a
    .line 513
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@12c
    .line 703
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    #@12e
    .line 704
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    #@130
    .line 733
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addAnchors()V

    #@133
    return-void

    #@134
    :array_134
    .array-data 1
        0x1t
        0x1t
    .end array-data

    #@139
    nop

    #@13a
    :array_13a
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    #@142
    :array_142
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 769
    invoke-direct {p0, v0, v0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>(IIII)V

    #@4
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 15

    #@0
    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 62
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    #@6
    const/4 v1, 0x2

    #@7
    new-array v2, v1, [Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@9
    .line 63
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@b
    const/4 v2, 0x0

    #@c
    .line 67
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@e
    .line 68
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@10
    new-array v3, v1, [Z

    #@12
    .line 70
    fill-array-data v3, :array_134

    #@15
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    #@17
    .line 71
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    #@19
    const/4 v3, 0x1

    #@1a
    .line 72
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    #@1c
    .line 73
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    #@1e
    .line 74
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    #@20
    const/4 v4, -0x1

    #@21
    .line 76
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    #@23
    .line 77
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    #@25
    .line 79
    new-instance v5, Landroidx/constraintlayout/core/state/WidgetFrame;

    #@27
    invoke-direct {v5, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@2a
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2c
    .line 92
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@2e
    .line 93
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@30
    .line 95
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    #@32
    .line 96
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    #@34
    .line 282
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    #@36
    .line 283
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    #@38
    .line 287
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    #@3a
    .line 289
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@3c
    .line 290
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@3e
    new-array v5, v1, [I

    #@40
    .line 291
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    #@42
    .line 293
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@44
    .line 294
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@46
    const/high16 v5, 0x3f800000    # 1.0f

    #@48
    .line 295
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    #@4a
    .line 296
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@4c
    .line 297
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@4e
    .line 298
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    #@50
    .line 302
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@52
    .line 303
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@54
    new-array v5, v1, [I

    #@56
    .line 305
    fill-array-data v5, :array_13a

    #@59
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@5b
    const/4 v5, 0x0

    #@5c
    .line 306
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    #@5e
    .line 307
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    #@60
    .line 310
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    #@62
    .line 398
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    #@64
    .line 399
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    #@66
    .line 417
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@68
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@6a
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@6d
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6f
    .line 418
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@71
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@73
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@76
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@78
    .line 419
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7a
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@7c
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@7f
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@81
    .line 420
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@83
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@85
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@88
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8a
    .line 421
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8c
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@8e
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@91
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@93
    .line 422
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@95
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@97
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@9a
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9c
    .line 423
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9e
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@a0
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@a3
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a5
    .line 424
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a7
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@a9
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@ac
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@ae
    const/4 v7, 0x6

    #@af
    new-array v7, v7, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b1
    .line 432
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b3
    aput-object v8, v7, v0

    #@b5
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b7
    aput-object v8, v7, v3

    #@b9
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@bb
    aput-object v8, v7, v1

    #@bd
    const/4 v8, 0x3

    #@be
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c0
    aput-object v9, v7, v8

    #@c2
    const/4 v8, 0x4

    #@c3
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c5
    aput-object v9, v7, v8

    #@c7
    const/4 v8, 0x5

    #@c8
    aput-object v6, v7, v8

    #@ca
    iput-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@cc
    .line 433
    new-instance v6, Ljava/util/ArrayList;

    #@ce
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@d1
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@d3
    new-array v6, v1, [Z

    #@d5
    .line 435
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    #@d7
    new-array v6, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@d9
    .line 440
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@db
    aput-object v7, v6, v0

    #@dd
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@df
    aput-object v7, v6, v3

    #@e1
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@e3
    .line 443
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@e5
    .line 448
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@e7
    .line 449
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    #@e9
    .line 454
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    #@eb
    .line 455
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    #@ed
    .line 458
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    #@ef
    .line 459
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    #@f1
    .line 462
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    #@f3
    .line 471
    sget v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    #@f5
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@f7
    .line 472
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@f9
    .line 480
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    #@fb
    .line 483
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@fd
    .line 485
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    #@ff
    .line 486
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    #@101
    .line 487
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    #@103
    .line 499
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mGroupsToSolver:Z

    #@105
    .line 502
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    #@107
    .line 503
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    #@109
    new-array v5, v1, [F

    #@10b
    .line 507
    fill-array-data v5, :array_142

    #@10e
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@110
    new-array v5, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@112
    aput-object v2, v5, v0

    #@114
    aput-object v2, v5, v3

    #@116
    .line 509
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@118
    new-array v1, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@11a
    aput-object v2, v1, v0

    #@11c
    aput-object v2, v1, v3

    #@11e
    .line 510
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@120
    .line 512
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@122
    .line 513
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@124
    .line 703
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    #@126
    .line 704
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    #@128
    .line 750
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@12a
    .line 751
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@12c
    .line 752
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@12e
    .line 753
    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@130
    .line 754
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addAnchors()V

    #@133
    return-void

    #@134
    :array_134
    .array-data 1
        0x1t
        0x1t
    .end array-data

    #@139
    nop

    #@13a
    :array_13a
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    #@142
    :array_142
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 12

    #@0
    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 62
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->measured:Z

    #@6
    const/4 v1, 0x2

    #@7
    new-array v2, v1, [Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@9
    .line 63
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->run:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    #@b
    const/4 v2, 0x0

    #@c
    .line 67
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@e
    .line 68
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@10
    new-array v3, v1, [Z

    #@12
    .line 70
    fill-array-data v3, :array_138

    #@15
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    #@17
    .line 71
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    #@19
    const/4 v3, 0x1

    #@1a
    .line 72
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    #@1c
    .line 73
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    #@1e
    .line 74
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    #@20
    const/4 v4, -0x1

    #@21
    .line 76
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    #@23
    .line 77
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    #@25
    .line 79
    new-instance v5, Landroidx/constraintlayout/core/state/WidgetFrame;

    #@27
    invoke-direct {v5, p0}, Landroidx/constraintlayout/core/state/WidgetFrame;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@2a
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->frame:Landroidx/constraintlayout/core/state/WidgetFrame;

    #@2c
    .line 92
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@2e
    .line 93
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@30
    .line 95
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    #@32
    .line 96
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    #@34
    .line 282
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    #@36
    .line 283
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    #@38
    .line 287
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    #@3a
    .line 289
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@3c
    .line 290
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@3e
    new-array v5, v1, [I

    #@40
    .line 291
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    #@42
    .line 293
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@44
    .line 294
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@46
    const/high16 v5, 0x3f800000    # 1.0f

    #@48
    .line 295
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    #@4a
    .line 296
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@4c
    .line 297
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@4e
    .line 298
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    #@50
    .line 302
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@52
    .line 303
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@54
    new-array v5, v1, [I

    #@56
    .line 305
    fill-array-data v5, :array_13e

    #@59
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@5b
    const/4 v5, 0x0

    #@5c
    .line 306
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    #@5e
    .line 307
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    #@60
    .line 310
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    #@62
    .line 398
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    #@64
    .line 399
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    #@66
    .line 417
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@68
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@6a
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@6d
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6f
    .line 418
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@71
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@73
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@76
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@78
    .line 419
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7a
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@7c
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@7f
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@81
    .line 420
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@83
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@85
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@88
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8a
    .line 421
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8c
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@8e
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@91
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@93
    .line 422
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@95
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@97
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@9a
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9c
    .line 423
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9e
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@a0
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@a3
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a5
    .line 424
    new-instance v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a7
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@a9
    invoke-direct {v6, p0, v7}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    #@ac
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@ae
    const/4 v7, 0x6

    #@af
    new-array v7, v7, [Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b1
    .line 432
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b3
    aput-object v8, v7, v0

    #@b5
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b7
    aput-object v8, v7, v3

    #@b9
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@bb
    aput-object v8, v7, v1

    #@bd
    const/4 v8, 0x3

    #@be
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c0
    aput-object v9, v7, v8

    #@c2
    const/4 v8, 0x4

    #@c3
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c5
    aput-object v9, v7, v8

    #@c7
    const/4 v8, 0x5

    #@c8
    aput-object v6, v7, v8

    #@ca
    iput-object v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@cc
    .line 433
    new-instance v6, Ljava/util/ArrayList;

    #@ce
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@d1
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@d3
    new-array v6, v1, [Z

    #@d5
    .line 435
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    #@d7
    new-array v6, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@d9
    .line 440
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@db
    aput-object v7, v6, v0

    #@dd
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@df
    aput-object v7, v6, v3

    #@e1
    iput-object v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@e3
    .line 443
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@e5
    .line 446
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@e7
    .line 447
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@e9
    .line 448
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@eb
    .line 449
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    #@ed
    .line 452
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@ef
    .line 453
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@f1
    .line 454
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    #@f3
    .line 455
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    #@f5
    .line 458
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    #@f7
    .line 459
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    #@f9
    .line 462
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    #@fb
    .line 471
    sget v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    #@fd
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@ff
    .line 472
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@101
    .line 480
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    #@103
    .line 483
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@105
    .line 485
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    #@107
    .line 486
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    #@109
    .line 487
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    #@10b
    .line 499
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mGroupsToSolver:Z

    #@10d
    .line 502
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    #@10f
    .line 503
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    #@111
    new-array v5, v1, [F

    #@113
    .line 507
    fill-array-data v5, :array_146

    #@116
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@118
    new-array v5, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@11a
    aput-object v2, v5, v0

    #@11c
    aput-object v2, v5, v3

    #@11e
    .line 509
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@120
    new-array v1, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@122
    aput-object v2, v1, v0

    #@124
    aput-object v2, v1, v3

    #@126
    .line 510
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@128
    .line 512
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@12a
    .line 513
    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@12c
    .line 703
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    #@12e
    .line 704
    iput v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    #@130
    .line 737
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addAnchors()V

    #@133
    .line 738
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    #@136
    return-void

    #@137
    nop

    #@138
    :array_138
    .array-data 1
        0x1t
        0x1t
    .end array-data

    #@13d
    nop

    #@13e
    :array_13e
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    #@146
    :array_146
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    #@0
    .line 782
    invoke-direct {p0, p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>(II)V

    #@3
    .line 783
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    #@6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 6

    #@0
    .line 758
    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>(IIII)V

    #@3
    .line 759
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    #@6
    return-void
.end method

.method private addAnchors()V
    .registers 3

    #@0
    .line 804
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7
    .line 805
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@9
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    .line 806
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@10
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 807
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@17
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 808
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@1e
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 809
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@25
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 810
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@2c
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    .line 811
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@33
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    return-void
.end method

.method private applyConstraints(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V
    .registers 59

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v10, p1

    #@4
    move-object/from16 v11, p6

    #@6
    move-object/from16 v12, p7

    #@8
    move-object/from16 v13, p10

    #@a
    move-object/from16 v14, p11

    #@c
    move/from16 v15, p14

    #@e
    move/from16 v1, p15

    #@10
    move/from16 v2, p23

    #@12
    move/from16 v3, p24

    #@14
    move/from16 v4, p25

    #@16
    .line 2873
    invoke-virtual {v10, v13}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@19
    move-result-object v9

    #@1a
    .line 2874
    invoke-virtual {v10, v14}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@1d
    move-result-object v8

    #@1e
    .line 2875
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@25
    move-result-object v7

    #@26
    .line 2876
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v10, v5}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@2d
    move-result-object v6

    #@2e
    .line 2878
    invoke-static {}, Landroidx/constraintlayout/core/LinearSystem;->getMetrics()Landroidx/constraintlayout/core/Metrics;

    #@31
    move-result-object v5

    #@32
    if-eqz v5, :cond_40

    #@34
    .line 2879
    invoke-static {}, Landroidx/constraintlayout/core/LinearSystem;->getMetrics()Landroidx/constraintlayout/core/Metrics;

    #@37
    move-result-object v5

    #@38
    iget-wide v11, v5, Landroidx/constraintlayout/core/Metrics;->nonresolvedWidgets:J

    #@3a
    const-wide/16 v16, 0x1

    #@3c
    add-long v11, v11, v16

    #@3e
    iput-wide v11, v5, Landroidx/constraintlayout/core/Metrics;->nonresolvedWidgets:J

    #@40
    .line 2882
    :cond_40
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@43
    move-result v11

    #@44
    .line 2883
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@47
    move-result v12

    #@48
    .line 2884
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4a
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@4d
    move-result v16

    #@4e
    if-eqz v12, :cond_53

    #@50
    add-int/lit8 v5, v11, 0x1

    #@52
    goto :goto_54

    #@53
    :cond_53
    move v5, v11

    #@54
    :goto_54
    if-eqz v16, :cond_58

    #@56
    add-int/lit8 v5, v5, 0x1

    #@58
    :cond_58
    if-eqz p17, :cond_5d

    #@5a
    const/16 v18, 0x3

    #@5c
    goto :goto_5f

    #@5d
    :cond_5d
    move/from16 v18, p22

    #@5f
    .line 2902
    :goto_5f
    sget-object v17, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintWidget$DimensionBehaviour:[I

    #@61
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    #@64
    move-result v19

    #@65
    aget v2, v17, v19

    #@67
    const/4 v14, 0x1

    #@68
    if-eq v2, v14, :cond_73

    #@6a
    const/4 v14, 0x2

    #@6b
    if-eq v2, v14, :cond_73

    #@6d
    const/4 v14, 0x3

    #@6e
    if-eq v2, v14, :cond_73

    #@70
    const/4 v14, 0x4

    #@71
    if-eq v2, v14, :cond_78

    #@73
    :cond_73
    move/from16 v2, v18

    #@75
    :cond_75
    const/16 v18, 0x0

    #@77
    goto :goto_7e

    #@78
    :cond_78
    move/from16 v2, v18

    #@7a
    if-eq v2, v14, :cond_75

    #@7c
    const/16 v18, 0x1

    #@7e
    .line 2922
    :goto_7e
    iget v14, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    #@80
    const/4 v13, -0x1

    #@81
    if-eq v14, v13, :cond_8c

    #@83
    if-eqz p2, :cond_8c

    #@85
    .line 2928
    iput v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    #@87
    move-object/from16 v21, v6

    #@89
    const/16 v18, 0x0

    #@8b
    goto :goto_90

    #@8c
    :cond_8c
    move/from16 v14, p13

    #@8e
    move-object/from16 v21, v6

    #@90
    .line 2930
    :goto_90
    iget v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    #@92
    if-eq v6, v13, :cond_9b

    #@94
    if-nez p2, :cond_9b

    #@96
    .line 2936
    iput v13, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    #@98
    move v14, v6

    #@99
    const/16 v18, 0x0

    #@9b
    .line 2939
    :cond_9b
    iget v6, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@9d
    const/16 v13, 0x8

    #@9f
    if-ne v6, v13, :cond_a4

    #@a1
    const/4 v14, 0x0

    #@a2
    const/16 v18, 0x0

    #@a4
    :cond_a4
    if-eqz p27, :cond_bd

    #@a6
    if-nez v11, :cond_b2

    #@a8
    if-nez v12, :cond_b2

    #@aa
    if-nez v16, :cond_b2

    #@ac
    move/from16 v6, p12

    #@ae
    .line 2947
    invoke-virtual {v10, v9, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@b1
    goto :goto_bd

    #@b2
    :cond_b2
    if-eqz v11, :cond_bd

    #@b4
    if-nez v12, :cond_bd

    #@b6
    .line 2949
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@b9
    move-result v6

    #@ba
    invoke-virtual {v10, v9, v7, v6, v13}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@bd
    :cond_bd
    :goto_bd
    if-nez v18, :cond_ea

    #@bf
    if-eqz p9, :cond_d6

    #@c1
    const/4 v6, 0x3

    #@c2
    const/4 v13, 0x0

    #@c3
    .line 2956
    invoke-virtual {v10, v8, v9, v13, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@c6
    const/16 v6, 0x8

    #@c8
    if-lez v15, :cond_cd

    #@ca
    .line 2958
    invoke-virtual {v10, v8, v9, v15, v6}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@cd
    :cond_cd
    const v14, 0x7fffffff

    #@d0
    if-ge v1, v14, :cond_db

    #@d2
    .line 2961
    invoke-virtual {v10, v8, v9, v1, v6}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@d5
    goto :goto_db

    #@d6
    :cond_d6
    move v6, v13

    #@d7
    const/4 v13, 0x0

    #@d8
    .line 2964
    invoke-virtual {v10, v8, v9, v14, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@db
    :cond_db
    :goto_db
    move v1, v4

    #@dc
    move/from16 p9, v5

    #@de
    move-object v13, v7

    #@df
    move-object v15, v8

    #@e0
    move/from16 v23, v18

    #@e2
    move-object/from16 v14, v21

    #@e4
    move/from16 v18, p5

    #@e6
    move/from16 v21, v3

    #@e8
    goto/16 :goto_1ee

    #@ea
    :cond_ea
    const/4 v1, 0x2

    #@eb
    const/4 v13, 0x0

    #@ec
    if-eq v5, v1, :cond_113

    #@ee
    if-nez p17, :cond_113

    #@f0
    const/4 v1, 0x1

    #@f1
    if-eq v2, v1, :cond_f5

    #@f3
    if-nez v2, :cond_113

    #@f5
    .line 2972
    :cond_f5
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    #@f8
    move-result v1

    #@f9
    if-lez v4, :cond_ff

    #@fb
    .line 2974
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    #@fe
    move-result v1

    #@ff
    :cond_ff
    const/16 v6, 0x8

    #@101
    .line 2976
    invoke-virtual {v10, v8, v9, v1, v6}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@104
    move/from16 v18, p5

    #@106
    move v1, v4

    #@107
    move/from16 p9, v5

    #@109
    move-object v15, v8

    #@10a
    move/from16 v23, v13

    #@10c
    move-object/from16 v14, v21

    #@10e
    move/from16 v21, v3

    #@110
    move-object v13, v7

    #@111
    goto/16 :goto_1ee

    #@113
    :cond_113
    const/4 v1, -0x2

    #@114
    if-ne v3, v1, :cond_118

    #@116
    move v6, v14

    #@117
    goto :goto_119

    #@118
    :cond_118
    move v6, v3

    #@119
    :goto_119
    if-ne v4, v1, :cond_11d

    #@11b
    move v1, v14

    #@11c
    goto :goto_11e

    #@11d
    :cond_11d
    move v1, v4

    #@11e
    :goto_11e
    if-lez v14, :cond_124

    #@120
    const/4 v3, 0x1

    #@121
    if-eq v2, v3, :cond_124

    #@123
    move v14, v13

    #@124
    :cond_124
    if-lez v6, :cond_12f

    #@126
    const/16 v3, 0x8

    #@128
    .line 2993
    invoke-virtual {v10, v8, v9, v6, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@12b
    .line 2994
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    #@12e
    move-result v14

    #@12f
    :cond_12f
    if-lez v1, :cond_148

    #@131
    if-eqz p3, :cond_138

    #@133
    const/4 v3, 0x1

    #@134
    if-ne v2, v3, :cond_138

    #@136
    move v3, v13

    #@137
    goto :goto_139

    #@138
    :cond_138
    const/4 v3, 0x1

    #@139
    :goto_139
    if-eqz v3, :cond_141

    #@13b
    const/16 v3, 0x8

    #@13d
    .line 3002
    invoke-virtual {v10, v8, v9, v1, v3}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@140
    goto :goto_143

    #@141
    :cond_141
    const/16 v3, 0x8

    #@143
    .line 3004
    :goto_143
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    #@146
    move-result v14

    #@147
    goto :goto_14a

    #@148
    :cond_148
    const/16 v3, 0x8

    #@14a
    :goto_14a
    const/4 v4, 0x1

    #@14b
    if-ne v2, v4, :cond_173

    #@14d
    if-eqz p3, :cond_154

    #@14f
    .line 3008
    invoke-virtual {v10, v8, v9, v14, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@152
    const/4 v4, 0x5

    #@153
    goto :goto_165

    #@154
    :cond_154
    if-eqz p19, :cond_15e

    #@156
    const/4 v4, 0x5

    #@157
    .line 3010
    invoke-virtual {v10, v8, v9, v14, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@15a
    .line 3011
    invoke-virtual {v10, v8, v9, v14, v3}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@15d
    goto :goto_165

    #@15e
    :cond_15e
    const/4 v4, 0x5

    #@15f
    .line 3013
    invoke-virtual {v10, v8, v9, v14, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@162
    .line 3014
    invoke-virtual {v10, v8, v9, v14, v3}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@165
    :goto_165
    move/from16 p9, v5

    #@167
    move-object v13, v7

    #@168
    move-object v15, v8

    #@169
    move/from16 v23, v18

    #@16b
    move-object/from16 v14, v21

    #@16d
    move/from16 v18, p5

    #@16f
    move/from16 v21, v6

    #@171
    goto/16 :goto_1ee

    #@173
    :cond_173
    const/4 v4, 0x5

    #@174
    const/4 v14, 0x2

    #@175
    if-ne v2, v14, :cond_1e2

    #@177
    .line 3019
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@17a
    move-result-object v3

    #@17b
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@17d
    if-eq v3, v4, :cond_1a1

    #@17f
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@182
    move-result-object v3

    #@183
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@185
    if-ne v3, v4, :cond_188

    #@187
    goto :goto_1a1

    #@188
    .line 3024
    :cond_188
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@18a
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@18c
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18f
    move-result-object v3

    #@190
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@193
    move-result-object v3

    #@194
    .line 3025
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@196
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@198
    invoke-virtual {v4, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19b
    move-result-object v4

    #@19c
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@19f
    move-result-object v4

    #@1a0
    goto :goto_1b9

    #@1a1
    .line 3021
    :cond_1a1
    :goto_1a1
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1a3
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1a5
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a8
    move-result-object v3

    #@1a9
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@1ac
    move-result-object v3

    #@1ad
    .line 3022
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1af
    sget-object v13, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1b1
    invoke-virtual {v4, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1b4
    move-result-object v4

    #@1b5
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@1b8
    move-result-object v4

    #@1b9
    :goto_1b9
    move-object/from16 v23, v3

    #@1bb
    move-object v13, v4

    #@1bc
    .line 3027
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    #@1bf
    move-result-object v3

    #@1c0
    const/16 v24, 0x5

    #@1c2
    move-object v4, v8

    #@1c3
    move v14, v5

    #@1c4
    move-object v5, v9

    #@1c5
    move/from16 p9, v14

    #@1c7
    move-object/from16 v14, v21

    #@1c9
    move/from16 v21, v6

    #@1cb
    move-object v6, v13

    #@1cc
    move-object v13, v7

    #@1cd
    move-object/from16 v7, v23

    #@1cf
    move-object v15, v8

    #@1d0
    move/from16 v8, p26

    #@1d2
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    #@1d5
    move-result-object v3

    #@1d6
    invoke-virtual {v10, v3}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    #@1d9
    if-eqz p3, :cond_1dd

    #@1db
    const/16 v18, 0x0

    #@1dd
    :cond_1dd
    move/from16 v23, v18

    #@1df
    move/from16 v18, p5

    #@1e1
    goto :goto_1ee

    #@1e2
    :cond_1e2
    move/from16 p9, v5

    #@1e4
    move-object v13, v7

    #@1e5
    move-object v15, v8

    #@1e6
    move-object/from16 v14, v21

    #@1e8
    move/from16 v21, v6

    #@1ea
    move/from16 v23, v18

    #@1ec
    const/16 v18, 0x1

    #@1ee
    :goto_1ee
    if-eqz p27, :cond_511

    #@1f0
    if-eqz p19, :cond_1fe

    #@1f2
    move-object/from16 v1, p6

    #@1f4
    move-object/from16 v4, p7

    #@1f6
    move/from16 v5, p9

    #@1f8
    move-object v2, v15

    #@1f9
    const/4 v3, 0x0

    #@1fa
    const/4 v6, 0x2

    #@1fb
    move-object v15, v9

    #@1fc
    goto/16 :goto_51b

    #@1fe
    :cond_1fe
    if-nez v11, :cond_209

    #@200
    if-nez v12, :cond_209

    #@202
    if-nez v16, :cond_209

    #@204
    move-object v2, v15

    #@205
    const/4 v1, 0x5

    #@206
    const/4 v3, 0x0

    #@207
    goto/16 :goto_4dc

    #@209
    :cond_209
    if-eqz v11, :cond_225

    #@20b
    if-nez v12, :cond_225

    #@20d
    move-object/from16 v7, p10

    #@20f
    const/4 v8, 0x0

    #@210
    .line 3078
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@212
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@214
    if-eqz p3, :cond_21d

    #@216
    .line 3079
    instance-of v1, v1, Landroidx/constraintlayout/core/widgets/Barrier;

    #@218
    if-eqz v1, :cond_21d

    #@21a
    const/16 v13, 0x8

    #@21c
    goto :goto_21e

    #@21d
    :cond_21d
    const/4 v13, 0x5

    #@21e
    :goto_21e
    move/from16 v22, p3

    #@220
    move v3, v8

    #@221
    move v6, v13

    #@222
    move-object v2, v15

    #@223
    goto/16 :goto_4df

    #@225
    :cond_225
    move-object/from16 v7, p10

    #@227
    const/4 v8, 0x0

    #@228
    if-nez v11, :cond_25c

    #@22a
    if-eqz v12, :cond_25c

    #@22c
    .line 3083
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@22f
    move-result v1

    #@230
    neg-int v1, v1

    #@231
    const/16 v2, 0x8

    #@233
    invoke-virtual {v10, v15, v14, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@236
    if-eqz p3, :cond_4d9

    #@238
    .line 3085
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    #@23a
    if-eqz v1, :cond_252

    #@23c
    iget-boolean v1, v9, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@23e
    if-eqz v1, :cond_252

    #@240
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@242
    if-eqz v1, :cond_252

    #@244
    .line 3086
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@246
    if-eqz p2, :cond_24d

    #@248
    .line 3088
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@24b
    goto/16 :goto_4d9

    #@24d
    .line 3090
    :cond_24d
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@250
    goto/16 :goto_4d9

    #@252
    :cond_252
    move-object/from16 v6, p6

    #@254
    const/4 v1, 0x5

    #@255
    .line 3096
    invoke-virtual {v10, v9, v6, v8, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@258
    move v3, v8

    #@259
    move-object v2, v15

    #@25a
    goto/16 :goto_4dc

    #@25c
    :cond_25c
    move-object/from16 v6, p6

    #@25e
    if-eqz v11, :cond_4d9

    #@260
    if-eqz v12, :cond_4d9

    #@262
    .line 3111
    iget-object v3, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@264
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@266
    move-object/from16 v12, p11

    #@268
    const/4 v3, 0x2

    #@269
    .line 3112
    iget-object v4, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@26b
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@26d
    .line 3113
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@270
    move-result-object v4

    #@271
    const/16 v16, 0x6

    #@273
    if-eqz v23, :cond_368

    #@275
    if-nez v2, :cond_2cb

    #@277
    if-nez v1, :cond_2a0

    #@279
    if-nez v21, :cond_2a0

    #@27b
    .line 3122
    iget-boolean v1, v13, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@27d
    if-eqz v1, :cond_295

    #@27f
    iget-boolean v1, v14, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@281
    if-eqz v1, :cond_295

    #@283
    .line 3123
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@286
    move-result v1

    #@287
    const/16 v2, 0x8

    #@289
    invoke-virtual {v10, v9, v13, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@28c
    .line 3124
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@28f
    move-result v1

    #@290
    neg-int v1, v1

    #@291
    invoke-virtual {v10, v15, v14, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@294
    return-void

    #@295
    :cond_295
    move/from16 v19, v8

    #@297
    move/from16 v24, v19

    #@299
    const/16 v1, 0x8

    #@29b
    const/16 v3, 0x8

    #@29d
    const/16 v22, 0x1

    #@29f
    goto :goto_2a8

    #@2a0
    :cond_2a0
    move/from16 v22, v8

    #@2a2
    const/4 v1, 0x5

    #@2a3
    const/4 v3, 0x5

    #@2a4
    const/16 v19, 0x1

    #@2a6
    const/16 v24, 0x1

    #@2a8
    .line 3134
    :goto_2a8
    instance-of v8, v11, Landroidx/constraintlayout/core/widgets/Barrier;

    #@2aa
    if-nez v8, :cond_2be

    #@2ac
    instance-of v8, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    #@2ae
    if-eqz v8, :cond_2b1

    #@2b0
    goto :goto_2be

    #@2b1
    :cond_2b1
    move-object/from16 v8, p7

    #@2b3
    move/from16 v25, v22

    #@2b5
    move/from16 v22, v19

    #@2b7
    move/from16 v19, v3

    #@2b9
    :goto_2b9
    move v3, v1

    #@2ba
    move/from16 v1, v16

    #@2bc
    goto/16 :goto_3b3

    #@2be
    :cond_2be
    :goto_2be
    move-object/from16 v8, p7

    #@2c0
    move v3, v1

    #@2c1
    move/from16 v1, v16

    #@2c3
    move/from16 v25, v22

    #@2c5
    move/from16 v22, v19

    #@2c7
    const/16 v19, 0x4

    #@2c9
    goto/16 :goto_3b3

    #@2cb
    :cond_2cb
    if-ne v2, v3, :cond_2e3

    #@2cd
    .line 3143
    instance-of v1, v11, Landroidx/constraintlayout/core/widgets/Barrier;

    #@2cf
    if-nez v1, :cond_2df

    #@2d1
    instance-of v1, v5, Landroidx/constraintlayout/core/widgets/Barrier;

    #@2d3
    if-eqz v1, :cond_2d6

    #@2d5
    goto :goto_2df

    #@2d6
    :cond_2d6
    move-object/from16 v8, p7

    #@2d8
    move/from16 v1, v16

    #@2da
    const/4 v3, 0x5

    #@2db
    const/16 v19, 0x5

    #@2dd
    goto/16 :goto_3ad

    #@2df
    :cond_2df
    :goto_2df
    move-object/from16 v8, p7

    #@2e1
    goto/16 :goto_3a8

    #@2e3
    :cond_2e3
    const/4 v8, 0x1

    #@2e4
    if-ne v2, v8, :cond_2ee

    #@2e6
    move-object/from16 v8, p7

    #@2e8
    move/from16 v1, v16

    #@2ea
    const/16 v3, 0x8

    #@2ec
    goto/16 :goto_3ab

    #@2ee
    :cond_2ee
    const/4 v8, 0x3

    #@2ef
    if-ne v2, v8, :cond_35c

    #@2f1
    .line 3151
    iget v8, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@2f3
    const/4 v3, -0x1

    #@2f4
    if-ne v8, v3, :cond_310

    #@2f6
    if-eqz p20, :cond_300

    #@2f8
    move-object/from16 v8, p7

    #@2fa
    if-eqz p3, :cond_2fe

    #@2fc
    const/4 v1, 0x5

    #@2fd
    goto :goto_304

    #@2fe
    :cond_2fe
    const/4 v1, 0x4

    #@2ff
    goto :goto_304

    #@300
    :cond_300
    move-object/from16 v8, p7

    #@302
    const/16 v1, 0x8

    #@304
    :goto_304
    const/16 v3, 0x8

    #@306
    :goto_306
    const/16 v19, 0x5

    #@308
    :goto_308
    const/16 v22, 0x1

    #@30a
    const/16 v24, 0x1

    #@30c
    const/16 v25, 0x1

    #@30e
    goto/16 :goto_3b3

    #@310
    :cond_310
    if-eqz p17, :cond_331

    #@312
    move/from16 v3, p23

    #@314
    const/4 v8, 0x2

    #@315
    if-eq v3, v8, :cond_31d

    #@317
    const/4 v1, 0x1

    #@318
    if-ne v3, v1, :cond_31b

    #@31a
    goto :goto_31d

    #@31b
    :cond_31b
    const/4 v1, 0x0

    #@31c
    goto :goto_31e

    #@31d
    :cond_31d
    :goto_31d
    const/4 v1, 0x1

    #@31e
    :goto_31e
    if-nez v1, :cond_324

    #@320
    const/16 v1, 0x8

    #@322
    const/4 v3, 0x5

    #@323
    goto :goto_326

    #@324
    :cond_324
    const/4 v1, 0x5

    #@325
    const/4 v3, 0x4

    #@326
    :goto_326
    move-object/from16 v8, p7

    #@328
    move/from16 v19, v3

    #@32a
    const/16 v22, 0x1

    #@32c
    const/16 v24, 0x1

    #@32e
    const/16 v25, 0x1

    #@330
    goto :goto_2b9

    #@331
    :cond_331
    if-lez v1, :cond_339

    #@333
    move-object/from16 v8, p7

    #@335
    move/from16 v1, v16

    #@337
    const/4 v3, 0x5

    #@338
    goto :goto_306

    #@339
    :cond_339
    if-nez v1, :cond_354

    #@33b
    if-nez v21, :cond_354

    #@33d
    if-nez p20, :cond_347

    #@33f
    move-object/from16 v8, p7

    #@341
    move/from16 v1, v16

    #@343
    const/4 v3, 0x5

    #@344
    const/16 v19, 0x8

    #@346
    goto :goto_308

    #@347
    :cond_347
    if-eq v11, v4, :cond_34d

    #@349
    if-eq v5, v4, :cond_34d

    #@34b
    const/4 v1, 0x4

    #@34c
    goto :goto_34e

    #@34d
    :cond_34d
    const/4 v1, 0x5

    #@34e
    :goto_34e
    move-object/from16 v8, p7

    #@350
    move v3, v1

    #@351
    move/from16 v1, v16

    #@353
    goto :goto_359

    #@354
    :cond_354
    move-object/from16 v8, p7

    #@356
    move/from16 v1, v16

    #@358
    const/4 v3, 0x5

    #@359
    :goto_359
    const/16 v19, 0x4

    #@35b
    goto :goto_308

    #@35c
    :cond_35c
    move-object/from16 v8, p7

    #@35e
    move/from16 v1, v16

    #@360
    const/4 v3, 0x5

    #@361
    const/16 v19, 0x4

    #@363
    const/16 v22, 0x0

    #@365
    const/16 v24, 0x0

    #@367
    goto :goto_3b1

    #@368
    .line 3203
    :cond_368
    iget-boolean v1, v13, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@36a
    if-eqz v1, :cond_2df

    #@36c
    iget-boolean v1, v14, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@36e
    if-eqz v1, :cond_2df

    #@370
    .line 3204
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@373
    move-result v1

    #@374
    .line 3205
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@377
    move-result v2

    #@378
    const/16 v3, 0x8

    #@37a
    move-object/from16 p17, p1

    #@37c
    move-object/from16 p18, v9

    #@37e
    move-object/from16 p19, v13

    #@380
    move/from16 p20, v1

    #@382
    move/from16 p21, p16

    #@384
    move-object/from16 p22, v14

    #@386
    move-object/from16 p23, v15

    #@388
    move/from16 p24, v2

    #@38a
    move/from16 p25, v3

    #@38c
    .line 3204
    invoke-virtual/range {p17 .. p25}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@38f
    if-eqz p3, :cond_3a7

    #@391
    if-eqz v18, :cond_3a7

    #@393
    .line 3208
    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@395
    if-eqz v1, :cond_39e

    #@397
    .line 3209
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@39a
    move-result v13

    #@39b
    move-object/from16 v8, p7

    #@39d
    goto :goto_3a1

    #@39e
    :cond_39e
    move-object/from16 v8, p7

    #@3a0
    const/4 v13, 0x0

    #@3a1
    :goto_3a1
    if-eq v14, v8, :cond_3a7

    #@3a3
    const/4 v1, 0x5

    #@3a4
    .line 3215
    invoke-virtual {v10, v8, v15, v13, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@3a7
    :cond_3a7
    return-void

    #@3a8
    :goto_3a8
    move/from16 v1, v16

    #@3aa
    const/4 v3, 0x5

    #@3ab
    :goto_3ab
    const/16 v19, 0x4

    #@3ad
    :goto_3ad
    const/16 v22, 0x1

    #@3af
    const/16 v24, 0x1

    #@3b1
    :goto_3b1
    const/16 v25, 0x0

    #@3b3
    :goto_3b3
    if-eqz v24, :cond_3be

    #@3b5
    if-ne v13, v14, :cond_3be

    #@3b7
    if-eq v11, v4, :cond_3be

    #@3b9
    const/16 v24, 0x0

    #@3bb
    const/16 v26, 0x0

    #@3bd
    goto :goto_3c0

    #@3be
    :cond_3be
    const/16 v26, 0x1

    #@3c0
    :goto_3c0
    if-eqz v22, :cond_406

    #@3c2
    if-nez v23, :cond_3d5

    #@3c4
    if-nez p18, :cond_3d5

    #@3c6
    if-nez p20, :cond_3d5

    #@3c8
    if-ne v13, v6, :cond_3d5

    #@3ca
    if-ne v14, v8, :cond_3d5

    #@3cc
    const/16 v22, 0x0

    #@3ce
    const/16 v26, 0x8

    #@3d0
    const/16 v27, 0x8

    #@3d2
    const/16 v28, 0x0

    #@3d4
    goto :goto_3dd

    #@3d5
    :cond_3d5
    move/from16 v22, p3

    #@3d7
    move/from16 v27, v1

    #@3d9
    move/from16 v28, v26

    #@3db
    move/from16 v26, v3

    #@3dd
    .line 3238
    :goto_3dd
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@3e0
    move-result v29

    #@3e1
    .line 3239
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@3e4
    move-result v30

    #@3e5
    move-object/from16 v1, p1

    #@3e7
    move v3, v2

    #@3e8
    move-object v2, v9

    #@3e9
    move v12, v3

    #@3ea
    move-object v3, v13

    #@3eb
    move/from16 p8, v12

    #@3ed
    move-object v12, v4

    #@3ee
    move/from16 v4, v29

    #@3f0
    move-object/from16 v29, v12

    #@3f2
    move-object v12, v5

    #@3f3
    move/from16 v5, p16

    #@3f5
    move-object v6, v14

    #@3f6
    move-object v7, v15

    #@3f7
    move/from16 v8, v30

    #@3f9
    move-object/from16 v20, v15

    #@3fb
    move-object v15, v9

    #@3fc
    move/from16 v9, v27

    #@3fe
    .line 3238
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@401
    move/from16 v3, v26

    #@403
    move/from16 v26, v28

    #@405
    goto :goto_410

    #@406
    :cond_406
    move/from16 p8, v2

    #@408
    move-object/from16 v29, v4

    #@40a
    move-object v12, v5

    #@40b
    move-object/from16 v20, v15

    #@40d
    move-object v15, v9

    #@40e
    move/from16 v22, p3

    #@410
    .line 3242
    :goto_410
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@412
    const/16 v2, 0x8

    #@414
    if-ne v1, v2, :cond_41d

    #@416
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasDependents()Z

    #@419
    move-result v1

    #@41a
    if-nez v1, :cond_41d

    #@41c
    return-void

    #@41d
    :cond_41d
    if-eqz v24, :cond_441

    #@41f
    if-eqz v22, :cond_42f

    #@421
    if-eq v13, v14, :cond_42f

    #@423
    if-nez v23, :cond_42f

    #@425
    .line 3249
    instance-of v1, v11, Landroidx/constraintlayout/core/widgets/Barrier;

    #@427
    if-nez v1, :cond_42d

    #@429
    instance-of v1, v12, Landroidx/constraintlayout/core/widgets/Barrier;

    #@42b
    if-eqz v1, :cond_42f

    #@42d
    :cond_42d
    move/from16 v3, v16

    #@42f
    .line 3253
    :cond_42f
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@432
    move-result v1

    #@433
    invoke-virtual {v10, v15, v13, v1, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@436
    .line 3254
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@439
    move-result v1

    #@43a
    neg-int v1, v1

    #@43b
    move-object/from16 v2, v20

    #@43d
    invoke-virtual {v10, v2, v14, v1, v3}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@440
    goto :goto_443

    #@441
    :cond_441
    move-object/from16 v2, v20

    #@443
    :goto_443
    if-eqz v22, :cond_459

    #@445
    if-eqz p21, :cond_459

    #@447
    .line 3257
    instance-of v1, v11, Landroidx/constraintlayout/core/widgets/Barrier;

    #@449
    if-nez v1, :cond_459

    #@44b
    instance-of v1, v12, Landroidx/constraintlayout/core/widgets/Barrier;

    #@44d
    if-nez v1, :cond_459

    #@44f
    move-object/from16 v1, v29

    #@451
    if-eq v12, v1, :cond_45b

    #@453
    move/from16 v3, v16

    #@455
    move v4, v3

    #@456
    const/16 v26, 0x1

    #@458
    goto :goto_45d

    #@459
    :cond_459
    move-object/from16 v1, v29

    #@45b
    :cond_45b
    move/from16 v4, v19

    #@45d
    :goto_45d
    if-eqz v26, :cond_4a7

    #@45f
    if-eqz v25, :cond_487

    #@461
    if-eqz p20, :cond_465

    #@463
    if-eqz p4, :cond_487

    #@465
    :cond_465
    if-eq v11, v1, :cond_46c

    #@467
    if-ne v12, v1, :cond_46a

    #@469
    goto :goto_46c

    #@46a
    :cond_46a
    move v6, v4

    #@46b
    goto :goto_46e

    #@46c
    :cond_46c
    :goto_46c
    move/from16 v6, v16

    #@46e
    .line 3273
    :goto_46e
    instance-of v5, v11, Landroidx/constraintlayout/core/widgets/Guideline;

    #@470
    if-nez v5, :cond_476

    #@472
    instance-of v5, v12, Landroidx/constraintlayout/core/widgets/Guideline;

    #@474
    if-eqz v5, :cond_477

    #@476
    :cond_476
    const/4 v6, 0x5

    #@477
    .line 3276
    :cond_477
    instance-of v5, v11, Landroidx/constraintlayout/core/widgets/Barrier;

    #@479
    if-nez v5, :cond_47f

    #@47b
    instance-of v5, v12, Landroidx/constraintlayout/core/widgets/Barrier;

    #@47d
    if-eqz v5, :cond_480

    #@47f
    :cond_47f
    const/4 v6, 0x5

    #@480
    :cond_480
    if-eqz p20, :cond_483

    #@482
    const/4 v6, 0x5

    #@483
    .line 3282
    :cond_483
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    #@486
    move-result v4

    #@487
    :cond_487
    if-eqz v22, :cond_498

    #@489
    .line 3286
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@48c
    move-result v3

    #@48d
    if-eqz p17, :cond_497

    #@48f
    if-nez p20, :cond_497

    #@491
    if-eq v11, v1, :cond_495

    #@493
    if-ne v12, v1, :cond_497

    #@495
    :cond_495
    const/4 v4, 0x4

    #@496
    goto :goto_498

    #@497
    :cond_497
    move v4, v3

    #@498
    .line 3293
    :cond_498
    :goto_498
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@49b
    move-result v1

    #@49c
    invoke-virtual {v10, v15, v13, v1, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@49f
    .line 3294
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@4a2
    move-result v1

    #@4a3
    neg-int v1, v1

    #@4a4
    invoke-virtual {v10, v2, v14, v1, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@4a7
    :cond_4a7
    if-eqz v22, :cond_4b9

    #@4a9
    move-object/from16 v1, p6

    #@4ab
    if-ne v1, v13, :cond_4b2

    #@4ad
    .line 3300
    invoke-virtual/range {p10 .. p10}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@4b0
    move-result v3

    #@4b1
    goto :goto_4b3

    #@4b2
    :cond_4b2
    const/4 v3, 0x0

    #@4b3
    :goto_4b3
    if-eq v13, v1, :cond_4b9

    #@4b5
    const/4 v4, 0x5

    #@4b6
    .line 3306
    invoke-virtual {v10, v15, v1, v3, v4}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@4b9
    :cond_4b9
    if-eqz v22, :cond_4d6

    #@4bb
    if-eqz v23, :cond_4d6

    #@4bd
    if-nez p14, :cond_4d6

    #@4bf
    if-nez v21, :cond_4d6

    #@4c1
    if-eqz v23, :cond_4d0

    #@4c3
    move/from16 v1, p8

    #@4c5
    const/4 v3, 0x3

    #@4c6
    if-ne v1, v3, :cond_4d0

    #@4c8
    const/16 v1, 0x8

    #@4ca
    const/4 v3, 0x0

    #@4cb
    .line 3315
    invoke-virtual {v10, v2, v15, v3, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@4ce
    const/4 v1, 0x5

    #@4cf
    goto :goto_4de

    #@4d0
    :cond_4d0
    const/4 v3, 0x0

    #@4d1
    const/4 v1, 0x5

    #@4d2
    .line 3317
    invoke-virtual {v10, v2, v15, v3, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@4d5
    goto :goto_4de

    #@4d6
    :cond_4d6
    const/4 v1, 0x5

    #@4d7
    const/4 v3, 0x0

    #@4d8
    goto :goto_4de

    #@4d9
    :cond_4d9
    :goto_4d9
    move v3, v8

    #@4da
    move-object v2, v15

    #@4db
    const/4 v1, 0x5

    #@4dc
    :goto_4dc
    move/from16 v22, p3

    #@4de
    :goto_4de
    move v6, v1

    #@4df
    :goto_4df
    if-eqz v22, :cond_510

    #@4e1
    if-eqz v18, :cond_510

    #@4e3
    move-object/from16 v1, p11

    #@4e5
    .line 3324
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4e7
    if-eqz v4, :cond_4f0

    #@4e9
    .line 3325
    invoke-virtual/range {p11 .. p11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@4ec
    move-result v13

    #@4ed
    move-object/from16 v4, p7

    #@4ef
    goto :goto_4f3

    #@4f0
    :cond_4f0
    move-object/from16 v4, p7

    #@4f2
    move v13, v3

    #@4f3
    :goto_4f3
    if-eq v14, v4, :cond_510

    #@4f5
    .line 3328
    iget-boolean v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP:Z

    #@4f7
    if-eqz v3, :cond_50d

    #@4f9
    iget-boolean v3, v2, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    #@4fb
    if-eqz v3, :cond_50d

    #@4fd
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@4ff
    if-eqz v3, :cond_50d

    #@501
    .line 3329
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@503
    if-eqz p2, :cond_509

    #@505
    .line 3331
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@508
    goto :goto_50c

    #@509
    .line 3333
    :cond_509
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@50c
    :goto_50c
    return-void

    #@50d
    .line 3340
    :cond_50d
    invoke-virtual {v10, v4, v2, v13, v6}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@510
    :cond_510
    return-void

    #@511
    :cond_511
    move-object/from16 v1, p6

    #@513
    move-object/from16 v4, p7

    #@515
    move-object v2, v15

    #@516
    const/4 v3, 0x0

    #@517
    move-object v15, v9

    #@518
    move/from16 v5, p9

    #@51a
    const/4 v6, 0x2

    #@51b
    :goto_51b
    if-ge v5, v6, :cond_564

    #@51d
    if-eqz p3, :cond_564

    #@51f
    if-eqz v18, :cond_564

    #@521
    const/16 v5, 0x8

    #@523
    .line 3044
    invoke-virtual {v10, v15, v1, v3, v5}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@526
    if-nez p2, :cond_531

    #@528
    .line 3045
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@52a
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@52c
    if-nez v1, :cond_52f

    #@52e
    goto :goto_531

    #@52f
    :cond_52f
    move v13, v3

    #@530
    goto :goto_532

    #@531
    :cond_531
    :goto_531
    const/4 v13, 0x1

    #@532
    :goto_532
    if-nez p2, :cond_55c

    #@534
    .line 3046
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@536
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@538
    if-eqz v1, :cond_55c

    #@53a
    .line 3049
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@53c
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@53e
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@540
    .line 3050
    iget v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@542
    const/4 v6, 0x0

    #@543
    cmpl-float v5, v5, v6

    #@545
    if-eqz v5, :cond_55a

    #@547
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@549
    aget-object v5, v5, v3

    #@54b
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@54d
    if-ne v5, v6, :cond_55a

    #@54f
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@551
    const/4 v5, 0x1

    #@552
    aget-object v1, v1, v5

    #@554
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@556
    if-ne v1, v6, :cond_55a

    #@558
    move v14, v5

    #@559
    goto :goto_55d

    #@55a
    :cond_55a
    move v14, v3

    #@55b
    goto :goto_55d

    #@55c
    :cond_55c
    move v14, v13

    #@55d
    :goto_55d
    if-eqz v14, :cond_564

    #@55f
    const/16 v1, 0x8

    #@561
    .line 3062
    invoke-virtual {v10, v4, v2, v3, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@564
    :cond_564
    return-void
.end method

.method private getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V
    .registers 11

    #@0
    .line 3639
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    const-string p2, " :  {\n"

    #@5
    .line 3640
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    const-string p2, "      size"

    #@a
    const/4 p6, 0x0

    #@b
    .line 3641
    invoke-direct {p0, p1, p2, p3, p6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    #@e
    const-string p2, "      min"

    #@10
    .line 3642
    invoke-direct {p0, p1, p2, p4, p6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    #@13
    const-string p2, "      max"

    #@15
    const p3, 0x7fffffff

    #@18
    .line 3643
    invoke-direct {p0, p1, p2, p5, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    #@1b
    const-string p2, "      matchMin"

    #@1d
    .line 3644
    invoke-direct {p0, p1, p2, p7, p6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    #@20
    const-string p2, "      matchDef"

    #@22
    .line 3645
    invoke-direct {p0, p1, p2, p8, p6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    #@25
    const-string p2, "      matchPercent"

    #@27
    const/high16 p3, 0x3f800000    # 1.0f

    #@29
    .line 3646
    invoke-direct {p0, p1, p2, p9, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    #@2c
    const-string p2, "    },\n"

    #@2e
    .line 3647
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    return-void
.end method

.method private getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .registers 6

    #@0
    .line 3650
    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const-string v0, "    "

    #@7
    .line 3653
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 3654
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    const-string p2, " : [ \'"

    #@f
    .line 3655
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 3656
    iget-object p2, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    const-string p2, "\'"

    #@19
    .line 3657
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    .line 3658
    iget p2, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@1e
    const/high16 v0, -0x80000000

    #@20
    if-ne p2, v0, :cond_26

    #@22
    iget p2, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@24
    if-eqz p2, :cond_3f

    #@26
    :cond_26
    const-string p2, ","

    #@28
    .line 3659
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 3660
    iget v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@2d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    .line 3661
    iget v1, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@32
    if-eq v1, v0, :cond_3f

    #@34
    .line 3662
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 3663
    iget p3, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@39
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    .line 3664
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    :cond_3f
    const-string p2, " ] ,\n"

    #@41
    .line 3667
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    return-void
.end method

.method private isChainHead(I)Z
    .registers 5

    #@0
    mul-int/lit8 p1, p1, 0x2

    #@2
    .line 2386
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4
    aget-object v0, v0, p1

    #@6
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8
    if-eqz v0, :cond_2f

    #@a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c
    aget-object v0, v0, p1

    #@e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@10
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@12
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14
    aget-object v2, v1, p1

    #@16
    if-eq v0, v2, :cond_2f

    #@18
    const/4 v0, 0x1

    #@19
    add-int/2addr p1, v0

    #@1a
    aget-object v1, v1, p1

    #@1c
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e
    if-eqz v1, :cond_2f

    #@20
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@22
    aget-object v1, v1, p1

    #@24
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@26
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@28
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2a
    aget-object p1, v2, p1

    #@2c
    if-ne v1, p1, :cond_2f

    #@2e
    goto :goto_30

    #@2f
    :cond_2f
    const/4 v0, 0x0

    #@30
    :goto_30
    return v0
.end method

.method private serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .registers 5

    #@0
    .line 585
    iget-object v0, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 588
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    const-string p2, " : [ \'"

    #@a
    .line 589
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 590
    iget-object p2, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@f
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    const-string p2, "\',"

    #@14
    .line 591
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 592
    iget p2, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    const-string p2, ","

    #@1e
    .line 593
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 594
    iget p3, p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@23
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    .line 595
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    const-string p2, " ] ,\n"

    #@2b
    .line 596
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    return-void
.end method

.method private serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V
    .registers 5

    #@0
    cmpl-float p4, p3, p4

    #@2
    if-nez p4, :cond_5

    #@4
    return-void

    #@5
    .line 617
    :cond_5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    const-string p2, " :   "

    #@a
    .line 618
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    .line 619
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@10
    const-string p2, ",\n"

    #@12
    .line 620
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    return-void
.end method

.method private serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .registers 5

    #@0
    if-ne p3, p4, :cond_3

    #@2
    return-void

    #@3
    .line 627
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6
    const-string p2, " :   "

    #@8
    .line 628
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 629
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e
    const-string p2, ",\n"

    #@10
    .line 630
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    return-void
.end method

.method private serializeCircle(Ljava/lang/StringBuilder;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;F)V
    .registers 5

    #@0
    .line 599
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    :cond_5
    const-string v0, "circle : [ \'"

    #@7
    .line 603
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    .line 604
    iget-object v0, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    const-string v0, "\',"

    #@11
    .line 605
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 606
    iget p2, p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    const-string p2, ","

    #@1b
    .line 607
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 608
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@21
    .line 609
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    const-string p2, " ] ,\n"

    #@26
    .line 610
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    return-void
.end method

.method private serializeDimensionRatio(Ljava/lang/StringBuilder;Ljava/lang/String;FI)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p3, v0

    #@3
    if-nez v0, :cond_6

    #@5
    return-void

    #@6
    .line 637
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    const-string p2, " :  ["

    #@b
    .line 638
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 639
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@11
    const-string p2, ","

    #@13
    .line 640
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 641
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    const-string p2, ""

    #@1b
    .line 642
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    const-string p2, "],\n"

    #@20
    .line 643
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    return-void
.end method

.method private serializeSize(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V
    .registers 11

    #@0
    .line 651
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    const-string p2, " :  {\n"

    #@5
    .line 652
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    const-string p2, "size"

    #@a
    const/high16 p6, -0x80000000

    #@c
    .line 653
    invoke-direct {p0, p1, p2, p3, p6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    #@f
    const-string p2, "min"

    #@11
    const/4 p3, 0x0

    #@12
    .line 654
    invoke-direct {p0, p1, p2, p4, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    #@15
    const-string p2, "max"

    #@17
    const p4, 0x7fffffff

    #@1a
    .line 655
    invoke-direct {p0, p1, p2, p5, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    #@1d
    const-string p2, "matchMin"

    #@1f
    .line 656
    invoke-direct {p0, p1, p2, p7, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    #@22
    const-string p2, "matchDef"

    #@24
    .line 657
    invoke-direct {p0, p1, p2, p8, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    #@27
    const-string p2, "matchPercent"

    #@29
    const/4 p3, 0x1

    #@2a
    .line 658
    invoke-direct {p0, p1, p2, p8, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    #@2d
    const-string p2, "},\n"

    #@2f
    .line 659
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    return-void
.end method


# virtual methods
.method public addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/HashSet<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;IZ)V"
        }
    .end annotation

    #@0
    if-eqz p5, :cond_18

    #@2
    .line 3543
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result p5

    #@6
    if-nez p5, :cond_9

    #@8
    return-void

    #@9
    .line 3546
    :cond_9
    invoke-static {p1, p2, p0}, Landroidx/constraintlayout/core/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@c
    .line 3547
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@f
    const/16 p5, 0x40

    #@11
    .line 3548
    invoke-virtual {p1, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    #@14
    move-result p5

    #@15
    invoke-virtual {p0, p2, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@18
    :cond_18
    if-nez p4, :cond_60

    #@1a
    .line 3551
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1c
    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@1f
    move-result-object p5

    #@20
    if-eqz p5, :cond_3d

    #@22
    .line 3553
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object p5

    #@26
    :goto_26
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3d

    #@2c
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@32
    .line 3554
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@34
    const/4 v6, 0x1

    #@35
    move-object v2, p1

    #@36
    move-object v3, p2

    #@37
    move-object v4, p3

    #@38
    move v5, p4

    #@39
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    #@3c
    goto :goto_26

    #@3d
    .line 3557
    :cond_3d
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3f
    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@42
    move-result-object p5

    #@43
    if-eqz p5, :cond_c9

    #@45
    .line 3559
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@48
    move-result-object p5

    #@49
    :goto_49
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    #@4c
    move-result v0

    #@4d
    if-eqz v0, :cond_c9

    #@4f
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@55
    .line 3560
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@57
    const/4 v6, 0x1

    #@58
    move-object v2, p1

    #@59
    move-object v3, p2

    #@5a
    move-object v4, p3

    #@5b
    move v5, p4

    #@5c
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    #@5f
    goto :goto_49

    #@60
    .line 3564
    :cond_60
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@62
    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@65
    move-result-object p5

    #@66
    if-eqz p5, :cond_83

    #@68
    .line 3566
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@6b
    move-result-object p5

    #@6c
    :goto_6c
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_83

    #@72
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@75
    move-result-object v0

    #@76
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@78
    .line 3567
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@7a
    const/4 v6, 0x1

    #@7b
    move-object v2, p1

    #@7c
    move-object v3, p2

    #@7d
    move-object v4, p3

    #@7e
    move v5, p4

    #@7f
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    #@82
    goto :goto_6c

    #@83
    .line 3570
    :cond_83
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@85
    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@88
    move-result-object p5

    #@89
    if-eqz p5, :cond_a6

    #@8b
    .line 3572
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@8e
    move-result-object p5

    #@8f
    :goto_8f
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    #@92
    move-result v0

    #@93
    if-eqz v0, :cond_a6

    #@95
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@98
    move-result-object v0

    #@99
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9b
    .line 3573
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@9d
    const/4 v6, 0x1

    #@9e
    move-object v2, p1

    #@9f
    move-object v3, p2

    #@a0
    move-object v4, p3

    #@a1
    move v5, p4

    #@a2
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    #@a5
    goto :goto_8f

    #@a6
    .line 3576
    :cond_a6
    iget-object p5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a8
    invoke-virtual {p5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getDependents()Ljava/util/HashSet;

    #@ab
    move-result-object p5

    #@ac
    if-eqz p5, :cond_c9

    #@ae
    .line 3578
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@b1
    move-result-object p5

    #@b2
    :goto_b2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    #@b5
    move-result v0

    #@b6
    if-eqz v0, :cond_c9

    #@b8
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bb
    move-result-object v0

    #@bc
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@be
    .line 3579
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@c0
    const/4 v6, 0x1

    #@c1
    move-object v2, p1

    #@c2
    move-object v3, p2

    #@c3
    move-object v4, p3

    #@c4
    move v5, p4

    #@c5
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addChildrenToSolverByDependency(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/HashSet;IZ)V

    #@c8
    goto :goto_b2

    #@c9
    :cond_c9
    return-void
.end method

.method addFirst()Z
    .registers 2

    #@0
    .line 2777
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    #@2
    if-nez v0, :cond_b

    #@4
    instance-of v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 v0, 0x1

    #@c
    :goto_c
    return v0
.end method

.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 53

    #@0
    move-object/from16 v15, p0

    #@2
    move-object/from16 v14, p1

    #@4
    .line 2413
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@9
    move-result-object v13

    #@a
    .line 2414
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@f
    move-result-object v12

    #@10
    .line 2415
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@12
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@15
    move-result-object v11

    #@16
    .line 2416
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@1b
    move-result-object v10

    #@1c
    .line 2417
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@21
    move-result-object v9

    #@22
    .line 2421
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@24
    const/4 v8, 0x2

    #@25
    const/4 v1, 0x3

    #@26
    const/4 v7, 0x1

    #@27
    const/4 v6, 0x0

    #@28
    if-eqz v0, :cond_57

    #@2a
    if-eqz v0, :cond_36

    #@2c
    .line 2422
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2e
    aget-object v0, v0, v6

    #@30
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@32
    if-ne v0, v2, :cond_36

    #@34
    move v0, v7

    #@35
    goto :goto_37

    #@36
    :cond_36
    move v0, v6

    #@37
    .line 2423
    :goto_37
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@39
    if-eqz v2, :cond_45

    #@3b
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3d
    aget-object v2, v2, v7

    #@3f
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@41
    if-ne v2, v3, :cond_45

    #@43
    move v2, v7

    #@44
    goto :goto_46

    #@45
    :cond_45
    move v2, v6

    #@46
    .line 2425
    :goto_46
    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    #@48
    if-eq v3, v7, :cond_54

    #@4a
    if-eq v3, v8, :cond_51

    #@4c
    if-eq v3, v1, :cond_57

    #@4e
    move v4, v0

    #@4f
    move v5, v2

    #@50
    goto :goto_59

    #@51
    :cond_51
    move v5, v2

    #@52
    move v4, v6

    #@53
    goto :goto_59

    #@54
    :cond_54
    move v4, v0

    #@55
    move v5, v6

    #@56
    goto :goto_59

    #@57
    :cond_57
    move v4, v6

    #@58
    move v5, v4

    #@59
    .line 2439
    :goto_59
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@5b
    const/16 v3, 0x8

    #@5d
    if-ne v0, v3, :cond_74

    #@5f
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    #@61
    if-nez v0, :cond_74

    #@63
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasDependencies()Z

    #@66
    move-result v0

    #@67
    if-nez v0, :cond_74

    #@69
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    #@6b
    aget-boolean v2, v0, v6

    #@6d
    if-nez v2, :cond_74

    #@6f
    aget-boolean v0, v0, v7

    #@71
    if-nez v0, :cond_74

    #@73
    return-void

    #@74
    .line 2444
    :cond_74
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@76
    const/4 v2, 0x5

    #@77
    if-nez v0, :cond_7d

    #@79
    iget-boolean v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@7b
    if-eqz v8, :cond_fa

    #@7d
    :cond_7d
    if-eqz v0, :cond_ac

    #@7f
    .line 2453
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@81
    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@84
    .line 2454
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@86
    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@88
    add-int/2addr v0, v8

    #@89
    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@8c
    if-eqz v4, :cond_ac

    #@8e
    .line 2455
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@90
    if-eqz v0, :cond_ac

    #@92
    .line 2456
    iget-boolean v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    #@94
    if-eqz v8, :cond_a3

    #@96
    .line 2457
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@98
    .line 2458
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9a
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@9d
    .line 2459
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9f
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addHorizontalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@a2
    goto :goto_ac

    #@a3
    .line 2462
    :cond_a3
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a5
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@a8
    move-result-object v0

    #@a9
    invoke-virtual {v14, v0, v12, v6, v2}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@ac
    .line 2466
    :cond_ac
    :goto_ac
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@ae
    if-eqz v0, :cond_ed

    #@b0
    .line 2467
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@b2
    invoke-virtual {v14, v11, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@b5
    .line 2468
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@b7
    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@b9
    add-int/2addr v0, v8

    #@ba
    invoke-virtual {v14, v10, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@bd
    .line 2469
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@bf
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasDependents()Z

    #@c2
    move-result v0

    #@c3
    if-eqz v0, :cond_cd

    #@c5
    .line 2470
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@c7
    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    #@c9
    add-int/2addr v0, v8

    #@ca
    invoke-virtual {v14, v9, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@cd
    :cond_cd
    if-eqz v5, :cond_ed

    #@cf
    .line 2472
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@d1
    if-eqz v0, :cond_ed

    #@d3
    .line 2473
    iget-boolean v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->OPTIMIZE_WRAP_ON_RESOLVED:Z

    #@d5
    if-eqz v8, :cond_e4

    #@d7
    .line 2474
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@d9
    .line 2475
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@db
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMinVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@de
    .line 2476
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e0
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addVerticalWrapMaxVariable(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@e3
    goto :goto_ed

    #@e4
    .line 2479
    :cond_e4
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e6
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@e9
    move-result-object v0

    #@ea
    invoke-virtual {v14, v0, v10, v6, v2}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@ed
    .line 2483
    :cond_ed
    :goto_ed
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@ef
    if-eqz v0, :cond_fa

    #@f1
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@f3
    if-eqz v0, :cond_fa

    #@f5
    .line 2484
    iput-boolean v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@f7
    .line 2485
    iput-boolean v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@f9
    return-void

    #@fa
    .line 2495
    :cond_fa
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@fc
    const-wide/16 v17, 0x1

    #@fe
    if-eqz v0, :cond_108

    #@100
    .line 2496
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@102
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    #@104
    add-long v1, v1, v17

    #@106
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    #@108
    :cond_108
    if-eqz p2, :cond_1a4

    #@10a
    .line 2504
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@10c
    if-eqz v0, :cond_1a4

    #@10e
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@110
    if-eqz v1, :cond_1a4

    #@112
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@114
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@116
    if-eqz v0, :cond_1a4

    #@118
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@11a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@11c
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@11e
    if-eqz v0, :cond_1a4

    #@120
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@122
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@124
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@126
    if-eqz v0, :cond_1a4

    #@128
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@12a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@12c
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@12e
    if-eqz v0, :cond_1a4

    #@130
    .line 2508
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@132
    if-eqz v0, :cond_13c

    #@134
    .line 2509
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@136
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    #@138
    add-long v1, v1, v17

    #@13a
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    #@13c
    .line 2511
    :cond_13c
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@13e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@140
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@142
    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@145
    .line 2512
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@147
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@149
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@14b
    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@14e
    .line 2513
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@150
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@152
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@154
    invoke-virtual {v14, v11, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@157
    .line 2514
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@159
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@15b
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@15d
    invoke-virtual {v14, v10, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@160
    .line 2515
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@162
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@164
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@166
    invoke-virtual {v14, v9, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@169
    .line 2516
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16b
    if-eqz v0, :cond_19f

    #@16d
    if-eqz v4, :cond_186

    #@16f
    .line 2517
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    #@171
    aget-boolean v0, v0, v6

    #@173
    if-eqz v0, :cond_186

    #@175
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@178
    move-result v0

    #@179
    if-nez v0, :cond_186

    #@17b
    .line 2518
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@17d
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@17f
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@182
    move-result-object v0

    #@183
    .line 2519
    invoke-virtual {v14, v0, v12, v6, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@186
    :cond_186
    if-eqz v5, :cond_19f

    #@188
    .line 2521
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    #@18a
    aget-boolean v0, v0, v7

    #@18c
    if-eqz v0, :cond_19f

    #@18e
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    #@191
    move-result v0

    #@192
    if-nez v0, :cond_19f

    #@194
    .line 2522
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@196
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@198
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@19b
    move-result-object v0

    #@19c
    .line 2523
    invoke-virtual {v14, v0, v10, v6, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@19f
    .line 2526
    :cond_19f
    iput-boolean v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@1a1
    .line 2527
    iput-boolean v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@1a3
    return-void

    #@1a4
    .line 2530
    :cond_1a4
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@1a6
    if-eqz v0, :cond_1b0

    #@1a8
    .line 2531
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    #@1aa
    iget-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->linearSolved:J

    #@1ac
    add-long v1, v1, v17

    #@1ae
    iput-wide v1, v0, Landroidx/constraintlayout/core/Metrics;->linearSolved:J

    #@1b0
    .line 2537
    :cond_1b0
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1b2
    if-eqz v0, :cond_221

    #@1b4
    .line 2539
    invoke-direct {v15, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isChainHead(I)Z

    #@1b7
    move-result v0

    #@1b8
    if-eqz v0, :cond_1c3

    #@1ba
    .line 2540
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1bc
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@1be
    invoke-virtual {v0, v15, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    #@1c1
    move v0, v7

    #@1c2
    goto :goto_1c7

    #@1c3
    .line 2543
    :cond_1c3
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@1c6
    move-result v0

    #@1c7
    .line 2547
    :goto_1c7
    invoke-direct {v15, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isChainHead(I)Z

    #@1ca
    move-result v1

    #@1cb
    if-eqz v1, :cond_1d6

    #@1cd
    .line 2548
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1cf
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@1d1
    invoke-virtual {v1, v15, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V

    #@1d4
    move v1, v7

    #@1d5
    goto :goto_1da

    #@1d6
    .line 2551
    :cond_1d6
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    #@1d9
    move-result v1

    #@1da
    :goto_1da
    if-nez v0, :cond_1f9

    #@1dc
    if-eqz v4, :cond_1f9

    #@1de
    .line 2554
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@1e0
    if-eq v2, v3, :cond_1f9

    #@1e2
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e4
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e6
    if-nez v2, :cond_1f9

    #@1e8
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1ea
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1ec
    if-nez v2, :cond_1f9

    #@1ee
    .line 2559
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1f0
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1f2
    invoke-virtual {v14, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@1f5
    move-result-object v2

    #@1f6
    .line 2560
    invoke-virtual {v14, v2, v12, v6, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@1f9
    :cond_1f9
    if-nez v1, :cond_21c

    #@1fb
    if-eqz v5, :cond_21c

    #@1fd
    .line 2563
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@1ff
    if-eq v2, v3, :cond_21c

    #@201
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@203
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@205
    if-nez v2, :cond_21c

    #@207
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@209
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@20b
    if-nez v2, :cond_21c

    #@20d
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@20f
    if-nez v2, :cond_21c

    #@211
    .line 2568
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@213
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@215
    invoke-virtual {v14, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@218
    move-result-object v2

    #@219
    .line 2569
    invoke-virtual {v14, v2, v10, v6, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@21c
    :cond_21c
    move/from16 v29, v0

    #@21e
    move/from16 v28, v1

    #@220
    goto :goto_225

    #@221
    :cond_221
    move/from16 v28, v6

    #@223
    move/from16 v29, v28

    #@225
    .line 2573
    :goto_225
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@227
    .line 2574
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@229
    if-ge v0, v1, :cond_22c

    #@22b
    move v0, v1

    #@22c
    .line 2577
    :cond_22c
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@22e
    .line 2578
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@230
    if-ge v1, v2, :cond_233

    #@232
    move v1, v2

    #@233
    .line 2583
    :cond_233
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@235
    aget-object v2, v2, v6

    #@237
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@239
    if-eq v2, v8, :cond_23d

    #@23b
    move v2, v7

    #@23c
    goto :goto_23e

    #@23d
    :cond_23d
    move v2, v6

    #@23e
    .line 2585
    :goto_23e
    iget-object v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@240
    aget-object v8, v8, v7

    #@242
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@244
    if-eq v8, v7, :cond_248

    #@246
    const/4 v7, 0x1

    #@247
    goto :goto_249

    #@248
    :cond_248
    move v7, v6

    #@249
    .line 2591
    :goto_249
    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    #@24b
    iput v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@24d
    .line 2592
    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@24f
    iput v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@251
    .line 2594
    iget v6, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@253
    .line 2595
    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@255
    const/16 v22, 0x0

    #@257
    cmpl-float v8, v8, v22

    #@259
    move/from16 v22, v0

    #@25b
    if-lez v8, :cond_2fc

    #@25d
    .line 2597
    iget v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@25f
    const/16 v0, 0x8

    #@261
    if-eq v8, v0, :cond_2fc

    #@263
    .line 2599
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@265
    const/4 v8, 0x0

    #@266
    aget-object v0, v0, v8

    #@268
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@26a
    if-ne v0, v8, :cond_26f

    #@26c
    if-nez v6, :cond_26f

    #@26e
    const/4 v6, 0x3

    #@26f
    .line 2603
    :cond_26f
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@271
    const/4 v8, 0x1

    #@272
    aget-object v0, v0, v8

    #@274
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@276
    if-ne v0, v8, :cond_27b

    #@278
    if-nez v3, :cond_27b

    #@27a
    const/4 v3, 0x3

    #@27b
    .line 2608
    :cond_27b
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@27d
    const/4 v8, 0x0

    #@27e
    aget-object v0, v0, v8

    #@280
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@282
    if-ne v0, v8, :cond_296

    #@284
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@286
    const/4 v8, 0x1

    #@287
    aget-object v0, v0, v8

    #@289
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@28b
    if-ne v0, v8, :cond_296

    #@28d
    const/4 v0, 0x3

    #@28e
    if-ne v6, v0, :cond_296

    #@290
    if-ne v3, v0, :cond_296

    #@292
    .line 2612
    invoke-virtual {v15, v4, v5, v2, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setupDimensionRatio(ZZZZ)V

    #@295
    goto :goto_2f2

    #@296
    .line 2613
    :cond_296
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@298
    const/4 v2, 0x0

    #@299
    aget-object v0, v0, v2

    #@29b
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@29d
    const/16 v17, 0x4

    #@29f
    if-ne v0, v7, :cond_2c1

    #@2a1
    const/4 v0, 0x3

    #@2a2
    if-ne v6, v0, :cond_2c1

    #@2a4
    .line 2615
    iput v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@2a6
    .line 2616
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@2a8
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@2aa
    int-to-float v2, v2

    #@2ab
    mul-float/2addr v0, v2

    #@2ac
    float-to-int v0, v0

    #@2ad
    .line 2617
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2af
    const/4 v7, 0x1

    #@2b0
    aget-object v2, v2, v7

    #@2b2
    sget-object v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2b4
    move/from16 v30, v1

    #@2b6
    move/from16 v31, v3

    #@2b8
    if-eq v2, v8, :cond_2bd

    #@2ba
    move/from16 v32, v17

    #@2bc
    goto :goto_304

    #@2bd
    :cond_2bd
    move/from16 v32, v6

    #@2bf
    move v8, v7

    #@2c0
    goto :goto_305

    #@2c1
    :cond_2c1
    const/4 v7, 0x1

    #@2c2
    .line 2621
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2c4
    aget-object v0, v0, v7

    #@2c6
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2c8
    if-ne v0, v2, :cond_2f2

    #@2ca
    const/4 v0, 0x3

    #@2cb
    if-ne v3, v0, :cond_2f2

    #@2cd
    .line 2623
    iput v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@2cf
    .line 2624
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    #@2d1
    const/4 v1, -0x1

    #@2d2
    if-ne v0, v1, :cond_2db

    #@2d4
    const/high16 v0, 0x3f800000    # 1.0f

    #@2d6
    .line 2626
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@2d8
    div-float/2addr v0, v1

    #@2d9
    iput v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@2db
    .line 2628
    :cond_2db
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@2dd
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@2df
    int-to-float v1, v1

    #@2e0
    mul-float/2addr v0, v1

    #@2e1
    float-to-int v1, v0

    #@2e2
    .line 2629
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2e4
    const/4 v2, 0x0

    #@2e5
    aget-object v0, v0, v2

    #@2e7
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2e9
    if-eq v0, v2, :cond_2f2

    #@2eb
    move/from16 v30, v1

    #@2ed
    move/from16 v32, v6

    #@2ef
    move/from16 v31, v17

    #@2f1
    goto :goto_302

    #@2f2
    :cond_2f2
    :goto_2f2
    move/from16 v30, v1

    #@2f4
    move/from16 v31, v3

    #@2f6
    move/from16 v32, v6

    #@2f8
    move/from16 v0, v22

    #@2fa
    const/4 v8, 0x1

    #@2fb
    goto :goto_305

    #@2fc
    :cond_2fc
    move/from16 v30, v1

    #@2fe
    move/from16 v31, v3

    #@300
    move/from16 v32, v6

    #@302
    :goto_302
    move/from16 v0, v22

    #@304
    :goto_304
    const/4 v8, 0x0

    #@305
    .line 2636
    :goto_305
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    #@307
    const/4 v2, 0x0

    #@308
    aput v32, v1, v2

    #@30a
    const/4 v2, 0x1

    #@30b
    .line 2637
    aput v31, v1, v2

    #@30d
    .line 2638
    iput-boolean v8, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    #@30f
    if-eqz v8, :cond_31b

    #@311
    .line 2640
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@313
    const/4 v2, -0x1

    #@314
    if-eqz v1, :cond_318

    #@316
    if-ne v1, v2, :cond_31c

    #@318
    :cond_318
    const/16 v17, 0x1

    #@31a
    goto :goto_31e

    #@31b
    :cond_31b
    const/4 v2, -0x1

    #@31c
    :cond_31c
    const/16 v17, 0x0

    #@31e
    :goto_31e
    if-eqz v8, :cond_32a

    #@320
    .line 2643
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@322
    const/4 v3, 0x1

    #@323
    if-eq v1, v3, :cond_327

    #@325
    if-ne v1, v2, :cond_32a

    #@327
    :cond_327
    const/16 v33, 0x1

    #@329
    goto :goto_32c

    #@32a
    :cond_32a
    const/16 v33, 0x0

    #@32c
    .line 2647
    :goto_32c
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@32e
    const/4 v2, 0x0

    #@32f
    aget-object v1, v1, v2

    #@331
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@333
    if-ne v1, v2, :cond_33c

    #@335
    instance-of v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@337
    if-eqz v1, :cond_33c

    #@339
    const/16 v22, 0x1

    #@33b
    goto :goto_33e

    #@33c
    :cond_33c
    const/16 v22, 0x0

    #@33e
    :goto_33e
    if-eqz v22, :cond_343

    #@340
    const/16 v23, 0x0

    #@342
    goto :goto_345

    #@343
    :cond_343
    move/from16 v23, v0

    #@345
    .line 2654
    :goto_345
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@347
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@34a
    move-result v0

    #@34b
    const/4 v1, 0x1

    #@34c
    xor-int/lit8 v34, v0, 0x1

    #@34e
    .line 2658
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    #@350
    const/4 v2, 0x0

    #@351
    aget-boolean v27, v0, v2

    #@353
    .line 2659
    aget-boolean v35, v0, v1

    #@355
    .line 2661
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    #@357
    const/16 v36, 0x0

    #@359
    const/4 v7, 0x2

    #@35a
    if-eq v0, v7, :cond_44b

    #@35c
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@35e
    if-nez v0, :cond_44b

    #@360
    if-eqz p2, :cond_3ab

    #@362
    .line 2662
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@364
    if-eqz v0, :cond_3ab

    #@366
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@368
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@36a
    if-eqz v0, :cond_3ab

    #@36c
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@36e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@370
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@372
    if-nez v0, :cond_375

    #@374
    goto :goto_3ab

    #@375
    :cond_375
    if-eqz p2, :cond_44b

    #@377
    .line 2670
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@379
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@37b
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@37d
    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@380
    .line 2671
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@382
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@384
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@386
    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@389
    .line 2672
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@38b
    if-eqz v0, :cond_44b

    #@38d
    if-eqz v4, :cond_44b

    #@38f
    .line 2673
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    #@391
    const/4 v1, 0x0

    #@392
    aget-boolean v0, v0, v1

    #@394
    if-eqz v0, :cond_44b

    #@396
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@399
    move-result v0

    #@39a
    if-nez v0, :cond_44b

    #@39c
    .line 2677
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@39e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3a0
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@3a3
    move-result-object v0

    #@3a4
    const/16 v3, 0x8

    #@3a6
    .line 2678
    invoke-virtual {v14, v0, v12, v1, v3}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@3a9
    goto/16 :goto_44b

    #@3ab
    :cond_3ab
    :goto_3ab
    const/16 v3, 0x8

    #@3ad
    .line 2663
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3af
    if-eqz v0, :cond_3ba

    #@3b1
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3b3
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@3b6
    move-result-object v0

    #@3b7
    move-object/from16 v16, v0

    #@3b9
    goto :goto_3bc

    #@3ba
    :cond_3ba
    move-object/from16 v16, v36

    #@3bc
    .line 2664
    :goto_3bc
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3be
    if-eqz v0, :cond_3c8

    #@3c0
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3c2
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@3c5
    move-result-object v0

    #@3c6
    move-object v6, v0

    #@3c7
    goto :goto_3ca

    #@3c8
    :cond_3c8
    move-object/from16 v6, v36

    #@3ca
    .line 2665
    :goto_3ca
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    #@3cc
    const/16 v20, 0x0

    #@3ce
    aget-boolean v21, v0, v20

    #@3d0
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3d2
    aget-object v37, v0, v20

    #@3d4
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3d6
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3d8
    move-object/from16 v39, v2

    #@3da
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@3dc
    move/from16 v40, v2

    #@3de
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@3e0
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@3e2
    aget v42, v3, v20

    #@3e4
    iget v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@3e6
    const/16 v18, 0x1

    #@3e8
    aget-object v0, v0, v18

    #@3ea
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3ec
    if-ne v0, v7, :cond_3f1

    #@3ee
    move/from16 v44, v18

    #@3f0
    goto :goto_3f3

    #@3f1
    :cond_3f1
    move/from16 v44, v20

    #@3f3
    :goto_3f3
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@3f5
    move/from16 v24, v0

    #@3f7
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@3f9
    move/from16 v25, v0

    #@3fb
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    #@3fd
    move/from16 v26, v0

    #@3ff
    move-object/from16 v0, p0

    #@401
    move-object/from16 v45, v1

    #@403
    move-object/from16 v1, p1

    #@405
    move-object/from16 v19, v39

    #@407
    move/from16 v38, v40

    #@409
    const/4 v7, 0x5

    #@40a
    move/from16 v39, v2

    #@40c
    const/4 v2, 0x1

    #@40d
    move/from16 v40, v3

    #@40f
    move v3, v4

    #@410
    move/from16 v41, v4

    #@412
    move v4, v5

    #@413
    move/from16 v46, v5

    #@415
    move/from16 v5, v21

    #@417
    const/16 v18, 0x2

    #@419
    move-object/from16 v7, v16

    #@41b
    move/from16 v43, v8

    #@41d
    move-object/from16 v8, v37

    #@41f
    move-object/from16 v47, v9

    #@421
    move/from16 v9, v22

    #@423
    move-object/from16 v48, v10

    #@425
    move-object/from16 v10, v45

    #@427
    move-object/from16 v49, v11

    #@429
    move-object/from16 v11, v19

    #@42b
    move-object/from16 v37, v12

    #@42d
    move/from16 v12, v38

    #@42f
    move-object/from16 v38, v13

    #@431
    move/from16 v13, v23

    #@433
    move/from16 v14, v39

    #@435
    move/from16 v15, v42

    #@437
    move/from16 v16, v40

    #@439
    move/from16 v18, v44

    #@43b
    move/from16 v19, v29

    #@43d
    move/from16 v20, v28

    #@43f
    move/from16 v21, v27

    #@441
    move/from16 v22, v32

    #@443
    move/from16 v23, v31

    #@445
    move/from16 v27, v34

    #@447
    invoke-direct/range {v0 .. v27}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    #@44a
    goto :goto_45b

    #@44b
    :cond_44b
    :goto_44b
    move/from16 v41, v4

    #@44d
    move/from16 v46, v5

    #@44f
    move/from16 v43, v8

    #@451
    move-object/from16 v47, v9

    #@453
    move-object/from16 v48, v10

    #@455
    move-object/from16 v49, v11

    #@457
    move-object/from16 v37, v12

    #@459
    move-object/from16 v38, v13

    #@45b
    :goto_45b
    if-eqz p2, :cond_4c7

    #@45d
    move-object/from16 v15, p0

    #@45f
    .line 2685
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@461
    if-eqz v0, :cond_4ba

    #@463
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@465
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@467
    if-eqz v0, :cond_4ba

    #@469
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@46b
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@46d
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@46f
    if-eqz v0, :cond_4ba

    #@471
    .line 2686
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@473
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@475
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@477
    move-object/from16 v14, p1

    #@479
    move-object/from16 v13, v49

    #@47b
    invoke-virtual {v14, v13, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@47e
    .line 2687
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@480
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@482
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@484
    move-object/from16 v12, v48

    #@486
    invoke-virtual {v14, v12, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@489
    .line 2688
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@48b
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->baseline:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@48d
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@48f
    move-object/from16 v1, v47

    #@491
    invoke-virtual {v14, v1, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    #@494
    .line 2689
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@496
    if-eqz v0, :cond_4b4

    #@498
    if-nez v28, :cond_4b4

    #@49a
    if-eqz v46, :cond_4b4

    #@49c
    .line 2690
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    #@49e
    const/4 v11, 0x1

    #@49f
    aget-boolean v2, v2, v11

    #@4a1
    if-eqz v2, :cond_4b0

    #@4a3
    .line 2694
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4a5
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@4a8
    move-result-object v0

    #@4a9
    const/16 v2, 0x8

    #@4ab
    const/4 v10, 0x0

    #@4ac
    .line 2695
    invoke-virtual {v14, v0, v12, v10, v2}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@4af
    goto :goto_4b8

    #@4b0
    :cond_4b0
    const/16 v2, 0x8

    #@4b2
    const/4 v10, 0x0

    #@4b3
    goto :goto_4b8

    #@4b4
    :cond_4b4
    const/16 v2, 0x8

    #@4b6
    const/4 v10, 0x0

    #@4b7
    const/4 v11, 0x1

    #@4b8
    :goto_4b8
    move v7, v10

    #@4b9
    goto :goto_4d6

    #@4ba
    :cond_4ba
    move-object/from16 v14, p1

    #@4bc
    move-object/from16 v1, v47

    #@4be
    move-object/from16 v12, v48

    #@4c0
    move-object/from16 v13, v49

    #@4c2
    const/16 v2, 0x8

    #@4c4
    const/4 v10, 0x0

    #@4c5
    const/4 v11, 0x1

    #@4c6
    goto :goto_4d5

    #@4c7
    :cond_4c7
    const/16 v2, 0x8

    #@4c9
    const/4 v10, 0x0

    #@4ca
    const/4 v11, 0x1

    #@4cb
    move-object/from16 v15, p0

    #@4cd
    move-object/from16 v14, p1

    #@4cf
    move-object/from16 v1, v47

    #@4d1
    move-object/from16 v12, v48

    #@4d3
    move-object/from16 v13, v49

    #@4d5
    :goto_4d5
    move v7, v11

    #@4d6
    .line 2700
    :goto_4d6
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    #@4d8
    const/4 v3, 0x2

    #@4d9
    if-ne v0, v3, :cond_4dd

    #@4db
    move v6, v10

    #@4dc
    goto :goto_4de

    #@4dd
    :cond_4dd
    move v6, v7

    #@4de
    :goto_4de
    if-eqz v6, :cond_5c0

    #@4e0
    .line 2709
    iget-boolean v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@4e2
    if-nez v0, :cond_5c0

    #@4e4
    .line 2711
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@4e6
    aget-object v0, v0, v11

    #@4e8
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@4ea
    if-ne v0, v3, :cond_4f2

    #@4ec
    instance-of v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@4ee
    if-eqz v0, :cond_4f2

    #@4f0
    move v9, v11

    #@4f1
    goto :goto_4f3

    #@4f2
    :cond_4f2
    move v9, v10

    #@4f3
    :goto_4f3
    if-eqz v9, :cond_4f7

    #@4f5
    move/from16 v30, v10

    #@4f7
    .line 2717
    :cond_4f7
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@4f9
    if-eqz v0, :cond_503

    #@4fb
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4fd
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@500
    move-result-object v0

    #@501
    move-object v7, v0

    #@502
    goto :goto_505

    #@503
    :cond_503
    move-object/from16 v7, v36

    #@505
    .line 2718
    :goto_505
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@507
    if-eqz v0, :cond_511

    #@509
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@50b
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@50e
    move-result-object v0

    #@50f
    move-object v6, v0

    #@510
    goto :goto_513

    #@511
    :cond_511
    move-object/from16 v6, v36

    #@513
    .line 2720
    :goto_513
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    #@515
    if-gtz v0, :cond_51b

    #@517
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@519
    if-ne v0, v2, :cond_55d

    #@51b
    .line 2722
    :cond_51b
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@51d
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@51f
    if-eqz v0, :cond_548

    #@521
    .line 2723
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    #@524
    move-result v0

    #@525
    invoke-virtual {v14, v1, v13, v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@528
    .line 2724
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@52a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@52c
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@52f
    move-result-object v0

    #@530
    .line 2725
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@532
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@535
    move-result v3

    #@536
    .line 2726
    invoke-virtual {v14, v1, v0, v3, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@539
    if-eqz v46, :cond_545

    #@53b
    .line 2732
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@53d
    invoke-virtual {v14, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@540
    move-result-object v0

    #@541
    const/4 v1, 0x5

    #@542
    .line 2734
    invoke-virtual {v14, v7, v0, v10, v1}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    #@545
    :cond_545
    move/from16 v27, v10

    #@547
    goto :goto_55f

    #@548
    .line 2736
    :cond_548
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@54a
    if-ne v0, v2, :cond_556

    #@54c
    .line 2738
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@54e
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@551
    move-result v0

    #@552
    invoke-virtual {v14, v1, v13, v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@555
    goto :goto_55d

    #@556
    .line 2740
    :cond_556
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    #@559
    move-result v0

    #@55a
    invoke-virtual {v14, v1, v13, v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    #@55d
    :cond_55d
    :goto_55d
    move/from16 v27, v34

    #@55f
    .line 2744
    :goto_55f
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    #@561
    aget-boolean v5, v0, v11

    #@563
    iget-object v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@565
    aget-object v8, v0, v11

    #@567
    iget-object v4, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@569
    iget-object v3, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@56b
    iget v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@56d
    iget v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@56f
    iget-object v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@571
    aget v16, v10, v11

    #@573
    iget v10, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@575
    const/16 v17, 0x0

    #@577
    aget-object v0, v0, v17

    #@579
    sget-object v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@57b
    if-ne v0, v11, :cond_580

    #@57d
    const/16 v18, 0x1

    #@57f
    goto :goto_582

    #@580
    :cond_580
    move/from16 v18, v17

    #@582
    :goto_582
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@584
    move/from16 v24, v0

    #@586
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@588
    move/from16 v25, v0

    #@58a
    iget v0, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    #@58c
    move/from16 v26, v0

    #@58e
    move-object/from16 v0, p0

    #@590
    move/from16 v19, v1

    #@592
    move-object/from16 v1, p1

    #@594
    move/from16 v20, v2

    #@596
    const/4 v2, 0x0

    #@597
    move-object v11, v3

    #@598
    move/from16 v3, v46

    #@59a
    move-object/from16 v21, v4

    #@59c
    move/from16 v4, v41

    #@59e
    move/from16 v17, v10

    #@5a0
    move-object/from16 v10, v21

    #@5a2
    move-object/from16 v34, v12

    #@5a4
    move/from16 v12, v19

    #@5a6
    move-object/from16 v36, v13

    #@5a8
    move/from16 v13, v30

    #@5aa
    move/from16 v14, v20

    #@5ac
    move/from16 v15, v16

    #@5ae
    move/from16 v16, v17

    #@5b0
    move/from16 v17, v33

    #@5b2
    move/from16 v19, v28

    #@5b4
    move/from16 v20, v29

    #@5b6
    move/from16 v21, v35

    #@5b8
    move/from16 v22, v31

    #@5ba
    move/from16 v23, v32

    #@5bc
    invoke-direct/range {v0 .. v27}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/core/LinearSystem;ZZZZLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIIFZZZZZIIIIFZ)V

    #@5bf
    goto :goto_5c4

    #@5c0
    :cond_5c0
    move-object/from16 v34, v12

    #@5c2
    move-object/from16 v36, v13

    #@5c4
    :goto_5c4
    if-eqz v43, :cond_5f1

    #@5c6
    const/16 v6, 0x8

    #@5c8
    move-object/from16 v7, p0

    #@5ca
    .line 2752
    iget v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@5cc
    const/4 v1, 0x1

    #@5cd
    if-ne v0, v1, :cond_5df

    #@5cf
    .line 2753
    iget v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@5d1
    move-object/from16 v0, p1

    #@5d3
    move-object/from16 v1, v34

    #@5d5
    move-object/from16 v2, v36

    #@5d7
    move-object/from16 v3, v37

    #@5d9
    move-object/from16 v4, v38

    #@5db
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/LinearSystem;->addRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V

    #@5de
    goto :goto_5f3

    #@5df
    .line 2755
    :cond_5df
    iget v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@5e1
    const/16 v6, 0x8

    #@5e3
    move-object/from16 v0, p1

    #@5e5
    move-object/from16 v1, v37

    #@5e7
    move-object/from16 v2, v38

    #@5e9
    move-object/from16 v3, v34

    #@5eb
    move-object/from16 v4, v36

    #@5ed
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/core/LinearSystem;->addRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V

    #@5f0
    goto :goto_5f3

    #@5f1
    :cond_5f1
    move-object/from16 v7, p0

    #@5f3
    .line 2759
    :goto_5f3
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@5f5
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@5f8
    move-result v0

    #@5f9
    if-eqz v0, :cond_61b

    #@5fb
    .line 2760
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@5fd
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@600
    move-result-object v0

    #@601
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@604
    move-result-object v0

    #@605
    iget v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    #@607
    const/high16 v2, 0x42b40000    # 90.0f

    #@609
    add-float/2addr v1, v2

    #@60a
    float-to-double v1, v1

    #@60b
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    #@60e
    move-result-wide v1

    #@60f
    double-to-float v1, v1

    #@610
    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@612
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@615
    move-result v2

    #@616
    move-object/from16 v3, p1

    #@618
    invoke-virtual {v3, v7, v0, v1, v2}, Landroidx/constraintlayout/core/LinearSystem;->addCenterPoint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V

    #@61b
    :cond_61b
    const/4 v0, 0x0

    #@61c
    .line 2768
    iput-boolean v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@61e
    .line 2769
    iput-boolean v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@620
    return-void
.end method

.method public allowedInBarrier()Z
    .registers 3

    #@0
    .line 1846
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@2
    const/16 v1, 0x8

    #@4
    if-eq v0, v1, :cond_8

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

.method public connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 1895
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    #@4
    return-void
.end method

.method public connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V
    .registers 8

    #@0
    .line 1909
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2
    const/4 v1, 0x0

    #@3
    if-ne p1, v0, :cond_e1

    #@5
    .line 1912
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@7
    if-ne p3, p1, :cond_9e

    #@9
    .line 1913
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@b
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    move-result-object p1

    #@f
    .line 1914
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@11
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14
    move-result-object p3

    #@15
    .line 1915
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@17
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a
    move-result-object p4

    #@1b
    .line 1916
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1d
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@20
    move-result-object v0

    #@21
    const/4 v2, 0x1

    #@22
    if-eqz p1, :cond_2a

    #@24
    .line 1919
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@27
    move-result p1

    #@28
    if-nez p1, :cond_32

    #@2a
    :cond_2a
    if-eqz p3, :cond_34

    #@2c
    .line 1920
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@2f
    move-result p1

    #@30
    if-eqz p1, :cond_34

    #@32
    :cond_32
    move p1, v1

    #@33
    goto :goto_43

    #@34
    .line 1923
    :cond_34
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@36
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@38
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    #@3b
    .line 1925
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@3d
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@3f
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    #@42
    move p1, v2

    #@43
    :goto_43
    if-eqz p4, :cond_4b

    #@45
    .line 1929
    invoke-virtual {p4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@48
    move-result p3

    #@49
    if-nez p3, :cond_53

    #@4b
    :cond_4b
    if-eqz v0, :cond_55

    #@4d
    .line 1930
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@50
    move-result p3

    #@51
    if-eqz p3, :cond_55

    #@53
    :cond_53
    move v2, v1

    #@54
    goto :goto_63

    #@55
    .line 1933
    :cond_55
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@57
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@59
    invoke-virtual {p0, p3, p2, p4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    #@5c
    .line 1935
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@5e
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@60
    invoke-virtual {p0, p3, p2, p4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    #@63
    :goto_63
    if-eqz p1, :cond_78

    #@65
    if-eqz v2, :cond_78

    #@67
    .line 1940
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@69
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6c
    move-result-object p1

    #@6d
    .line 1941
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@6f
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@72
    move-result-object p2

    #@73
    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@76
    goto/16 :goto_240

    #@78
    :cond_78
    if-eqz p1, :cond_8b

    #@7a
    .line 1943
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@7c
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7f
    move-result-object p1

    #@80
    .line 1944
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@82
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@85
    move-result-object p2

    #@86
    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@89
    goto/16 :goto_240

    #@8b
    :cond_8b
    if-eqz v2, :cond_240

    #@8d
    .line 1946
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@8f
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@92
    move-result-object p1

    #@93
    .line 1947
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@95
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@98
    move-result-object p2

    #@99
    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@9c
    goto/16 :goto_240

    #@9e
    .line 1949
    :cond_9e
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@a0
    if-eq p3, p1, :cond_c8

    #@a2
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@a4
    if-ne p3, p1, :cond_a7

    #@a6
    goto :goto_c8

    #@a7
    .line 1957
    :cond_a7
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@a9
    if-eq p3, p1, :cond_af

    #@ab
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@ad
    if-ne p3, p1, :cond_240

    #@af
    .line 1959
    :cond_af
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@b1
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    #@b4
    .line 1961
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@b6
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    #@b9
    .line 1963
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@bb
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@be
    move-result-object p1

    #@bf
    .line 1964
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c2
    move-result-object p2

    #@c3
    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@c6
    goto/16 :goto_240

    #@c8
    .line 1951
    :cond_c8
    :goto_c8
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@ca
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    #@cd
    .line 1953
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@cf
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    #@d2
    .line 1955
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@d4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@d7
    move-result-object p1

    #@d8
    .line 1956
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@db
    move-result-object p2

    #@dc
    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@df
    goto/16 :goto_240

    #@e1
    .line 1966
    :cond_e1
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@e3
    if-ne p1, v0, :cond_10e

    #@e5
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@e7
    if-eq p3, v0, :cond_ed

    #@e9
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@eb
    if-ne p3, v0, :cond_10e

    #@ed
    .line 1969
    :cond_ed
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@ef
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@f2
    move-result-object p1

    #@f3
    .line 1970
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@f6
    move-result-object p2

    #@f7
    .line 1971
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@f9
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@fc
    move-result-object p3

    #@fd
    .line 1972
    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@100
    .line 1973
    invoke-virtual {p3, p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@103
    .line 1974
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@105
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@108
    move-result-object p1

    #@109
    .line 1975
    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@10c
    goto/16 :goto_240

    #@10e
    .line 1976
    :cond_10e
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@110
    if-ne p1, v0, :cond_13b

    #@112
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@114
    if-eq p3, v0, :cond_11a

    #@116
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@118
    if-ne p3, v0, :cond_13b

    #@11a
    .line 1979
    :cond_11a
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@11d
    move-result-object p1

    #@11e
    .line 1980
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@120
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@123
    move-result-object p2

    #@124
    .line 1981
    invoke-virtual {p2, p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@127
    .line 1982
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@129
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@12c
    move-result-object p2

    #@12d
    .line 1983
    invoke-virtual {p2, p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@130
    .line 1984
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@132
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@135
    move-result-object p2

    #@136
    .line 1985
    invoke-virtual {p2, p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@139
    goto/16 :goto_240

    #@13b
    .line 1986
    :cond_13b
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@13d
    if-ne p1, v0, :cond_170

    #@13f
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@141
    if-ne p3, v0, :cond_170

    #@143
    .line 1989
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@145
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@148
    move-result-object p1

    #@149
    .line 1990
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@14b
    invoke-virtual {p2, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14e
    move-result-object p4

    #@14f
    .line 1991
    invoke-virtual {p1, p4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@152
    .line 1992
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@154
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@157
    move-result-object p1

    #@158
    .line 1993
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@15a
    invoke-virtual {p2, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@15d
    move-result-object p4

    #@15e
    .line 1994
    invoke-virtual {p1, p4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@161
    .line 1995
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@163
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@166
    move-result-object p1

    #@167
    .line 1996
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16a
    move-result-object p2

    #@16b
    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@16e
    goto/16 :goto_240

    #@170
    .line 1997
    :cond_170
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@172
    if-ne p1, v0, :cond_1a5

    #@174
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@176
    if-ne p3, v0, :cond_1a5

    #@178
    .line 2000
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@17a
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@17d
    move-result-object p1

    #@17e
    .line 2001
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@180
    invoke-virtual {p2, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@183
    move-result-object p4

    #@184
    .line 2002
    invoke-virtual {p1, p4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@187
    .line 2003
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@189
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18c
    move-result-object p1

    #@18d
    .line 2004
    sget-object p4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@18f
    invoke-virtual {p2, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@192
    move-result-object p4

    #@193
    .line 2005
    invoke-virtual {p1, p4, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@196
    .line 2006
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@198
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19b
    move-result-object p1

    #@19c
    .line 2007
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19f
    move-result-object p2

    #@1a0
    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@1a3
    goto/16 :goto_240

    #@1a5
    .line 2009
    :cond_1a5
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a8
    move-result-object v0

    #@1a9
    .line 2010
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1ac
    move-result-object p2

    #@1ad
    .line 2011
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isValidConnection(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)Z

    #@1b0
    move-result p3

    #@1b1
    if-eqz p3, :cond_240

    #@1b3
    .line 2014
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1b5
    if-ne p1, p3, :cond_1ce

    #@1b7
    .line 2015
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1b9
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1bc
    move-result-object p1

    #@1bd
    .line 2016
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1bf
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1c2
    move-result-object p3

    #@1c3
    if-eqz p1, :cond_1c8

    #@1c5
    .line 2018
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@1c8
    :cond_1c8
    if-eqz p3, :cond_23d

    #@1ca
    .line 2021
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@1cd
    goto :goto_23d

    #@1ce
    .line 2023
    :cond_1ce
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1d0
    if-eq p1, p3, :cond_209

    #@1d2
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1d4
    if-ne p1, p3, :cond_1d7

    #@1d6
    goto :goto_209

    #@1d7
    .line 2049
    :cond_1d7
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1d9
    if-eq p1, p3, :cond_1df

    #@1db
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1dd
    if-ne p1, p3, :cond_23d

    #@1df
    .line 2051
    :cond_1df
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1e1
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e4
    move-result-object p3

    #@1e5
    .line 2052
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e8
    move-result-object v1

    #@1e9
    if-eq v1, p2, :cond_1ee

    #@1eb
    .line 2053
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@1ee
    .line 2055
    :cond_1ee
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1f1
    move-result-object p1

    #@1f2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1f5
    move-result-object p1

    #@1f6
    .line 2056
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1f8
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1fb
    move-result-object p3

    #@1fc
    .line 2057
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@1ff
    move-result v1

    #@200
    if-eqz v1, :cond_23d

    #@202
    .line 2058
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@205
    .line 2059
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@208
    goto :goto_23d

    #@209
    .line 2025
    :cond_209
    :goto_209
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@20b
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@20e
    move-result-object p3

    #@20f
    if-eqz p3, :cond_214

    #@211
    .line 2027
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@214
    .line 2029
    :cond_214
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@216
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@219
    move-result-object p3

    #@21a
    .line 2030
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@21d
    move-result-object v1

    #@21e
    if-eq v1, p2, :cond_223

    #@220
    .line 2031
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@223
    .line 2033
    :cond_223
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@226
    move-result-object p1

    #@227
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@22a
    move-result-object p1

    #@22b
    .line 2034
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@22d
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@230
    move-result-object p3

    #@231
    .line 2035
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@234
    move-result v1

    #@235
    if-eqz v1, :cond_23d

    #@237
    .line 2036
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@23a
    .line 2037
    invoke-virtual {p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@23d
    .line 2073
    :cond_23d
    :goto_23d
    invoke-virtual {v0, p2, p4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)Z

    #@240
    :cond_240
    :goto_240
    return-void
.end method

.method public connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V
    .registers 5

    #@0
    .line 1877
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3
    move-result-object v0

    #@4
    if-ne v0, p0, :cond_15

    #@6
    .line 1878
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@11
    move-result-object p2

    #@12
    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V

    #@15
    :cond_15
    return-void
.end method

.method public connectCircularConstraint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V
    .registers 10

    #@0
    .line 885
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@4
    const/4 v5, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v2, p1

    #@7
    move v4, p3

    #@8
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V

    #@b
    .line 887
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    #@d
    return-void
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 3386
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    #@2
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    #@4
    .line 3387
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    #@6
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    #@8
    .line 3389
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@a
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@c
    .line 3390
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@e
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@10
    .line 3392
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    #@12
    iget-object v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    #@14
    const/4 v2, 0x0

    #@15
    aget v3, v1, v2

    #@17
    aput v3, v0, v2

    #@19
    const/4 v3, 0x1

    #@1a
    .line 3393
    aget v1, v1, v3

    #@1c
    aput v1, v0, v3

    #@1e
    .line 3395
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@20
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@22
    .line 3396
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@24
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@26
    .line 3397
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@28
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@2a
    .line 3398
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@2c
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@2e
    .line 3399
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    #@30
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    #@32
    .line 3400
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    #@34
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    #@36
    .line 3401
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    #@38
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    #@3a
    .line 3403
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@3c
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@3e
    .line 3404
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@40
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@42
    .line 3406
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@44
    array-length v1, v0

    #@45
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@4b
    .line 3407
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    #@4d
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    #@4f
    .line 3408
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    #@51
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    #@53
    .line 3409
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    #@55
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    #@57
    .line 3414
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@59
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@5c
    .line 3415
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@5e
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@61
    .line 3416
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@63
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@66
    .line 3417
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@68
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@6b
    .line 3418
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6d
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@70
    .line 3419
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@72
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@75
    .line 3420
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@77
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@7a
    .line 3421
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7c
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@7f
    .line 3422
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@81
    const/4 v1, 0x2

    #@82
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@85
    move-result-object v0

    #@86
    check-cast v0, [Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@88
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@8a
    .line 3423
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@8c
    const/4 v1, 0x0

    #@8d
    if-nez v0, :cond_91

    #@8f
    move-object v0, v1

    #@90
    goto :goto_99

    #@91
    :cond_91
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@93
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@96
    move-result-object v0

    #@97
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@99
    :goto_99
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@9b
    .line 3425
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@9d
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@9f
    .line 3426
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@a1
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@a3
    .line 3427
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@a5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@a7
    .line 3428
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    #@a9
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    #@ab
    .line 3430
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@ad
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@af
    .line 3431
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@b1
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@b3
    .line 3432
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    #@b5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    #@b7
    .line 3433
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    #@b9
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    #@bb
    .line 3435
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    #@bd
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    #@bf
    .line 3436
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    #@c1
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    #@c3
    .line 3438
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    #@c5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    #@c7
    .line 3439
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@c9
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@cb
    .line 3440
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@cd
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@cf
    .line 3442
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@d1
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@d3
    .line 3443
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@d5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@d7
    .line 3445
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    #@d9
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    #@db
    .line 3446
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    #@dd
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    #@df
    .line 3447
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@e1
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@e3
    .line 3448
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    #@e5
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    #@e7
    .line 3449
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    #@e9
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    #@eb
    .line 3450
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    #@ed
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    #@ef
    .line 3452
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToTop:I

    #@f1
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToTop:I

    #@f3
    .line 3453
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToLeft:I

    #@f5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToLeft:I

    #@f7
    .line 3454
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToRight:I

    #@f9
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToRight:I

    #@fb
    .line 3455
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToBottom:I

    #@fd
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDistToBottom:I

    #@ff
    .line 3456
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeftHasCentered:Z

    #@101
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeftHasCentered:Z

    #@103
    .line 3457
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRightHasCentered:Z

    #@105
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRightHasCentered:Z

    #@107
    .line 3459
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTopHasCentered:Z

    #@109
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTopHasCentered:Z

    #@10b
    .line 3460
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottomHasCentered:Z

    #@10d
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottomHasCentered:Z

    #@10f
    .line 3462
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    #@111
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    #@113
    .line 3463
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    #@115
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    #@117
    .line 3465
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    #@119
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    #@11b
    .line 3466
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    #@11d
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    #@11f
    .line 3467
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    #@121
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    #@123
    .line 3468
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    #@125
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    #@127
    .line 3469
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@129
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@12b
    aget v5, v4, v2

    #@12d
    aput v5, v0, v2

    #@12f
    .line 3470
    aget v4, v4, v3

    #@131
    aput v4, v0, v3

    #@133
    .line 3472
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@135
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@137
    aget-object v5, v4, v2

    #@139
    aput-object v5, v0, v2

    #@13b
    .line 3473
    aget-object v4, v4, v3

    #@13d
    aput-object v4, v0, v3

    #@13f
    .line 3475
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@141
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@143
    aget-object v5, v4, v2

    #@145
    aput-object v5, v0, v2

    #@147
    .line 3476
    aget-object v2, v4, v3

    #@149
    aput-object v2, v0, v3

    #@14b
    .line 3478
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@14d
    if-nez v0, :cond_151

    #@14f
    move-object v0, v1

    #@150
    goto :goto_157

    #@151
    :cond_151
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@154
    move-result-object v0

    #@155
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@157
    :goto_157
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@159
    .line 3479
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@15b
    if-nez p1, :cond_15e

    #@15d
    goto :goto_165

    #@15e
    :cond_15e
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@161
    move-result-object p1

    #@162
    move-object v1, p1

    #@163
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@165
    :goto_165
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@167
    return-void
.end method

.method public createObjectVariables(Landroidx/constraintlayout/core/LinearSystem;)V
    .registers 3

    #@0
    .line 997
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@5
    .line 998
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@a
    .line 999
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@f
    .line 1000
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@11
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@14
    .line 1001
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    #@16
    if-lez v0, :cond_1d

    #@18
    .line 1002
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@1d
    :cond_1d
    return-void
.end method

.method public ensureMeasureRequested()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 213
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    #@3
    return-void
.end method

.method public ensureWidgetRuns()V
    .registers 2

    #@0
    .line 773
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 774
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@6
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@9
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@b
    .line 776
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@d
    if-nez v0, :cond_16

    #@f
    .line 777
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@11
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@14
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@16
    :cond_16
    return-void
.end method

.method public getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .registers 4

    #@0
    .line 2172
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    #@2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    #@5
    move-result v1

    #@6
    aget v0, v0, v1

    #@8
    packed-switch v0, :pswitch_data_30

    #@b
    .line 2200
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    #@10
    move-result-object p1

    #@11
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@14
    throw v0

    #@15
    :pswitch_15
    const/4 p1, 0x0

    #@16
    return-object p1

    #@17
    .line 2192
    :pswitch_17
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19
    return-object p1

    #@1a
    .line 2189
    :pswitch_1a
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1c
    return-object p1

    #@1d
    .line 2195
    :pswitch_1d
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1f
    return-object p1

    #@20
    .line 2186
    :pswitch_20
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@22
    return-object p1

    #@23
    .line 2183
    :pswitch_23
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@25
    return-object p1

    #@26
    .line 2180
    :pswitch_26
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@28
    return-object p1

    #@29
    .line 2177
    :pswitch_29
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2b
    return-object p1

    #@2c
    .line 2174
    :pswitch_2c
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2e
    return-object p1

    #@2f
    nop

    #@30
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_15
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    #@0
    .line 1301
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getBaselineDistance()I
    .registers 2

    #@0
    .line 1282
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    #@2
    return v0
.end method

.method public getBiasPercent(I)F
    .registers 3

    #@0
    if-nez p1, :cond_5

    #@2
    .line 1259
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@4
    return p1

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    if-ne p1, v0, :cond_b

    #@8
    .line 1261
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@a
    return p1

    #@b
    :cond_b
    const/high16 p1, -0x40800000    # -1.0f

    #@d
    return p1
.end method

.method public getBottom()I
    .registers 3

    #@0
    .line 1199
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@6
    add-int/2addr v0, v1

    #@7
    return v0
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .registers 2

    #@0
    .line 1292
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getContainerItemSkip()I
    .registers 2

    #@0
    .line 1781
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    #@2
    return v0
.end method

.method public getDebugName()Ljava/lang/String;
    .registers 2

    #@0
    .line 950
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .registers 3

    #@0
    if-nez p1, :cond_7

    #@2
    .line 2229
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@5
    move-result-object p1

    #@6
    return-object p1

    #@7
    :cond_7
    const/4 v0, 0x1

    #@8
    if-ne p1, v0, :cond_f

    #@a
    .line 2231
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@d
    move-result-object p1

    #@e
    return-object p1

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    return-object p1
.end method

.method public getDimensionRatio()F
    .registers 2

    #@0
    .line 1535
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@2
    return v0
.end method

.method public getDimensionRatioSide()I
    .registers 2

    #@0
    .line 1544
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    #@2
    return v0
.end method

.method public getHasBaseline()Z
    .registers 2

    #@0
    .line 357
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    #@2
    return v0
.end method

.method public getHeight()I
    .registers 3

    #@0
    .line 1106
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@2
    const/16 v1, 0x8

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1109
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@a
    return v0
.end method

.method public getHorizontalBiasPercent()F
    .registers 2

    #@0
    .line 1237
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@2
    return v0
.end method

.method public getHorizontalChainControlWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 6

    #@0
    .line 2313
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_46

    #@7
    move-object v2, p0

    #@8
    move-object v0, v1

    #@9
    :goto_9
    if-nez v0, :cond_45

    #@b
    if-eqz v2, :cond_45

    #@d
    .line 2317
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@f
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@12
    move-result-object v3

    #@13
    if-nez v3, :cond_17

    #@15
    move-object v3, v1

    #@16
    goto :goto_1b

    #@17
    .line 2318
    :cond_17
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a
    move-result-object v3

    #@1b
    :goto_1b
    if-nez v3, :cond_1f

    #@1d
    move-object v3, v1

    #@1e
    goto :goto_23

    #@1f
    .line 2319
    :cond_1f
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@22
    move-result-object v3

    #@23
    .line 2320
    :goto_23
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@26
    move-result-object v4

    #@27
    if-ne v3, v4, :cond_2b

    #@29
    move-object v1, v2

    #@2a
    goto :goto_46

    #@2b
    :cond_2b
    if-nez v3, :cond_2f

    #@2d
    move-object v4, v1

    #@2e
    goto :goto_39

    #@2f
    .line 2324
    :cond_2f
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@31
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@38
    move-result-object v4

    #@39
    :goto_39
    if-eqz v4, :cond_43

    #@3b
    .line 2325
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3e
    move-result-object v4

    #@3f
    if-eq v4, v2, :cond_43

    #@41
    move-object v0, v2

    #@42
    goto :goto_9

    #@43
    :cond_43
    move-object v2, v3

    #@44
    goto :goto_9

    #@45
    :cond_45
    move-object v1, v0

    #@46
    :cond_46
    :goto_46
    return-object v1
.end method

.method public getHorizontalChainStyle()I
    .registers 2

    #@0
    .line 1819
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    #@2
    return v0
.end method

.method public getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .registers 3

    #@0
    .line 2209
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public getHorizontalMargin()I
    .registers 3

    #@0
    .line 1207
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_8

    #@5
    .line 1208
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@7
    add-int/2addr v1, v0

    #@8
    .line 1210
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a
    if-eqz v0, :cond_f

    #@c
    .line 1211
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@e
    add-int/2addr v1, v0

    #@f
    :cond_f
    return v1
.end method

.method public getLastHorizontalMeasureSpec()I
    .registers 2

    #@0
    .line 400
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    #@2
    return v0
.end method

.method public getLastVerticalMeasureSpec()I
    .registers 2

    #@0
    .line 401
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    #@2
    return v0
.end method

.method public getLeft()I
    .registers 2

    #@0
    .line 1172
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getLength(I)I
    .registers 3

    #@0
    if-nez p1, :cond_7

    #@2
    .line 1120
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@5
    move-result p1

    #@6
    return p1

    #@7
    :cond_7
    const/4 v0, 0x1

    #@8
    if-ne p1, v0, :cond_f

    #@a
    .line 1122
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@d
    move-result p1

    #@e
    return p1

    #@f
    :cond_f
    const/4 p1, 0x0

    #@10
    return p1
.end method

.method public getMaxHeight()I
    .registers 3

    #@0
    .line 321
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@2
    const/4 v1, 0x1

    #@3
    aget v0, v0, v1

    #@5
    return v0
.end method

.method public getMaxWidth()I
    .registers 3

    #@0
    .line 325
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@2
    const/4 v1, 0x0

    #@3
    aget v0, v0, v1

    #@5
    return v0
.end method

.method public getMinHeight()I
    .registers 2

    #@0
    .line 1163
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@2
    return v0
.end method

.method public getMinWidth()I
    .registers 2

    #@0
    .line 1154
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@2
    return v0
.end method

.method public getNextChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 3

    #@0
    if-nez p1, :cond_17

    #@2
    .line 2295
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6
    if-eqz p1, :cond_2f

    #@8
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@10
    if-ne p1, v0, :cond_2f

    #@12
    .line 2296
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16
    return-object p1

    #@17
    :cond_17
    const/4 v0, 0x1

    #@18
    if-ne p1, v0, :cond_2f

    #@1a
    .line 2299
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1c
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e
    if-eqz p1, :cond_2f

    #@20
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@22
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@24
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@26
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@28
    if-ne p1, v0, :cond_2f

    #@2a
    .line 2300
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2c
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2e
    return-object p1

    #@2f
    :cond_2f
    const/4 p1, 0x0

    #@30
    return-object p1
.end method

.method public getOptimizerWrapHeight()I
    .registers 5

    #@0
    .line 1083
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@2
    .line 1084
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@4
    const/4 v2, 0x1

    #@5
    aget-object v1, v1, v2

    #@7
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@9
    if-ne v1, v3, :cond_25

    #@b
    .line 1085
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@d
    if-ne v1, v2, :cond_16

    #@f
    .line 1086
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@11
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v0

    #@15
    goto :goto_1e

    #@16
    .line 1087
    :cond_16
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@18
    if-lez v0, :cond_1d

    #@1a
    .line 1089
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 v0, 0x0

    #@1e
    .line 1093
    :goto_1e
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@20
    if-lez v1, :cond_25

    #@22
    if-ge v1, v0, :cond_25

    #@24
    move v0, v1

    #@25
    :cond_25
    return v0
.end method

.method public getOptimizerWrapWidth()I
    .registers 5

    #@0
    .line 1065
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@2
    .line 1066
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@4
    const/4 v2, 0x0

    #@5
    aget-object v1, v1, v2

    #@7
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@9
    if-ne v1, v3, :cond_26

    #@b
    .line 1067
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@d
    const/4 v3, 0x1

    #@e
    if-ne v1, v3, :cond_17

    #@10
    .line 1068
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@12
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v0

    #@16
    goto :goto_1f

    #@17
    .line 1069
    :cond_17
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@19
    if-lez v0, :cond_1e

    #@1b
    .line 1071
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    move v0, v2

    #@1f
    .line 1075
    :goto_1f
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@21
    if-lez v1, :cond_26

    #@23
    if-ge v1, v0, :cond_26

    #@25
    move v0, v1

    #@26
    :cond_26
    return v0
.end method

.method public getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 2

    #@0
    .line 829
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    return-object v0
.end method

.method public getPreviousChainMember(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 3

    #@0
    if-nez p1, :cond_17

    #@2
    .line 2276
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6
    if-eqz p1, :cond_2f

    #@8
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@10
    if-ne p1, v0, :cond_2f

    #@12
    .line 2277
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16
    return-object p1

    #@17
    :cond_17
    const/4 v0, 0x1

    #@18
    if-ne p1, v0, :cond_2f

    #@1a
    .line 2280
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1c
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e
    if-eqz p1, :cond_2f

    #@20
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@22
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@24
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@26
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@28
    if-ne p1, v0, :cond_2f

    #@2a
    .line 2281
    iget-object p1, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2c
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2e
    return-object p1

    #@2f
    :cond_2f
    const/4 p1, 0x0

    #@30
    return-object p1
.end method

.method getRelativePositioning(I)I
    .registers 3

    #@0
    if-nez p1, :cond_5

    #@2
    .line 1717
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    #@4
    return p1

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    if-ne p1, v0, :cond_b

    #@8
    .line 1719
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    #@a
    return p1

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return p1
.end method

.method public getRight()I
    .registers 3

    #@0
    .line 1190
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@6
    add-int/2addr v0, v1

    #@7
    return v0
.end method

.method protected getRootX()I
    .registers 3

    #@0
    .line 1135
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@2
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    #@4
    add-int/2addr v0, v1

    #@5
    return v0
.end method

.method protected getRootY()I
    .registers 3

    #@0
    .line 1145
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@2
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    #@4
    add-int/2addr v0, v1

    #@5
    return v0
.end method

.method public getRun(I)Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
    .registers 3

    #@0
    if-nez p1, :cond_5

    #@2
    .line 85
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@4
    return-object p1

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    if-ne p1, v0, :cond_b

    #@8
    .line 87
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@a
    return-object p1

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    return-object p1
.end method

.method public getSceneString(Ljava/lang/StringBuilder;)V
    .registers 14

    #@0
    .line 3588
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "  "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->stringId:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, ":{\n"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 3589
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    const-string v1, "    actualWidth:"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@21
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    const-string v0, "\n"

    #@30
    .line 3590
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 3591
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    const-string v2, "    actualHeight:"

    #@37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3a
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 3592
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 3593
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c
    const-string v2, "    actualLeft:"

    #@4e
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@51
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 3594
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 3595
    new-instance v1, Ljava/lang/StringBuilder;

    #@63
    const-string v2, "    actualTop:"

    #@65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@68
    iget v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 3596
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    const-string v0, "left"

    #@7a
    .line 3597
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7c
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@7f
    const-string v0, "top"

    #@81
    .line 3598
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@83
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@86
    const-string v0, "right"

    #@88
    .line 3599
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8a
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@8d
    const-string v0, "bottom"

    #@8f
    .line 3600
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@91
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@94
    const-string v0, "baseline"

    #@96
    .line 3601
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@98
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@9b
    const-string v0, "centerX"

    #@9d
    .line 3602
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9f
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@a2
    const-string v0, "centerY"

    #@a4
    .line 3603
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a6
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@a9
    const-string v2, "    width"

    #@ab
    .line 3604
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@ad
    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@af
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@b1
    const/4 v11, 0x0

    #@b2
    aget v5, v0, v11

    #@b4
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    #@b6
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@b8
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@ba
    iget v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    #@bc
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@be
    aget v10, v0, v11

    #@c0
    move-object v0, p0

    #@c1
    move-object v1, p1

    #@c2
    invoke-direct/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V

    #@c5
    const-string v2, "    height"

    #@c7
    .line 3615
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@c9
    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@cb
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@cd
    const/4 v1, 0x1

    #@ce
    aget v5, v0, v1

    #@d0
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    #@d2
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@d4
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@d6
    iget v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    #@d8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@da
    aget v10, v0, v1

    #@dc
    move-object v0, p0

    #@dd
    move-object v1, p1

    #@de
    invoke-direct/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getSceneString(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V

    #@e1
    .line 3624
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@e3
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    #@e5
    const-string v2, "    dimensionRatio"

    #@e7
    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeDimensionRatio(Ljava/lang/StringBuilder;Ljava/lang/String;FI)V

    #@ea
    .line 3625
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@ec
    sget v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    #@ee
    const-string v2, "    horizontalBias"

    #@f0
    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    #@f3
    .line 3626
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@f5
    sget v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    #@f7
    const-string v2, "    verticalBias"

    #@f9
    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    #@fc
    const-string v0, "    horizontalChainStyle"

    #@fe
    .line 3627
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    #@100
    invoke-direct {p0, p1, v0, v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    #@103
    const-string v0, "    verticalChainStyle"

    #@105
    .line 3628
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    #@107
    invoke-direct {p0, p1, v0, v1, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    #@10a
    const-string v0, "  }"

    #@10c
    .line 3630
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    return-void
.end method

.method public getTop()I
    .registers 2

    #@0
    .line 1181
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    #@0
    .line 896
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVerticalBiasPercent()F
    .registers 2

    #@0
    .line 1247
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@2
    return v0
.end method

.method public getVerticalChainControlWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 6

    #@0
    .line 2356
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_46

    #@7
    move-object v2, p0

    #@8
    move-object v0, v1

    #@9
    :goto_9
    if-nez v0, :cond_45

    #@b
    if-eqz v2, :cond_45

    #@d
    .line 2359
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@f
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@12
    move-result-object v3

    #@13
    if-nez v3, :cond_17

    #@15
    move-object v3, v1

    #@16
    goto :goto_1b

    #@17
    .line 2360
    :cond_17
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a
    move-result-object v3

    #@1b
    :goto_1b
    if-nez v3, :cond_1f

    #@1d
    move-object v3, v1

    #@1e
    goto :goto_23

    #@1f
    .line 2361
    :cond_1f
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@22
    move-result-object v3

    #@23
    .line 2362
    :goto_23
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@26
    move-result-object v4

    #@27
    if-ne v3, v4, :cond_2b

    #@29
    move-object v1, v2

    #@2a
    goto :goto_46

    #@2b
    :cond_2b
    if-nez v3, :cond_2f

    #@2d
    move-object v4, v1

    #@2e
    goto :goto_39

    #@2f
    .line 2366
    :cond_2f
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@31
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@38
    move-result-object v4

    #@39
    :goto_39
    if-eqz v4, :cond_43

    #@3b
    .line 2367
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3e
    move-result-object v4

    #@3f
    if-eq v4, v2, :cond_43

    #@41
    move-object v0, v2

    #@42
    goto :goto_9

    #@43
    :cond_43
    move-object v2, v3

    #@44
    goto :goto_9

    #@45
    :cond_45
    move-object v1, v0

    #@46
    :cond_46
    :goto_46
    return-object v1
.end method

.method public getVerticalChainStyle()I
    .registers 2

    #@0
    .line 1839
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    #@2
    return v0
.end method

.method public getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;
    .registers 3

    #@0
    .line 2218
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2
    const/4 v1, 0x1

    #@3
    aget-object v0, v0, v1

    #@5
    return-object v0
.end method

.method public getVerticalMargin()I
    .registers 3

    #@0
    .line 1221
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_a

    #@5
    .line 1222
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@9
    add-int/2addr v1, v0

    #@a
    .line 1224
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c
    if-eqz v0, :cond_13

    #@e
    .line 1225
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@10
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mMargin:I

    #@12
    add-int/2addr v1, v0

    #@13
    :cond_13
    return v1
.end method

.method public getVisibility()I
    .registers 2

    #@0
    .line 923
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@2
    return v0
.end method

.method public getWidth()I
    .registers 3

    #@0
    .line 1058
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@2
    const/16 v1, 0x8

    #@4
    if-ne v0, v1, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    .line 1061
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@a
    return v0
.end method

.method public getWrapBehaviorInParent()I
    .registers 2

    #@0
    .line 391
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    #@2
    return v0
.end method

.method public getX()I
    .registers 3

    #@0
    .line 1034
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    if-eqz v0, :cond_10

    #@4
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@6
    if-eqz v1, :cond_10

    #@8
    .line 1035
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@a
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    #@c
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@e
    add-int/2addr v0, v1

    #@f
    return v0

    #@10
    .line 1037
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@12
    return v0
.end method

.method public getY()I
    .registers 3

    #@0
    .line 1046
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    if-eqz v0, :cond_10

    #@4
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@6
    if-eqz v1, :cond_10

    #@8
    .line 1047
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@a
    iget v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    #@c
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@e
    add-int/2addr v0, v1

    #@f
    return v0

    #@10
    .line 1049
    :cond_10
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@12
    return v0
.end method

.method public hasBaseline()Z
    .registers 2

    #@0
    .line 1273
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    #@2
    return v0
.end method

.method public hasDanglingDimension(I)Z
    .registers 6

    #@0
    const/4 v0, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    if-nez p1, :cond_1d

    #@5
    .line 228
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9
    if-eqz p1, :cond_d

    #@b
    move p1, v1

    #@c
    goto :goto_e

    #@d
    :cond_d
    move p1, v2

    #@e
    :goto_e
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@10
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@12
    if-eqz v3, :cond_16

    #@14
    move v3, v1

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v3, v2

    #@17
    :goto_17
    add-int/2addr p1, v3

    #@18
    if-ge p1, v0, :cond_1b

    #@1a
    goto :goto_1c

    #@1b
    :cond_1b
    move v1, v2

    #@1c
    :goto_1c
    return v1

    #@1d
    .line 231
    :cond_1d
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1f
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@21
    if-eqz p1, :cond_25

    #@23
    move p1, v1

    #@24
    goto :goto_26

    #@25
    :cond_25
    move p1, v2

    #@26
    :goto_26
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@28
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2a
    if-eqz v3, :cond_2e

    #@2c
    move v3, v1

    #@2d
    goto :goto_2f

    #@2e
    :cond_2e
    move v3, v2

    #@2f
    :goto_2f
    add-int/2addr p1, v3

    #@30
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@32
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@34
    if-eqz v3, :cond_38

    #@36
    move v3, v1

    #@37
    goto :goto_39

    #@38
    :cond_38
    move v3, v2

    #@39
    :goto_39
    add-int/2addr p1, v3

    #@3a
    if-ge p1, v0, :cond_3d

    #@3c
    goto :goto_3e

    #@3d
    :cond_3d
    move v1, v2

    #@3e
    :goto_3e
    return v1
.end method

.method public hasDependencies()Z
    .registers 5

    #@0
    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    :goto_8
    if-ge v2, v0, :cond_1d

    #@a
    .line 218
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@12
    .line 219
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasDependents()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1a

    #@18
    const/4 v0, 0x1

    #@19
    return v0

    #@1a
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_8

    #@1d
    :cond_1d
    return v1
.end method

.method public hasDimensionOverride()Z
    .registers 3

    #@0
    .line 722
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_c

    #@5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    #@7
    if-eq v0, v1, :cond_a

    #@9
    goto :goto_c

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_d

    #@c
    :cond_c
    :goto_c
    const/4 v0, 0x1

    #@d
    :goto_d
    return v0
.end method

.method public hasResolvedTargets(II)Z
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-nez p1, :cond_48

    #@4
    .line 238
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8
    if-eqz p1, :cond_8c

    #@a
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@11
    move-result p1

    #@12
    if-eqz p1, :cond_8c

    #@14
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18
    if-eqz p1, :cond_8c

    #@1a
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1c
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e
    .line 239
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@21
    move-result p1

    #@22
    if-eqz p1, :cond_8c

    #@24
    .line 240
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@26
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@28
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@2b
    move-result p1

    #@2c
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2e
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@31
    move-result v2

    #@32
    sub-int/2addr p1, v2

    #@33
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@35
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@37
    .line 241
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@3a
    move-result v2

    #@3b
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3d
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@40
    move-result v3

    #@41
    add-int/2addr v2, v3

    #@42
    sub-int/2addr p1, v2

    #@43
    if-lt p1, p2, :cond_46

    #@45
    goto :goto_47

    #@46
    :cond_46
    move v0, v1

    #@47
    :goto_47
    return v0

    #@48
    .line 244
    :cond_48
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4a
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4c
    if-eqz p1, :cond_8c

    #@4e
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@50
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@52
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@55
    move-result p1

    #@56
    if-eqz p1, :cond_8c

    #@58
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@5a
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@5c
    if-eqz p1, :cond_8c

    #@5e
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@60
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@62
    .line 245
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@65
    move-result p1

    #@66
    if-eqz p1, :cond_8c

    #@68
    .line 246
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6a
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6c
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@6f
    move-result p1

    #@70
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@72
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@75
    move-result v2

    #@76
    sub-int/2addr p1, v2

    #@77
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@79
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7b
    .line 247
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    #@7e
    move-result v2

    #@7f
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@81
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    #@84
    move-result v3

    #@85
    add-int/2addr v2, v3

    #@86
    sub-int/2addr p1, v2

    #@87
    if-lt p1, p2, :cond_8a

    #@89
    goto :goto_8b

    #@8a
    :cond_8a
    move v0, v1

    #@8b
    :goto_8b
    return v0

    #@8c
    :cond_8c
    return v1
.end method

.method public immediateConnect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;II)V
    .registers 6

    #@0
    .line 1864
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3
    move-result-object p1

    #@4
    .line 1865
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7
    move-result-object p2

    #@8
    const/4 p3, 0x1

    #@9
    .line 1866
    invoke-virtual {p1, p2, p4, p5, p3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIZ)Z

    #@c
    return-void
.end method

.method public isAnimated()Z
    .registers 2

    #@0
    .line 941
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    #@2
    return v0
.end method

.method public isHeightWrapContent()Z
    .registers 2

    #@0
    .line 874
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    #@2
    return v0
.end method

.method public isHorizontalSolvingPassDone()Z
    .registers 2

    #@0
    .line 132
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    #@2
    return v0
.end method

.method public isInBarrier(I)Z
    .registers 3

    #@0
    .line 373
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    #@2
    aget-boolean p1, v0, p1

    #@4
    return p1
.end method

.method public isInHorizontalChain()Z
    .registers 3

    #@0
    .line 2261
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4
    if-eqz v0, :cond_10

    #@6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    if-eq v0, v1, :cond_20

    #@10
    :cond_10
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@12
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14
    if-eqz v0, :cond_22

    #@16
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1c
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e
    if-ne v0, v1, :cond_22

    #@20
    :cond_20
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    return v0
.end method

.method public isInPlaceholder()Z
    .registers 2

    #@0
    .line 361
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    #@2
    return v0
.end method

.method public isInVerticalChain()Z
    .registers 3

    #@0
    .line 2342
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4
    if-eqz v0, :cond_10

    #@6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    if-eq v0, v1, :cond_20

    #@10
    :cond_10
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@12
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14
    if-eqz v0, :cond_22

    #@16
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1c
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e
    if-ne v0, v1, :cond_22

    #@20
    :cond_20
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    return v0
.end method

.method public isInVirtualLayout()Z
    .registers 2

    #@0
    .line 313
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    #@2
    return v0
.end method

.method public isMeasureRequested()Z
    .registers 3

    #@0
    .line 381
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@6
    const/16 v1, 0x8

    #@8
    if-eq v0, v1, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method public isResolvedHorizontally()Z
    .registers 2

    #@0
    .line 194
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@2
    if-nez v0, :cond_17

    #@4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_15

    #@c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_15

    #@14
    goto :goto_17

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    goto :goto_18

    #@17
    :cond_17
    :goto_17
    const/4 v0, 0x1

    #@18
    :goto_18
    return v0
.end method

.method public isResolvedVertically()Z
    .registers 2

    #@0
    .line 198
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@2
    if-nez v0, :cond_17

    #@4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_15

    #@c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_15

    #@14
    goto :goto_17

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    goto :goto_18

    #@17
    :cond_17
    :goto_17
    const/4 v0, 0x1

    #@18
    :goto_18
    return v0
.end method

.method public isRoot()Z
    .registers 2

    #@0
    .line 820
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0
.end method

.method public isSpreadHeight()Z
    .registers 4

    #@0
    .line 345
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@2
    if-nez v0, :cond_1d

    #@4
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@6
    const/4 v1, 0x0

    #@7
    cmpl-float v0, v0, v1

    #@9
    if-nez v0, :cond_1d

    #@b
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@d
    if-nez v0, :cond_1d

    #@f
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@11
    if-nez v0, :cond_1d

    #@13
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@15
    const/4 v1, 0x1

    #@16
    aget-object v0, v0, v1

    #@18
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1a
    if-ne v0, v2, :cond_1d

    #@1c
    goto :goto_1e

    #@1d
    :cond_1d
    const/4 v1, 0x0

    #@1e
    :goto_1e
    return v1
.end method

.method public isSpreadWidth()Z
    .registers 4

    #@0
    .line 337
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_1d

    #@5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@7
    const/4 v2, 0x0

    #@8
    cmpl-float v0, v0, v2

    #@a
    if-nez v0, :cond_1d

    #@c
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@e
    if-nez v0, :cond_1d

    #@10
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@12
    if-nez v0, :cond_1d

    #@14
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@16
    aget-object v0, v0, v1

    #@18
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@1a
    if-ne v0, v2, :cond_1d

    #@1c
    const/4 v1, 0x1

    #@1d
    :cond_1d
    return v1
.end method

.method public isVerticalSolvingPassDone()Z
    .registers 2

    #@0
    .line 136
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    #@2
    return v0
.end method

.method public isWidthWrapContent()Z
    .registers 2

    #@0
    .line 856
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    #@2
    return v0
.end method

.method public markHorizontalSolvingPassDone()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 140
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    #@3
    return-void
.end method

.method public markVerticalSolvingPassDone()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 144
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    #@3
    return-void
.end method

.method public oppositeDimensionDependsOn(I)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-nez p1, :cond_6

    #@4
    move v2, v0

    #@5
    goto :goto_7

    #@6
    :cond_6
    move v2, v1

    #@7
    .line 708
    :goto_7
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@9
    aget-object p1, v3, p1

    #@b
    .line 709
    aget-object v2, v3, v2

    #@d
    .line 710
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@f
    if-ne p1, v3, :cond_16

    #@11
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@13
    if-ne v2, p1, :cond_16

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v0, v1

    #@17
    :goto_17
    return v0
.end method

.method public oppositeDimensionsTied()Z
    .registers 5

    #@0
    .line 716
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2
    const/4 v1, 0x0

    #@3
    aget-object v0, v0, v1

    #@5
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@7
    if-ne v0, v2, :cond_13

    #@9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@b
    const/4 v2, 0x1

    #@c
    aget-object v0, v0, v2

    #@e
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@10
    if-ne v0, v3, :cond_13

    #@12
    move v1, v2

    #@13
    :cond_13
    return v1
.end method

.method public reset()V
    .registers 7

    #@0
    .line 517
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@5
    .line 518
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@a
    .line 519
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@f
    .line 520
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@11
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@14
    .line 521
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@19
    .line 522
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1b
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@1e
    .line 523
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@20
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@23
    .line 524
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@25
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@28
    const/4 v0, 0x0

    #@29
    .line 525
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2b
    const/4 v1, 0x0

    #@2c
    .line 526
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    #@2e
    const/4 v2, 0x0

    #@2f
    .line 527
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@31
    .line 528
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@33
    .line 529
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@35
    const/4 v1, -0x1

    #@36
    .line 530
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    #@38
    .line 531
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@3a
    .line 532
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@3c
    .line 533
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    #@3e
    .line 534
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    #@40
    .line 535
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    #@42
    .line 536
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@44
    .line 537
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@46
    .line 538
    sget v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    #@48
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@4a
    .line 539
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@4c
    .line 540
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@4e
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@50
    aput-object v4, v3, v2

    #@52
    .line 541
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@54
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@56
    const/4 v5, 0x1

    #@57
    aput-object v4, v3, v5

    #@59
    .line 542
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    #@5b
    .line 543
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    #@5d
    .line 544
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@5f
    .line 545
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    #@61
    .line 546
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    #@63
    .line 547
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    #@65
    .line 548
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    #@67
    .line 549
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    #@69
    .line 550
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    #@6b
    .line 551
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    #@6d
    .line 552
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@6f
    const/high16 v3, -0x40800000    # -1.0f

    #@71
    aput v3, v0, v2

    #@73
    .line 553
    aput v3, v0, v5

    #@75
    .line 554
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalResolution:I

    #@77
    .line 555
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalResolution:I

    #@79
    .line 556
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@7b
    const v3, 0x7fffffff

    #@7e
    aput v3, v0, v2

    #@80
    .line 557
    aput v3, v0, v5

    #@82
    .line 558
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@84
    .line 559
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@86
    const/high16 v0, 0x3f800000    # 1.0f

    #@88
    .line 560
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    #@8a
    .line 561
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    #@8c
    .line 562
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@8e
    .line 563
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@90
    .line 564
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@92
    .line 565
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@94
    .line 566
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedHasRatio:Z

    #@96
    .line 567
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@98
    .line 568
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@9a
    .line 569
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mGroupsToSolver:Z

    #@9c
    .line 570
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isTerminalWidget:[Z

    #@9e
    aput-boolean v5, v0, v2

    #@a0
    .line 571
    aput-boolean v5, v0, v5

    #@a2
    .line 572
    iput-boolean v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    #@a4
    .line 573
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    #@a6
    aput-boolean v2, v0, v2

    #@a8
    .line 574
    aput-boolean v2, v0, v5

    #@aa
    .line 575
    iput-boolean v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    #@ac
    .line 576
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    #@ae
    aput v2, v0, v2

    #@b0
    .line 577
    aput v2, v0, v5

    #@b2
    .line 578
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    #@b4
    .line 579
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    #@b6
    return-void
.end method

.method public resetAllConstraints()V
    .registers 2

    #@0
    .line 2082
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAnchors()V

    #@3
    .line 2083
    sget v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    #@5
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    #@8
    .line 2084
    sget v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    #@a
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    #@d
    return-void
.end method

.method public resetAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V
    .registers 10

    #@0
    .line 2093
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_1b

    #@6
    .line 2094
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@9
    move-result-object v0

    #@a
    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@c
    if-eqz v0, :cond_1b

    #@e
    .line 2095
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@14
    .line 2096
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1b

    #@1a
    return-void

    #@1b
    .line 2101
    :cond_1b
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1d
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@20
    move-result-object v0

    #@21
    .line 2102
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@23
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@26
    move-result-object v1

    #@27
    .line 2103
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@29
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2c
    move-result-object v2

    #@2d
    .line 2104
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@2f
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@32
    move-result-object v3

    #@33
    .line 2105
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@35
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@38
    move-result-object v4

    #@39
    .line 2106
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@3b
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3e
    move-result-object v5

    #@3f
    .line 2107
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@41
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@44
    move-result-object v6

    #@45
    const/high16 v7, 0x3f000000    # 0.5f

    #@47
    if-ne p1, v4, :cond_87

    #@49
    .line 2110
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_65

    #@4f
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_65

    #@55
    .line 2111
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@5c
    move-result-object v5

    #@5d
    if-ne v4, v5, :cond_65

    #@5f
    .line 2112
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@62
    .line 2113
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@65
    .line 2115
    :cond_65
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@68
    move-result v0

    #@69
    if-eqz v0, :cond_81

    #@6b
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@6e
    move-result v0

    #@6f
    if-eqz v0, :cond_81

    #@71
    .line 2116
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@74
    move-result-object v0

    #@75
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@78
    move-result-object v1

    #@79
    if-ne v0, v1, :cond_81

    #@7b
    .line 2117
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@7e
    .line 2118
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@81
    .line 2120
    :cond_81
    iput v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@83
    .line 2121
    iput v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@85
    goto/16 :goto_109

    #@87
    :cond_87
    if-ne p1, v5, :cond_b0

    #@89
    .line 2123
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@8c
    move-result v2

    #@8d
    if-eqz v2, :cond_ad

    #@8f
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@92
    move-result v2

    #@93
    if-eqz v2, :cond_ad

    #@95
    .line 2124
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@98
    move-result-object v2

    #@99
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a0
    move-result-object v3

    #@a1
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@a4
    move-result-object v3

    #@a5
    if-ne v2, v3, :cond_ad

    #@a7
    .line 2125
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@aa
    .line 2126
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@ad
    .line 2128
    :cond_ad
    iput v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@af
    goto :goto_109

    #@b0
    :cond_b0
    if-ne p1, v6, :cond_d9

    #@b2
    .line 2130
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@b5
    move-result v0

    #@b6
    if-eqz v0, :cond_d6

    #@b8
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@bb
    move-result v0

    #@bc
    if-eqz v0, :cond_d6

    #@be
    .line 2131
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c1
    move-result-object v0

    #@c2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@c5
    move-result-object v0

    #@c6
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c9
    move-result-object v1

    #@ca
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@cd
    move-result-object v1

    #@ce
    if-ne v0, v1, :cond_d6

    #@d0
    .line 2132
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@d3
    .line 2133
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@d6
    .line 2135
    :cond_d6
    iput v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@d8
    goto :goto_109

    #@d9
    :cond_d9
    if-eq p1, v0, :cond_f6

    #@db
    if-ne p1, v1, :cond_de

    #@dd
    goto :goto_f6

    #@de
    :cond_de
    if-eq p1, v2, :cond_e2

    #@e0
    if-ne p1, v3, :cond_109

    #@e2
    .line 2141
    :cond_e2
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@e5
    move-result v0

    #@e6
    if-eqz v0, :cond_109

    #@e8
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@eb
    move-result-object v0

    #@ec
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@ef
    move-result-object v1

    #@f0
    if-ne v0, v1, :cond_109

    #@f2
    .line 2142
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@f5
    goto :goto_109

    #@f6
    .line 2137
    :cond_f6
    :goto_f6
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@f9
    move-result v2

    #@fa
    if-eqz v2, :cond_109

    #@fc
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@ff
    move-result-object v0

    #@100
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@103
    move-result-object v1

    #@104
    if-ne v0, v1, :cond_109

    #@106
    .line 2138
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@109
    .line 2145
    :cond_109
    :goto_109
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@10c
    return-void
.end method

.method public resetAnchors()V
    .registers 4

    #@0
    .line 2152
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_17

    #@6
    .line 2153
    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@8
    if-eqz v0, :cond_17

    #@a
    .line 2154
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@10
    .line 2155
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_17

    #@16
    return-void

    #@17
    .line 2159
    :cond_17
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v0

    #@1d
    const/4 v1, 0x0

    #@1e
    :goto_1e
    if-ge v1, v0, :cond_2e

    #@20
    .line 2160
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@28
    .line 2161
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->reset()V

    #@2b
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_1e

    #@2e
    :cond_2e
    return-void
.end method

.method public resetFinalResolution()V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 202
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@3
    .line 203
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@5
    .line 204
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    #@7
    .line 205
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    #@9
    .line 206
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v1

    #@f
    :goto_f
    if-ge v0, v1, :cond_1f

    #@11
    .line 207
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@19
    .line 208
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetFinalResolution()V

    #@1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_f

    #@1f
    :cond_1f
    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/core/Cache;)V
    .registers 3

    #@0
    .line 790
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    #@5
    .line 791
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    #@a
    .line 792
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    #@f
    .line 793
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@11
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    #@14
    .line 794
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    #@19
    .line 795
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1b
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    #@1e
    .line 796
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@20
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    #@23
    .line 797
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@25
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    #@28
    return-void
.end method

.method public resetSolvingPassFlag()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 127
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalSolvingPass:Z

    #@3
    .line 128
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalSolvingPass:Z

    #@5
    return-void
.end method

.method public serialize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 13

    #@0
    const-string v0, "{\n"

    #@2
    .line 663
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    const-string v0, "left"

    #@7
    .line 664
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@c
    const-string v0, "top"

    #@e
    .line 665
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@10
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@13
    const-string v0, "right"

    #@15
    .line 666
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@17
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@1a
    const-string v0, "bottom"

    #@1c
    .line 667
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@21
    const-string v0, "baseline"

    #@23
    .line 668
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@25
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@28
    const-string v0, "centerX"

    #@2a
    .line 669
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2c
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@2f
    const-string v0, "centerY"

    #@31
    .line 670
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@33
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAnchor(Ljava/lang/StringBuilder;Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;)V

    #@36
    .line 671
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@38
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    #@3a
    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeCircle(Ljava/lang/StringBuilder;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;F)V

    #@3d
    const-string v2, "width"

    #@3f
    .line 673
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@41
    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@43
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@45
    const/4 v1, 0x0

    #@46
    aget v5, v0, v1

    #@48
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    #@4a
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@4c
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@4e
    iget v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    #@50
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@52
    aget v10, v0, v1

    #@54
    move-object v0, p0

    #@55
    move-object v1, p1

    #@56
    invoke-direct/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeSize(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V

    #@59
    const-string v2, "height"

    #@5b
    .line 684
    iget v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@5d
    iget v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@5f
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@61
    const/4 v1, 0x1

    #@62
    aget v5, v0, v1

    #@64
    iget v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    #@66
    iget v7, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@68
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@6a
    iget v9, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    #@6c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@6e
    aget v10, v0, v1

    #@70
    move-object v0, p0

    #@71
    move-object v1, p1

    #@72
    invoke-direct/range {v0 .. v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeSize(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIIFF)V

    #@75
    .line 694
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@77
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    #@79
    const-string v2, "dimensionRatio"

    #@7b
    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeDimensionRatio(Ljava/lang/StringBuilder;Ljava/lang/String;FI)V

    #@7e
    .line 695
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@80
    sget v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    #@82
    const-string v2, "horizontalBias"

    #@84
    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    #@87
    .line 696
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@89
    sget v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    #@8b
    const-string v2, "verticalBias"

    #@8d
    invoke-direct {p0, p1, v2, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->serializeAttribute(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    #@90
    const-string v0, "}\n"

    #@92
    .line 697
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    return-object p1
.end method

.method public setAnimated(Z)V
    .registers 2

    #@0
    .line 932
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mAnimated:Z

    #@2
    return-void
.end method

.method public setBaselineDistance(I)V
    .registers 2

    #@0
    .line 1745
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    #@2
    if-lez p1, :cond_6

    #@4
    const/4 p1, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 p1, 0x0

    #@7
    .line 1746
    :goto_7
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    #@9
    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 1756
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    #@2
    return-void
.end method

.method public setContainerItemSkip(I)V
    .registers 2

    #@0
    if-ltz p1, :cond_5

    #@2
    .line 1769
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    #@4
    goto :goto_8

    #@5
    :cond_5
    const/4 p1, 0x0

    #@6
    .line 1771
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mContainerItemSkip:I

    #@8
    :goto_8
    return-void
.end method

.method public setDebugName(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 957
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setDebugSolverName(Landroidx/constraintlayout/core/LinearSystem;Ljava/lang/String;)V
    .registers 9

    #@0
    .line 977
    iput-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    #@2
    .line 978
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@7
    move-result-object v0

    #@8
    .line 979
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@d
    move-result-object v1

    #@e
    .line 980
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@10
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@13
    move-result-object v2

    #@14
    .line 981
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@19
    move-result-object v3

    #@1a
    .line 982
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    const-string v5, ".left"

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    #@30
    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    const-string v4, ".top"

    #@3b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    #@46
    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    const-string v1, ".right"

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    #@5c
    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v0

    #@65
    const-string v1, ".bottom"

    #@67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    #@72
    .line 986
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@74
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    #@77
    move-result-object p1

    #@78
    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object p2

    #@81
    const-string v0, ".baseline"

    #@83
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object p2

    #@87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object p2

    #@8b
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    #@8e
    return-void
.end method

.method public setDimension(II)V
    .registers 4

    #@0
    .line 1600
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@2
    .line 1601
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@4
    if-ge p1, v0, :cond_8

    #@6
    .line 1602
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@8
    .line 1604
    :cond_8
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@a
    .line 1605
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@c
    if-ge p2, p1, :cond_10

    #@e
    .line 1606
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@10
    :cond_10
    return-void
.end method

.method public setDimensionRatio(FI)V
    .registers 3

    #@0
    .line 1525
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@2
    .line 1526
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    #@4
    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .registers 10

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_90

    #@3
    .line 1460
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_b

    #@9
    goto/16 :goto_90

    #@b
    .line 1466
    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v1

    #@f
    const/16 v2, 0x2c

    #@11
    .line 1467
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@14
    move-result v2

    #@15
    const/4 v3, 0x0

    #@16
    const/4 v4, 0x1

    #@17
    const/4 v5, -0x1

    #@18
    if-lez v2, :cond_39

    #@1a
    add-int/lit8 v6, v1, -0x1

    #@1c
    if-ge v2, v6, :cond_39

    #@1e
    .line 1469
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    const-string v7, "W"

    #@24
    .line 1470
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v7

    #@28
    if-eqz v7, :cond_2b

    #@2a
    goto :goto_36

    #@2b
    :cond_2b
    const-string v3, "H"

    #@2d
    .line 1472
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@30
    move-result v3

    #@31
    if-eqz v3, :cond_35

    #@33
    move v3, v4

    #@34
    goto :goto_36

    #@35
    :cond_35
    move v3, v5

    #@36
    :goto_36
    add-int/2addr v2, v4

    #@37
    move v5, v3

    #@38
    move v3, v2

    #@39
    :cond_39
    const/16 v2, 0x3a

    #@3b
    .line 1479
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    #@3e
    move-result v2

    #@3f
    if-ltz v2, :cond_77

    #@41
    sub-int/2addr v1, v4

    #@42
    if-ge v2, v1, :cond_77

    #@44
    .line 1482
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    add-int/2addr v2, v4

    #@49
    .line 1483
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4c
    move-result-object p1

    #@4d
    .line 1484
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@50
    move-result v2

    #@51
    if-lez v2, :cond_86

    #@53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@56
    move-result v2

    #@57
    if-lez v2, :cond_86

    #@59
    .line 1486
    :try_start_59
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@5c
    move-result v1

    #@5d
    .line 1487
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@60
    move-result p1

    #@61
    cmpl-float v2, v1, v0

    #@63
    if-lez v2, :cond_86

    #@65
    cmpl-float v2, p1, v0

    #@67
    if-lez v2, :cond_86

    #@69
    if-ne v5, v4, :cond_71

    #@6b
    div-float/2addr p1, v1

    #@6c
    .line 1490
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    #@6f
    move-result p1

    #@70
    goto :goto_87

    #@71
    :cond_71
    div-float/2addr v1, p1

    #@72
    .line 1492
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@75
    move-result p1
    :try_end_76
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_76} :catch_86

    #@76
    goto :goto_87

    #@77
    .line 1500
    :cond_77
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7a
    move-result-object p1

    #@7b
    .line 1501
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7e
    move-result v1

    #@7f
    if-lez v1, :cond_86

    #@81
    .line 1503
    :try_start_81
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@84
    move-result p1
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_85} :catch_86

    #@85
    goto :goto_87

    #@86
    :catch_86
    :cond_86
    move p1, v0

    #@87
    :goto_87
    cmpl-float v0, p1, v0

    #@89
    if-lez v0, :cond_8f

    #@8b
    .line 1511
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@8d
    .line 1512
    iput v5, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    #@8f
    :cond_8f
    return-void

    #@90
    .line 1461
    :cond_90
    :goto_90
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@92
    return-void
.end method

.method public setFinalBaseline(I)V
    .registers 5

    #@0
    .line 181
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 184
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    #@7
    sub-int v0, p1, v0

    #@9
    .line 185
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@b
    add-int/2addr v1, v0

    #@c
    .line 186
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@e
    .line 187
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@10
    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    #@13
    .line 188
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@15
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    #@18
    .line 189
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    #@1d
    const/4 p1, 0x1

    #@1e
    .line 190
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@20
    return-void
.end method

.method public setFinalFrame(IIIIII)V
    .registers 7

    #@0
    .line 99
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFrame(IIII)V

    #@3
    .line 100
    invoke-virtual {p0, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    #@6
    const/4 p1, 0x0

    #@7
    const/4 p2, 0x1

    #@8
    if-nez p6, :cond_f

    #@a
    .line 102
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@c
    .line 103
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@e
    goto :goto_22

    #@f
    :cond_f
    if-ne p6, p2, :cond_16

    #@11
    .line 105
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@13
    .line 106
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@15
    goto :goto_22

    #@16
    :cond_16
    const/4 p3, 0x2

    #@17
    if-ne p6, p3, :cond_1e

    #@19
    .line 108
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@1b
    .line 109
    iput-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@1d
    goto :goto_22

    #@1e
    .line 111
    :cond_1e
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@20
    .line 112
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@22
    :goto_22
    return-void
.end method

.method public setFinalHorizontal(II)V
    .registers 4

    #@0
    .line 148
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 151
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    #@a
    .line 152
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    #@f
    .line 153
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@11
    sub-int/2addr p2, p1

    #@12
    .line 154
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@14
    const/4 p1, 0x1

    #@15
    .line 155
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedHorizontal:Z

    #@17
    return-void
.end method

.method public setFinalLeft(I)V
    .registers 3

    #@0
    .line 117
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    #@5
    .line 118
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@7
    return-void
.end method

.method public setFinalTop(I)V
    .registers 3

    #@0
    .line 122
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    #@5
    .line 123
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@7
    return-void
.end method

.method public setFinalVertical(II)V
    .registers 4

    #@0
    .line 163
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    return-void

    #@5
    .line 166
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    #@a
    .line 167
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    #@f
    .line 168
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@11
    sub-int/2addr p2, p1

    #@12
    .line 169
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@14
    .line 170
    iget-boolean p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    #@16
    if-eqz p2, :cond_20

    #@18
    .line 171
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaselineDistance:I

    #@1c
    add-int/2addr p1, v0

    #@1d
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    #@20
    :cond_20
    const/4 p1, 0x1

    #@21
    .line 173
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resolvedVertical:Z

    #@23
    return-void
.end method

.method public setFrame(III)V
    .registers 5

    #@0
    if-nez p3, :cond_6

    #@2
    .line 1675
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    #@5
    goto :goto_c

    #@6
    :cond_6
    const/4 v0, 0x1

    #@7
    if-ne p3, v0, :cond_c

    #@9
    .line 1677
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimension(II)V

    #@c
    :cond_c
    :goto_c
    return-void
.end method

.method public setFrame(IIII)V
    .registers 7

    #@0
    sub-int/2addr p3, p1

    #@1
    sub-int/2addr p4, p2

    #@2
    .line 1622
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@4
    .line 1623
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@6
    .line 1625
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@8
    const/16 p2, 0x8

    #@a
    const/4 v0, 0x0

    #@b
    if-ne p1, p2, :cond_12

    #@d
    .line 1626
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@f
    .line 1627
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@11
    return-void

    #@12
    .line 1632
    :cond_12
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@14
    aget-object p1, p1, v0

    #@16
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@18
    if-ne p1, p2, :cond_1f

    #@1a
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@1c
    if-ge p3, p1, :cond_1f

    #@1e
    move p3, p1

    #@1f
    .line 1635
    :cond_1f
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@21
    const/4 p2, 0x1

    #@22
    aget-object p1, p1, p2

    #@24
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@26
    if-ne p1, v1, :cond_2d

    #@28
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@2a
    if-ge p4, p1, :cond_2d

    #@2c
    move p4, p1

    #@2d
    .line 1639
    :cond_2d
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@2f
    .line 1640
    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@31
    .line 1642
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@33
    if-ge p4, p1, :cond_37

    #@35
    .line 1643
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@37
    .line 1645
    :cond_37
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@39
    if-ge p3, p1, :cond_3d

    #@3b
    .line 1646
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@3d
    .line 1648
    :cond_3d
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@3f
    if-lez p1, :cond_53

    #@41
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@43
    aget-object p1, p1, v0

    #@45
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@47
    if-ne p1, v0, :cond_53

    #@49
    .line 1649
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@4b
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@4d
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@50
    move-result p1

    #@51
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@53
    .line 1651
    :cond_53
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@55
    if-lez p1, :cond_69

    #@57
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@59
    aget-object p1, p1, p2

    #@5b
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@5d
    if-ne p1, p2, :cond_69

    #@5f
    .line 1652
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@61
    iget p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@63
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    #@66
    move-result p1

    #@67
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@69
    .line 1654
    :cond_69
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@6b
    if-eq p3, p1, :cond_6f

    #@6d
    .line 1655
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidthOverride:I

    #@6f
    .line 1657
    :cond_6f
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@71
    if-eq p4, p1, :cond_75

    #@73
    .line 1658
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeightOverride:I

    #@75
    :cond_75
    return-void
.end method

.method public setGoneMargin(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;I)V
    .registers 4

    #@0
    .line 1351
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    #@2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    #@5
    move-result p1

    #@6
    aget p1, v0, p1

    #@8
    const/4 v0, 0x1

    #@9
    if-eq p1, v0, :cond_2c

    #@b
    const/4 v0, 0x2

    #@c
    if-eq p1, v0, :cond_27

    #@e
    const/4 v0, 0x3

    #@f
    if-eq p1, v0, :cond_22

    #@11
    const/4 v0, 0x4

    #@12
    if-eq p1, v0, :cond_1d

    #@14
    const/4 v0, 0x5

    #@15
    if-eq p1, v0, :cond_18

    #@17
    goto :goto_30

    #@18
    .line 1369
    :cond_18
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a
    iput p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@1c
    goto :goto_30

    #@1d
    .line 1365
    :cond_1d
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1f
    iput p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@21
    goto :goto_30

    #@22
    .line 1361
    :cond_22
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@24
    iput p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@26
    goto :goto_30

    #@27
    .line 1357
    :cond_27
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@29
    iput p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@2b
    goto :goto_30

    #@2c
    .line 1353
    :cond_2c
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2e
    iput p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mGoneMargin:I

    #@30
    :goto_30
    return-void
.end method

.method public setHasBaseline(Z)V
    .registers 2

    #@0
    .line 353
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline:Z

    #@2
    return-void
.end method

.method public setHeight(I)V
    .registers 3

    #@0
    .line 1398
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@2
    .line 1399
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@4
    if-ge p1, v0, :cond_8

    #@6
    .line 1400
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@8
    :cond_8
    return-void
.end method

.method public setHeightWrapContent(Z)V
    .registers 2

    #@0
    .line 865
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    #@2
    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .registers 2

    #@0
    .line 1554
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    #@2
    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .registers 2

    #@0
    .line 1809
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    #@2
    return-void
.end method

.method public setHorizontalDimension(II)V
    .registers 3

    #@0
    .line 1688
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@2
    sub-int/2addr p2, p1

    #@3
    .line 1689
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@5
    .line 1690
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@7
    if-ge p2, p1, :cond_b

    #@9
    .line 1691
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@b
    :cond_b
    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .registers 4

    #@0
    .line 2243
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2
    const/4 v1, 0x0

    #@3
    aput-object p1, v0, v1

    #@5
    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .registers 5

    #@0
    .line 1427
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@2
    .line 1428
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@4
    const p2, 0x7fffffff

    #@7
    if-ne p3, p2, :cond_a

    #@9
    const/4 p3, 0x0

    #@a
    .line 1429
    :cond_a
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    #@c
    .line 1430
    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    #@e
    const/4 p2, 0x0

    #@f
    cmpl-float p2, p4, p2

    #@11
    if-lez p2, :cond_1e

    #@13
    const/high16 p2, 0x3f800000    # 1.0f

    #@15
    cmpg-float p2, p4, p2

    #@17
    if-gez p2, :cond_1e

    #@19
    if-nez p1, :cond_1e

    #@1b
    const/4 p1, 0x2

    #@1c
    .line 1432
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@1e
    :cond_1e
    return-void
.end method

.method public setHorizontalWeight(F)V
    .registers 4

    #@0
    .line 1790
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@2
    const/4 v1, 0x0

    #@3
    aput p1, v0, v1

    #@5
    return-void
.end method

.method protected setInBarrier(IZ)V
    .registers 4

    #@0
    .line 369
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    #@2
    aput-boolean p2, v0, p1

    #@4
    return-void
.end method

.method public setInPlaceholder(Z)V
    .registers 2

    #@0
    .line 365
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->inPlaceholder:Z

    #@2
    return-void
.end method

.method public setInVirtualLayout(Z)V
    .registers 2

    #@0
    .line 317
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mInVirtualLayout:Z

    #@2
    return-void
.end method

.method public setLastMeasureSpec(II)V
    .registers 3

    #@0
    .line 403
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastHorizontalMeasureSpec:I

    #@2
    .line 404
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLastVerticalMeasureSpec:I

    #@4
    const/4 p1, 0x0

    #@5
    .line 405
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    #@8
    return-void
.end method

.method public setLength(II)V
    .registers 4

    #@0
    if-nez p2, :cond_6

    #@2
    .line 1412
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    #@5
    goto :goto_c

    #@6
    :cond_6
    const/4 v0, 0x1

    #@7
    if-ne p2, v0, :cond_c

    #@9
    .line 1414
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    #@c
    :cond_c
    :goto_c
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 4

    #@0
    .line 333
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@2
    const/4 v1, 0x1

    #@3
    aput p1, v0, v1

    #@5
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 4

    #@0
    .line 329
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMaxDimension:[I

    #@2
    const/4 v1, 0x0

    #@3
    aput p1, v0, v1

    #@5
    return-void
.end method

.method public setMeasureRequested(Z)V
    .registers 2

    #@0
    .line 377
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMeasureRequested:Z

    #@2
    return-void
.end method

.method public setMinHeight(I)V
    .registers 2

    #@0
    if-gez p1, :cond_6

    #@2
    const/4 p1, 0x0

    #@3
    .line 1587
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@5
    goto :goto_8

    #@6
    .line 1589
    :cond_6
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@8
    :goto_8
    return-void
.end method

.method public setMinWidth(I)V
    .registers 2

    #@0
    if-gez p1, :cond_6

    #@2
    const/4 p1, 0x0

    #@3
    .line 1574
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@5
    goto :goto_8

    #@6
    .line 1576
    :cond_6
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@8
    :goto_8
    return-void
.end method

.method public setOffset(II)V
    .registers 3

    #@0
    .line 1340
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetX:I

    #@2
    .line 1341
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mOffsetY:I

    #@4
    return-void
.end method

.method public setOrigin(II)V
    .registers 3

    #@0
    .line 1329
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@2
    .line 1330
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@4
    return-void
.end method

.method public setParent(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 2

    #@0
    .line 838
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    return-void
.end method

.method setRelativePositioning(II)V
    .registers 4

    #@0
    if-nez p2, :cond_5

    #@2
    .line 1733
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelX:I

    #@4
    goto :goto_a

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    if-ne p2, v0, :cond_a

    #@8
    .line 1735
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRelY:I

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 905
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .registers 2

    #@0
    .line 1564
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    #@2
    return-void
.end method

.method public setVerticalChainStyle(I)V
    .registers 2

    #@0
    .line 1829
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    #@2
    return-void
.end method

.method public setVerticalDimension(II)V
    .registers 3

    #@0
    .line 1702
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@2
    sub-int/2addr p2, p1

    #@3
    .line 1703
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@5
    .line 1704
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@7
    if-ge p2, p1, :cond_b

    #@9
    .line 1705
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@b
    :cond_b
    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V
    .registers 4

    #@0
    .line 2252
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2
    const/4 v1, 0x1

    #@3
    aput-object p1, v0, v1

    #@5
    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .registers 5

    #@0
    .line 1445
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@2
    .line 1446
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@4
    const p2, 0x7fffffff

    #@7
    if-ne p3, p2, :cond_a

    #@9
    const/4 p3, 0x0

    #@a
    .line 1447
    :cond_a
    iput p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    #@c
    .line 1448
    iput p4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    #@e
    const/4 p2, 0x0

    #@f
    cmpl-float p2, p4, p2

    #@11
    if-lez p2, :cond_1e

    #@13
    const/high16 p2, 0x3f800000    # 1.0f

    #@15
    cmpg-float p2, p4, p2

    #@17
    if-gez p2, :cond_1e

    #@19
    if-nez p1, :cond_1e

    #@1b
    const/4 p1, 0x2

    #@1c
    .line 1450
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@1e
    :cond_1e
    return-void
.end method

.method public setVerticalWeight(F)V
    .registers 4

    #@0
    .line 1799
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    #@2
    const/4 v1, 0x1

    #@3
    aput p1, v0, v1

    #@5
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    #@0
    .line 914
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@2
    return-void
.end method

.method public setWidth(I)V
    .registers 3

    #@0
    .line 1386
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@2
    .line 1387
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@4
    if-ge p1, v0, :cond_8

    #@6
    .line 1388
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@8
    :cond_8
    return-void
.end method

.method public setWidthWrapContent(Z)V
    .registers 2

    #@0
    .line 847
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    #@2
    return-void
.end method

.method public setWrapBehaviorInParent(I)V
    .registers 3

    #@0
    if-ltz p1, :cond_7

    #@2
    const/4 v0, 0x3

    #@3
    if-gt p1, v0, :cond_7

    #@5
    .line 386
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWrapBehaviorInParent:I

    #@7
    :cond_7
    return-void
.end method

.method public setX(I)V
    .registers 2

    #@0
    .line 1310
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@2
    return-void
.end method

.method public setY(I)V
    .registers 2

    #@0
    .line 1319
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@2
    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .registers 8

    #@0
    .line 2790
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@2
    const/high16 p2, 0x3f800000    # 1.0f

    #@4
    const/4 v0, 0x0

    #@5
    const/4 v1, 0x1

    #@6
    const/4 v2, -0x1

    #@7
    if-ne p1, v2, :cond_20

    #@9
    if-eqz p3, :cond_10

    #@b
    if-nez p4, :cond_10

    #@d
    .line 2792
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@f
    goto :goto_20

    #@10
    :cond_10
    if-nez p3, :cond_20

    #@12
    if-eqz p4, :cond_20

    #@14
    .line 2794
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@16
    .line 2795
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatioSide:I

    #@18
    if-ne p1, v2, :cond_20

    #@1a
    .line 2797
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@1c
    div-float p1, p2, p1

    #@1e
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@20
    .line 2802
    :cond_20
    :goto_20
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@22
    if-nez p1, :cond_37

    #@24
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@26
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@29
    move-result p1

    #@2a
    if-eqz p1, :cond_34

    #@2c
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2e
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@31
    move-result p1

    #@32
    if-nez p1, :cond_37

    #@34
    .line 2803
    :cond_34
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@36
    goto :goto_4d

    #@37
    .line 2804
    :cond_37
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@39
    if-ne p1, v1, :cond_4d

    #@3b
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3d
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@40
    move-result p1

    #@41
    if-eqz p1, :cond_4b

    #@43
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@45
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@48
    move-result p1

    #@49
    if-nez p1, :cond_4d

    #@4b
    .line 2805
    :cond_4b
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@4d
    .line 2809
    :cond_4d
    :goto_4d
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@4f
    if-ne p1, v2, :cond_9c

    #@51
    .line 2810
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@53
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@56
    move-result p1

    #@57
    if-eqz p1, :cond_71

    #@59
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@5b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@5e
    move-result p1

    #@5f
    if-eqz p1, :cond_71

    #@61
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@63
    .line 2811
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@66
    move-result p1

    #@67
    if-eqz p1, :cond_71

    #@69
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@6e
    move-result p1

    #@6f
    if-nez p1, :cond_9c

    #@71
    .line 2813
    :cond_71
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@73
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@76
    move-result p1

    #@77
    if-eqz p1, :cond_84

    #@79
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@7e
    move-result p1

    #@7f
    if-eqz p1, :cond_84

    #@81
    .line 2814
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@83
    goto :goto_9c

    #@84
    .line 2815
    :cond_84
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@86
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@89
    move-result p1

    #@8a
    if-eqz p1, :cond_9c

    #@8c
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8e
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->isConnected()Z

    #@91
    move-result p1

    #@92
    if-eqz p1, :cond_9c

    #@94
    .line 2816
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@96
    div-float p1, p2, p1

    #@98
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@9a
    .line 2817
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@9c
    .line 2831
    :cond_9c
    :goto_9c
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@9e
    if-ne p1, v2, :cond_b8

    #@a0
    .line 2832
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    #@a2
    if-lez p1, :cond_ab

    #@a4
    iget p3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@a6
    if-nez p3, :cond_ab

    #@a8
    .line 2833
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@aa
    goto :goto_b8

    #@ab
    :cond_ab
    if-nez p1, :cond_b8

    #@ad
    .line 2834
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    #@af
    if-lez p1, :cond_b8

    #@b1
    .line 2835
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@b3
    div-float/2addr p2, p1

    #@b4
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    #@b6
    .line 2836
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    #@b8
    :cond_b8
    :goto_b8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    #@7
    const-string v2, " "

    #@9
    const-string v3, ""

    #@b
    if-eqz v1, :cond_23

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    const-string v4, "type: "

    #@11
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    #@16
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    goto :goto_24

    #@23
    :cond_23
    move-object v1, v3

    #@24
    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    #@2a
    if-eqz v1, :cond_41

    #@2c
    new-instance v1, Ljava/lang/StringBuilder;

    #@2e
    const-string v3, "id: "

    #@30
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@33
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    #@35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    :cond_41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    const-string v1, "("

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    const-string v1, ", "

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    const-string v1, ") - ("

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    const-string v1, " x "

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v0

    #@6f
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    const-string v1, ")"

    #@77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v0

    #@7f
    return-object v0
.end method

.method public updateFromRuns(ZZ)V
    .registers 10

    #@0
    .line 3483
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->isResolved()Z

    #@5
    move-result v0

    #@6
    and-int/2addr p1, v0

    #@7
    .line 3484
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@9
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->isResolved()Z

    #@c
    move-result v0

    #@d
    and-int/2addr p2, v0

    #@e
    .line 3485
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@10
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@12
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@14
    .line 3486
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@16
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@18
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@1a
    .line 3487
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@1c
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@1e
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@20
    .line 3488
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@22
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@24
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@26
    sub-int v4, v2, v0

    #@28
    sub-int v5, v3, v1

    #@2a
    const/4 v6, 0x0

    #@2b
    if-ltz v4, :cond_44

    #@2d
    if-ltz v5, :cond_44

    #@2f
    const/high16 v4, -0x80000000

    #@31
    if-eq v0, v4, :cond_44

    #@33
    const v5, 0x7fffffff

    #@36
    if-eq v0, v5, :cond_44

    #@38
    if-eq v1, v4, :cond_44

    #@3a
    if-eq v1, v5, :cond_44

    #@3c
    if-eq v2, v4, :cond_44

    #@3e
    if-eq v2, v5, :cond_44

    #@40
    if-eq v3, v4, :cond_44

    #@42
    if-ne v3, v5, :cond_48

    #@44
    :cond_44
    move v0, v6

    #@45
    move v1, v0

    #@46
    move v2, v1

    #@47
    move v3, v2

    #@48
    :cond_48
    sub-int/2addr v2, v0

    #@49
    sub-int/2addr v3, v1

    #@4a
    if-eqz p1, :cond_4e

    #@4c
    .line 3506
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mX:I

    #@4e
    :cond_4e
    if-eqz p2, :cond_52

    #@50
    .line 3509
    iput v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mY:I

    #@52
    .line 3512
    :cond_52
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    #@54
    const/16 v1, 0x8

    #@56
    if-ne v0, v1, :cond_5d

    #@58
    .line 3513
    iput v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@5a
    .line 3514
    iput v6, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@5c
    return-void

    #@5d
    :cond_5d
    if-eqz p1, :cond_74

    #@5f
    .line 3520
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@61
    aget-object p1, p1, v6

    #@63
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@65
    if-ne p1, v0, :cond_6c

    #@67
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@69
    if-ge v2, p1, :cond_6c

    #@6b
    move v2, p1

    #@6c
    .line 3523
    :cond_6c
    iput v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@6e
    .line 3524
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinWidth:I

    #@70
    if-ge v2, p1, :cond_74

    #@72
    .line 3525
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWidth:I

    #@74
    :cond_74
    if-eqz p2, :cond_8c

    #@76
    .line 3530
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@78
    const/4 p2, 0x1

    #@79
    aget-object p1, p1, p2

    #@7b
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@7d
    if-ne p1, p2, :cond_84

    #@7f
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@81
    if-ge v3, p1, :cond_84

    #@83
    move v3, p1

    #@84
    .line 3533
    :cond_84
    iput v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@86
    .line 3534
    iget p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMinHeight:I

    #@88
    if-ge v3, p1, :cond_8c

    #@8a
    .line 3535
    iput p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHeight:I

    #@8c
    :cond_8c
    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 7

    #@0
    .line 3352
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@2
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    .line 3353
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@8
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    #@b
    move-result v1

    #@c
    .line 3354
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@e
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    #@11
    move-result v2

    #@12
    .line 3355
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    #@17
    move-result p1

    #@18
    if-eqz p2, :cond_38

    #@1a
    .line 3357
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@1c
    if-eqz v3, :cond_38

    #@1e
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@20
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@22
    if-eqz v3, :cond_38

    #@24
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@26
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@28
    iget-boolean v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@2a
    if-eqz v3, :cond_38

    #@2c
    .line 3358
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@2e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@30
    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@32
    .line 3359
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    #@34
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@36
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@38
    :cond_38
    if-eqz p2, :cond_58

    #@3a
    .line 3361
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@3c
    if-eqz p2, :cond_58

    #@3e
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@40
    iget-boolean p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@42
    if-eqz p2, :cond_58

    #@44
    iget-object p2, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@46
    iget-object p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@48
    iget-boolean p2, p2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    #@4a
    if-eqz p2, :cond_58

    #@4c
    .line 3362
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@4e
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@50
    iget v1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@52
    .line 3363
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    #@54
    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    #@56
    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    #@58
    :cond_58
    sub-int p2, v2, v0

    #@5a
    sub-int v3, p1, v1

    #@5c
    if-ltz p2, :cond_75

    #@5e
    if-ltz v3, :cond_75

    #@60
    const/high16 p2, -0x80000000

    #@62
    if-eq v0, p2, :cond_75

    #@64
    const v3, 0x7fffffff

    #@67
    if-eq v0, v3, :cond_75

    #@69
    if-eq v1, p2, :cond_75

    #@6b
    if-eq v1, v3, :cond_75

    #@6d
    if-eq v2, p2, :cond_75

    #@6f
    if-eq v2, v3, :cond_75

    #@71
    if-eq p1, p2, :cond_75

    #@73
    if-ne p1, v3, :cond_79

    #@75
    :cond_75
    const/4 v0, 0x0

    #@76
    move p1, v0

    #@77
    move v1, p1

    #@78
    move v2, v1

    #@79
    .line 3378
    :cond_79
    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setFrame(IIII)V

    #@7c
    return-void
.end method
