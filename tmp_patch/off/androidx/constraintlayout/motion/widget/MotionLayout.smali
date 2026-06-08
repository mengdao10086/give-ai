.class public Landroidx/constraintlayout/motion/widget/MotionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "MotionLayout.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$Model;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;,
        Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEBUG_SHOW_NONE:I = 0x0

.field public static final DEBUG_SHOW_PATH:I = 0x2

.field public static final DEBUG_SHOW_PROGRESS:I = 0x1

.field private static final EPSILON:F = 1.0E-5f

.field public static IS_IN_EDIT_MODE:Z = false

.field static final MAX_KEY_FRAMES:I = 0x32

.field static final TAG:Ljava/lang/String; = "MotionLayout"

.field public static final TOUCH_UP_COMPLETE:I = 0x0

.field public static final TOUCH_UP_COMPLETE_TO_END:I = 0x2

.field public static final TOUCH_UP_COMPLETE_TO_START:I = 0x1

.field public static final TOUCH_UP_DECELERATE:I = 0x4

.field public static final TOUCH_UP_DECELERATE_AND_COMPLETE:I = 0x5

.field public static final TOUCH_UP_NEVER_TO_END:I = 0x7

.field public static final TOUCH_UP_NEVER_TO_START:I = 0x6

.field public static final TOUCH_UP_STOP:I = 0x3

.field public static final VELOCITY_LAYOUT:I = 0x1

.field public static final VELOCITY_POST_LAYOUT:I = 0x0

.field public static final VELOCITY_STATIC_LAYOUT:I = 0x3

.field public static final VELOCITY_STATIC_POST_LAYOUT:I = 0x2


# instance fields
.field firstDown:Z

.field private lastPos:F

.field private lastY:F

.field private mAnimationStartTime:J

.field private mBeginState:I

.field private mBoundsCheck:Landroid/graphics/RectF;

.field mCurrentState:I

.field mDebugPath:I

.field private mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

.field private mDecoratorsHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mDelayedApply:Z

.field private mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

.field mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

.field private mEndState:I

.field mEndWrapHeight:I

.field mEndWrapWidth:I

.field mFrameArrayList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/MotionController;",
            ">;"
        }
    .end annotation
.end field

.field private mFrames:I

.field mHeightMeasureMode:I

.field private mInLayout:Z

.field private mInRotation:Z

.field mInTransition:Z

.field mIndirectTransition:Z

.field private mInteractionEnabled:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mInverseMatrix:Landroid/graphics/Matrix;

.field mIsAnimating:Z

.field private mKeepAnimating:Z

.field private mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

.field private mLastDrawTime:J

.field private mLastFps:F

.field private mLastHeightMeasureSpec:I

.field mLastLayoutHeight:I

.field mLastLayoutWidth:I

.field mLastVelocity:F

.field private mLastWidthMeasureSpec:I

.field private mListenerPosition:F

.field private mListenerState:I

.field protected mMeasureDuringTransition:Z

.field mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

.field private mNeedsFireTransitionCompleted:Z

.field mOldHeight:I

.field mOldWidth:I

.field private mOnComplete:Ljava/lang/Runnable;

.field private mOnHideHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mOnShowHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field mPostInterpolationPosition:F

.field mPreRotate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/utils/ViewState;",
            ">;"
        }
    .end annotation
.end field

.field private mPreRotateHeight:I

.field private mPreRotateWidth:I

.field private mPreviouseRotation:I

.field mProgressInterpolator:Landroid/view/animation/Interpolator;

.field private mRegionView:Landroid/view/View;

.field mRotatMode:I

.field mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

.field private mScheduledTransitionTo:[I

.field mScheduledTransitions:I

.field mScrollTargetDT:F

.field mScrollTargetDX:F

.field mScrollTargetDY:F

.field mScrollTargetTime:J

.field mStartWrapHeight:I

.field mStartWrapWidth:I

.field private mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

.field private mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

.field mTempRect:Landroid/graphics/Rect;

.field private mTemporalInterpolator:Z

.field mTransitionCompleted:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionDuration:F

.field mTransitionGoalPosition:F

.field private mTransitionInstantly:Z

.field mTransitionLastPosition:F

.field private mTransitionLastTime:J

.field private mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

.field private mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mTransitionPosition:F

.field mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field mUndergoingMotion:Z

.field mWidthMeasureMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    #@0
    .line 1118
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 1014
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    #@6
    const/4 v0, 0x0

    #@7
    .line 1015
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@9
    const/4 v1, -0x1

    #@a
    .line 1016
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@c
    .line 1017
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@e
    .line 1018
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@10
    const/4 v1, 0x0

    #@11
    .line 1019
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    #@13
    .line 1020
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    #@15
    const/4 v2, 0x1

    #@16
    .line 1021
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    #@18
    .line 1023
    new-instance v3, Ljava/util/HashMap;

    #@1a
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@1d
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@1f
    const-wide/16 v3, 0x0

    #@21
    .line 1025
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    #@23
    const/high16 v3, 0x3f800000    # 1.0f

    #@25
    .line 1026
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@27
    .line 1027
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@29
    .line 1028
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@2b
    .line 1030
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@2d
    .line 1032
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@2f
    .line 1033
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    #@31
    .line 1040
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@33
    .line 1044
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    #@35
    .line 1045
    new-instance v3, Landroidx/constraintlayout/motion/utils/StopLogic;

    #@37
    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    #@3a
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    #@3c
    .line 1046
    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    #@3e
    invoke-direct {v3, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@41
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    #@43
    .line 1050
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    #@45
    .line 1057
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    #@47
    .line 1062
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    #@49
    .line 1064
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    #@4b
    .line 1065
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    #@4d
    .line 1066
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    #@4f
    .line 1067
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@51
    .line 1068
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    #@53
    const-wide/16 v2, -0x1

    #@55
    .line 1069
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    #@57
    .line 1070
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    #@59
    .line 1071
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    #@5b
    .line 1072
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    #@5d
    .line 1073
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    #@5f
    .line 1080
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    #@61
    .line 1088
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    #@63
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    #@66
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    #@68
    .line 1089
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    #@6a
    .line 1091
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    #@6c
    .line 1092
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    #@6e
    .line 1093
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    #@70
    .line 1094
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    #@72
    .line 1095
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRotatMode:I

    #@74
    .line 1096
    new-instance v0, Ljava/util/HashMap;

    #@76
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@79
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    #@7b
    .line 1100
    new-instance v0, Landroid/graphics/Rect;

    #@7d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@80
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    #@82
    .line 1101
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    #@84
    .line 1114
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@86
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@88
    .line 2877
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@8a
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@8d
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@8f
    .line 3786
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    #@91
    .line 4005
    new-instance v0, Landroid/graphics/RectF;

    #@93
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@96
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    #@98
    .line 4006
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    #@9a
    .line 4007
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    #@9c
    .line 4415
    new-instance v0, Ljava/util/ArrayList;

    #@9e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a1
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    #@a3
    .line 1119
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    #@a6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
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
    .line 1123
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 1014
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    #@6
    const/4 v0, 0x0

    #@7
    .line 1015
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@9
    const/4 v1, -0x1

    #@a
    .line 1016
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@c
    .line 1017
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@e
    .line 1018
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@10
    const/4 v1, 0x0

    #@11
    .line 1019
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    #@13
    .line 1020
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    #@15
    const/4 v2, 0x1

    #@16
    .line 1021
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    #@18
    .line 1023
    new-instance v3, Ljava/util/HashMap;

    #@1a
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@1d
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@1f
    const-wide/16 v3, 0x0

    #@21
    .line 1025
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    #@23
    const/high16 v3, 0x3f800000    # 1.0f

    #@25
    .line 1026
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@27
    .line 1027
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@29
    .line 1028
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@2b
    .line 1030
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@2d
    .line 1032
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@2f
    .line 1033
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    #@31
    .line 1040
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@33
    .line 1044
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    #@35
    .line 1045
    new-instance v3, Landroidx/constraintlayout/motion/utils/StopLogic;

    #@37
    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    #@3a
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    #@3c
    .line 1046
    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    #@3e
    invoke-direct {v3, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@41
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    #@43
    .line 1050
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    #@45
    .line 1057
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    #@47
    .line 1062
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    #@49
    .line 1064
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    #@4b
    .line 1065
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    #@4d
    .line 1066
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    #@4f
    .line 1067
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@51
    .line 1068
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    #@53
    const-wide/16 v2, -0x1

    #@55
    .line 1069
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    #@57
    .line 1070
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    #@59
    .line 1071
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    #@5b
    .line 1072
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    #@5d
    .line 1073
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    #@5f
    .line 1080
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    #@61
    .line 1088
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    #@63
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    #@66
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    #@68
    .line 1089
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    #@6a
    .line 1091
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    #@6c
    .line 1092
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    #@6e
    .line 1093
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    #@70
    .line 1094
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    #@72
    .line 1095
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRotatMode:I

    #@74
    .line 1096
    new-instance v0, Ljava/util/HashMap;

    #@76
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@79
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    #@7b
    .line 1100
    new-instance v0, Landroid/graphics/Rect;

    #@7d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@80
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    #@82
    .line 1101
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    #@84
    .line 1114
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@86
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@88
    .line 2877
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@8a
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@8d
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@8f
    .line 3786
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    #@91
    .line 4005
    new-instance v0, Landroid/graphics/RectF;

    #@93
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@96
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    #@98
    .line 4006
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    #@9a
    .line 4007
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    #@9c
    .line 4415
    new-instance p1, Ljava/util/ArrayList;

    #@9e
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@a1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    #@a3
    .line 1124
    invoke-direct {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    #@a6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
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
    .line 1128
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 1014
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    #@6
    const/4 p3, 0x0

    #@7
    .line 1015
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@9
    const/4 v0, -0x1

    #@a
    .line 1016
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@c
    .line 1017
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@e
    .line 1018
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@10
    const/4 v0, 0x0

    #@11
    .line 1019
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    #@13
    .line 1020
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    #@15
    const/4 v1, 0x1

    #@16
    .line 1021
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    #@18
    .line 1023
    new-instance v2, Ljava/util/HashMap;

    #@1a
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@1d
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@1f
    const-wide/16 v2, 0x0

    #@21
    .line 1025
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    #@23
    const/high16 v2, 0x3f800000    # 1.0f

    #@25
    .line 1026
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@27
    .line 1027
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@29
    .line 1028
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@2b
    .line 1030
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@2d
    .line 1032
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@2f
    .line 1033
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIndirectTransition:Z

    #@31
    .line 1040
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@33
    .line 1044
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    #@35
    .line 1045
    new-instance v2, Landroidx/constraintlayout/motion/utils/StopLogic;

    #@37
    invoke-direct {v2}, Landroidx/constraintlayout/motion/utils/StopLogic;-><init>()V

    #@3a
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    #@3c
    .line 1046
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    #@3e
    invoke-direct {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@41
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    #@43
    .line 1050
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->firstDown:Z

    #@45
    .line 1057
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    #@47
    .line 1062
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    #@49
    .line 1064
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    #@4b
    .line 1065
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    #@4d
    .line 1066
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    #@4f
    .line 1067
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@51
    .line 1068
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    #@53
    const-wide/16 v1, -0x1

    #@55
    .line 1069
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    #@57
    .line 1070
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    #@59
    .line 1071
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    #@5b
    .line 1072
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    #@5d
    .line 1073
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    #@5f
    .line 1080
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    #@61
    .line 1088
    new-instance p3, Landroidx/constraintlayout/core/motion/utils/KeyCache;

    #@63
    invoke-direct {p3}, Landroidx/constraintlayout/core/motion/utils/KeyCache;-><init>()V

    #@66
    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    #@68
    .line 1089
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    #@6a
    .line 1091
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    #@6c
    .line 1092
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    #@6e
    .line 1093
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    #@70
    .line 1094
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    #@72
    .line 1095
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRotatMode:I

    #@74
    .line 1096
    new-instance p3, Ljava/util/HashMap;

    #@76
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    #@79
    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    #@7b
    .line 1100
    new-instance p3, Landroid/graphics/Rect;

    #@7d
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    #@80
    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    #@82
    .line 1101
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    #@84
    .line 1114
    sget-object p3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@86
    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@88
    .line 2877
    new-instance p3, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@8a
    invoke-direct {p3, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@8d
    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@8f
    .line 3786
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    #@91
    .line 4005
    new-instance p3, Landroid/graphics/RectF;

    #@93
    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    #@96
    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    #@98
    .line 4006
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    #@9a
    .line 4007
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    #@9c
    .line 4415
    new-instance p1, Ljava/util/ArrayList;

    #@9e
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@a1
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    #@a3
    .line 1129
    invoke-direct {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->init(Landroid/util/AttributeSet;)V

    #@a6
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;
    .registers 1

    #@0
    .line 995
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .registers 1

    #@0
    .line 995
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@2
    return p0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .registers 5

    #@0
    .line 995
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    #@3
    return-void
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/motion/widget/MotionLayout;ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .registers 6

    #@0
    .line 995
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    #@3
    return-void
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .registers 1

    #@0
    .line 995
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    #@2
    return p0
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .registers 1

    #@0
    .line 995
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    #@2
    return p0
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 1

    #@0
    .line 995
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setupMotionViews()V

    #@3
    return-void
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/motion/widget/MotionLayout;IIIIZZ)V
    .registers 7

    #@0
    .line 995
    invoke-virtual/range {p0 .. p6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveMeasuredDimension(IIIIZZ)V

    #@3
    return-void
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .registers 5

    #@0
    .line 995
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    #@3
    return-void
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .registers 5

    #@0
    .line 995
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    #@3
    return-void
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .registers 5

    #@0
    .line 995
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    #@3
    return-void
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    .registers 5

    #@0
    .line 995
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    #@3
    return-void
.end method

.method static synthetic access$200(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .registers 1

    #@0
    .line 995
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@2
    return p0
.end method

.method static synthetic access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;
    .registers 2

    #@0
    .line 995
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->toRect(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static synthetic access$2100(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .registers 1

    #@0
    .line 995
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotateWidth:I

    #@2
    return p0
.end method

.method static synthetic access$2200(Landroidx/constraintlayout/motion/widget/MotionLayout;)I
    .registers 1

    #@0
    .line 995
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotateHeight:I

    #@2
    return p0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .registers 1

    #@0
    .line 995
    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    #@2
    return p0
.end method

.method static synthetic access$302(Landroidx/constraintlayout/motion/widget/MotionLayout;Z)Z
    .registers 2

    #@0
    .line 995
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    #@2
    return p1
.end method

.method static synthetic access$400(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .registers 1

    #@0
    .line 995
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@2
    return-object p0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .registers 1

    #@0
    .line 995
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@2
    return-object p0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .registers 1

    #@0
    .line 995
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@2
    return-object p0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    .registers 1

    #@0
    .line 995
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@2
    return-object p0
.end method

.method static synthetic access$800(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .registers 1

    #@0
    .line 995
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$900(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .registers 1

    #@0
    .line 995
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private callTransformedTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "event",
            "offsetX",
            "offsetY"
        }
    .end annotation

    #@0
    .line 4010
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    #@3
    move-result-object v0

    #@4
    .line 4012
    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_17

    #@a
    .line 4013
    invoke-virtual {p2, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@d
    .line 4014
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@10
    move-result p1

    #@11
    neg-float p3, p3

    #@12
    neg-float p4, p4

    #@13
    .line 4015
    invoke-virtual {p2, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@16
    return p1

    #@17
    .line 4020
    :cond_17
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@1a
    move-result-object p2

    #@1b
    .line 4022
    invoke-virtual {p2, p3, p4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    #@1e
    .line 4024
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    #@20
    if-nez p3, :cond_29

    #@22
    .line 4025
    new-instance p3, Landroid/graphics/Matrix;

    #@24
    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    #@27
    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    #@29
    .line 4027
    :cond_29
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    #@2b
    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    #@2e
    .line 4028
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInverseMatrix:Landroid/graphics/Matrix;

    #@30
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    #@33
    .line 4030
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@36
    move-result p1

    #@37
    .line 4032
    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    #@3a
    return p1
.end method

.method private checkStructure()V
    .registers 12

    #@0
    .line 3901
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    const-string v1, "MotionLayout"

    #@4
    if-nez v0, :cond_c

    #@6
    const-string v0, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    #@8
    .line 3902
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    return-void

    #@c
    .line 3906
    :cond_c
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    #@f
    move-result v0

    #@10
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@12
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    #@15
    move-result v3

    #@16
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {p0, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->checkStructure(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    #@1d
    .line 3907
    new-instance v0, Landroid/util/SparseIntArray;

    #@1f
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@22
    .line 3908
    new-instance v2, Landroid/util/SparseIntArray;

    #@24
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    #@27
    .line 3909
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@29
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v3

    #@31
    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_e1

    #@37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@3d
    .line 3910
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@3f
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@41
    if-ne v4, v5, :cond_48

    #@43
    const-string v5, "CHECK: CURRENT"

    #@45
    .line 3911
    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 3913
    :cond_48
    invoke-direct {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->checkStructure(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@4b
    .line 3914
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    #@4e
    move-result v5

    #@4f
    .line 3915
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    #@52
    move-result v4

    #@53
    .line 3916
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@56
    move-result-object v6

    #@57
    invoke-static {v6, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    #@5a
    move-result-object v6

    #@5b
    .line 3917
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@5e
    move-result-object v7

    #@5f
    invoke-static {v7, v4}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    #@62
    move-result-object v7

    #@63
    .line 3918
    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    #@66
    move-result v8

    #@67
    const-string v9, "->"

    #@69
    if-ne v8, v4, :cond_85

    #@6b
    .line 3920
    new-instance v8, Ljava/lang/StringBuilder;

    #@6d
    const-string v10, "CHECK: two transitions with the same start and end "

    #@6f
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@72
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v8

    #@76
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v8

    #@7a
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v8

    #@82
    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    .line 3923
    :cond_85
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    #@88
    move-result v8

    #@89
    if-ne v8, v5, :cond_a5

    #@8b
    .line 3925
    new-instance v8, Ljava/lang/StringBuilder;

    #@8d
    const-string v10, "CHECK: you can\'t have reverse transitions"

    #@8f
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@92
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v8

    #@96
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v8

    #@9a
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v7

    #@9e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v7

    #@a2
    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    .line 3928
    :cond_a5
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    #@a8
    .line 3929
    invoke-virtual {v2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@ab
    .line 3930
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@ad
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@b0
    move-result-object v5

    #@b1
    if-nez v5, :cond_c5

    #@b3
    .line 3931
    new-instance v5, Ljava/lang/StringBuilder;

    #@b5
    const-string v7, " no such constraintSetStart "

    #@b7
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@ba
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v5

    #@be
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v5

    #@c2
    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c5
    .line 3934
    :cond_c5
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@c7
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@ca
    move-result-object v4

    #@cb
    if-nez v4, :cond_31

    #@cd
    .line 3935
    new-instance v4, Ljava/lang/StringBuilder;

    #@cf
    const-string v5, " no such constraintSetEnd "

    #@d1
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v4

    #@d8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v4

    #@dc
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@df
    goto/16 :goto_31

    #@e1
    :cond_e1
    return-void
.end method

.method private checkStructure(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "csetId",
            "set"
        }
    .end annotation

    #@0
    .line 3941
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    #@7
    move-result-object p1

    #@8
    .line 3942
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x0

    #@d
    move v2, v1

    #@e
    :goto_e
    const/4 v3, -0x1

    #@f
    const-string v4, "CHECK: "

    #@11
    const-string v5, "MotionLayout"

    #@13
    if-ge v2, v0, :cond_6e

    #@15
    .line 3944
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v6

    #@19
    .line 3945
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    #@1c
    move-result v7

    #@1d
    if-ne v7, v3, :cond_47

    #@1f
    .line 3947
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    const-string v8, " ALL VIEWS SHOULD HAVE ID\'s "

    #@2a
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    .line 3948
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@31
    move-result-object v8

    #@32
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@35
    move-result-object v8

    #@36
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    const-string v8, " does not!"

    #@3c
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 3947
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 3950
    :cond_47
    invoke-virtual {p2, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@4a
    move-result-object v3

    #@4b
    if-nez v3, :cond_6b

    #@4d
    .line 3952
    new-instance v3, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@52
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    const-string v4, " NO CONSTRAINTS for "

    #@58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v3

    #@5c
    invoke-static {v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    #@6d
    goto :goto_e

    #@6e
    .line 3955
    :cond_6e
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintSet;->getKnownIds()[I

    #@71
    move-result-object v0

    #@72
    .line 3956
    :goto_72
    array-length v2, v0

    #@73
    if-ge v1, v2, :cond_ec

    #@75
    .line 3957
    aget v2, v0, v1

    #@77
    .line 3958
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@7a
    move-result-object v6

    #@7b
    invoke-static {v6, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    #@7e
    move-result-object v6

    #@7f
    .line 3959
    aget v7, v0, v1

    #@81
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    #@84
    move-result-object v7

    #@85
    if-nez v7, :cond_a1

    #@87
    .line 3960
    new-instance v7, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8c
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v7

    #@90
    const-string v8, " NO View matches id "

    #@92
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v7

    #@96
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v7

    #@9a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v7

    #@9e
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a1
    .line 3962
    :cond_a1
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->getHeight(I)I

    #@a4
    move-result v7

    #@a5
    const-string v8, ") no LAYOUT_HEIGHT"

    #@a7
    const-string v9, "("

    #@a9
    if-ne v7, v3, :cond_c7

    #@ab
    .line 3963
    new-instance v7, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b0
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v7

    #@b4
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v7

    #@b8
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v7

    #@bc
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v7

    #@c0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v7

    #@c4
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c7
    .line 3965
    :cond_c7
    invoke-virtual {p2, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->getWidth(I)I

    #@ca
    move-result v2

    #@cb
    if-ne v2, v3, :cond_e9

    #@cd
    .line 3966
    new-instance v2, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d2
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v2

    #@d6
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v2

    #@da
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v2

    #@de
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v2

    #@e2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v2

    #@e6
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e9
    :cond_e9
    add-int/lit8 v1, v1, 0x1

    #@eb
    goto :goto_72

    #@ec
    :cond_ec
    return-void
.end method

.method private checkStructure(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transition"
        }
    .end annotation

    #@0
    .line 3976
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    #@7
    move-result p1

    #@8
    if-ne v0, p1, :cond_11

    #@a
    const-string p1, "MotionLayout"

    #@c
    const-string v0, "CHECK: start and end constraint set should not be the same!"

    #@e
    .line 3977
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    :cond_11
    return-void
.end method

.method private computeCurrentPositions()V
    .registers 5

    #@0
    .line 2118
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_1c

    #@7
    .line 2120
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 2121
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@d
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionController;

    #@13
    if-nez v3, :cond_16

    #@15
    goto :goto_19

    #@16
    .line 2125
    :cond_16
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->setStartCurrentState(Landroid/view/View;)V

    #@19
    :goto_19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_5

    #@1c
    :cond_1c
    return-void
.end method

.method private debugPos()V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    .line 3448
    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_64

    #@7
    .line 3449
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    .line 3450
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    const-string v3, " "

    #@f
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 3451
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@2d
    move-result-object v4

    #@2e
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@30
    invoke-static {v4, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    .line 3452
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@47
    move-result v4

    #@48
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    .line 3453
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@53
    move-result v1

    #@54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    const-string v2, "MotionLayout"

    #@5e
    .line 3450
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@61
    add-int/lit8 v0, v0, 0x1

    #@63
    goto :goto_1

    #@64
    :cond_64
    return-void
.end method

.method private evaluateLayout()V
    .registers 12

    #@0
    .line 3533
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@4
    sub-float/2addr v0, v1

    #@5
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    #@8
    move-result v0

    #@9
    .line 3534
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@c
    move-result-wide v1

    #@d
    .line 3537
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@f
    instance-of v4, v3, Landroidx/constraintlayout/motion/utils/StopLogic;

    #@11
    const v5, 0x3089705f    # 1.0E-9f

    #@14
    const/4 v6, 0x0

    #@15
    if-nez v4, :cond_22

    #@17
    .line 3538
    iget-wide v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    #@19
    sub-long v7, v1, v7

    #@1b
    long-to-float v4, v7

    #@1c
    mul-float/2addr v4, v0

    #@1d
    mul-float/2addr v4, v5

    #@1e
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@20
    div-float/2addr v4, v7

    #@21
    goto :goto_23

    #@22
    :cond_22
    move v4, v6

    #@23
    .line 3540
    :goto_23
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@25
    add-float/2addr v7, v4

    #@26
    .line 3543
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    #@28
    if-eqz v4, :cond_2c

    #@2a
    .line 3544
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@2c
    :cond_2c
    cmpl-float v4, v0, v6

    #@2e
    const/4 v8, 0x0

    #@2f
    if-lez v4, :cond_37

    #@31
    .line 3547
    iget v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@33
    cmpl-float v9, v7, v9

    #@35
    if-gez v9, :cond_41

    #@37
    :cond_37
    cmpg-float v9, v0, v6

    #@39
    if-gtz v9, :cond_45

    #@3b
    iget v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@3d
    cmpg-float v9, v7, v9

    #@3f
    if-gtz v9, :cond_45

    #@41
    .line 3549
    :cond_41
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@43
    const/4 v9, 0x1

    #@44
    goto :goto_46

    #@45
    :cond_45
    move v9, v8

    #@46
    :goto_46
    if-eqz v3, :cond_5c

    #@48
    if-nez v9, :cond_5c

    #@4a
    .line 3553
    iget-boolean v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    #@4c
    if-eqz v9, :cond_58

    #@4e
    .line 3554
    iget-wide v9, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    #@50
    sub-long/2addr v1, v9

    #@51
    long-to-float v1, v1

    #@52
    mul-float/2addr v1, v5

    #@53
    .line 3555
    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@56
    move-result v7

    #@57
    goto :goto_5c

    #@58
    .line 3557
    :cond_58
    invoke-interface {v3, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@5b
    move-result v7

    #@5c
    :cond_5c
    :goto_5c
    if-lez v4, :cond_64

    #@5e
    .line 3560
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@60
    cmpl-float v1, v7, v1

    #@62
    if-gez v1, :cond_6e

    #@64
    :cond_64
    cmpg-float v0, v0, v6

    #@66
    if-gtz v0, :cond_70

    #@68
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@6a
    cmpg-float v0, v7, v0

    #@6c
    if-gtz v0, :cond_70

    #@6e
    .line 3562
    :cond_6e
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@70
    .line 3564
    :cond_70
    iput v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    #@72
    .line 3565
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    #@75
    move-result v0

    #@76
    .line 3566
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@79
    move-result-wide v9

    #@7a
    .line 3567
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    #@7c
    if-nez v1, :cond_7f

    #@7e
    goto :goto_83

    #@7f
    :cond_7f
    invoke-interface {v1, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@82
    move-result v7

    #@83
    :goto_83
    if-ge v8, v0, :cond_9d

    #@85
    .line 3569
    invoke-virtual {p0, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@88
    move-result-object v2

    #@89
    .line 3570
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@8b
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    move-result-object v1

    #@8f
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

    #@91
    if-eqz v1, :cond_9a

    #@93
    .line 3572
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    #@95
    move v3, v7

    #@96
    move-wide v4, v9

    #@97
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    #@9a
    :cond_9a
    add-int/lit8 v8, v8, 0x1

    #@9c
    goto :goto_83

    #@9d
    .line 3575
    :cond_9d
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    #@9f
    if-eqz v0, :cond_a4

    #@a1
    .line 3576
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    #@a4
    :cond_a4
    return-void
.end method

.method private fireTransitionChange()V
    .registers 7

    #@0
    .line 4387
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    #@2
    if-nez v0, :cond_e

    #@4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@6
    if-eqz v0, :cond_76

    #@8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_76

    #@e
    .line 4388
    :cond_e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    #@10
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@12
    cmpl-float v0, v0, v1

    #@14
    if-eqz v0, :cond_76

    #@16
    .line 4389
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    #@18
    const/4 v1, 0x1

    #@19
    const/4 v2, -0x1

    #@1a
    if-eq v0, v2, :cond_45

    #@1c
    .line 4390
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    #@1e
    if-eqz v0, :cond_27

    #@20
    .line 4391
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@22
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@24
    invoke-interface {v0, p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    #@27
    .line 4393
    :cond_27
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@29
    if-eqz v0, :cond_43

    #@2b
    .line 4394
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v0

    #@2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_43

    #@35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    #@3b
    .line 4395
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@3d
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@3f
    invoke-interface {v3, p0, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    #@42
    goto :goto_2f

    #@43
    .line 4398
    :cond_43
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    #@45
    .line 4400
    :cond_45
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    #@47
    .line 4401
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@49
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerPosition:F

    #@4b
    .line 4402
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    #@4d
    if-eqz v2, :cond_56

    #@4f
    .line 4403
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@51
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@53
    invoke-interface {v2, p0, v3, v4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    #@56
    .line 4405
    :cond_56
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@58
    if-eqz v0, :cond_74

    #@5a
    .line 4406
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@5d
    move-result-object v0

    #@5e
    :goto_5e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@61
    move-result v2

    #@62
    if-eqz v2, :cond_74

    #@64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@67
    move-result-object v2

    #@68
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    #@6a
    .line 4407
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@6c
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@6e
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@70
    invoke-interface {v2, p0, v3, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V

    #@73
    goto :goto_5e

    #@74
    .line 4410
    :cond_74
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    #@76
    :cond_76
    return-void
.end method

.method private fireTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "mBeginState",
            "mEndState"
        }
    .end annotation

    #@0
    .line 4801
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 4802
    invoke-interface {v0, p0, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    #@7
    .line 4804
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@9
    if-eqz v0, :cond_1f

    #@b
    .line 4805
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1f

    #@15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    #@1b
    .line 4806
    invoke-interface {v1, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V

    #@1e
    goto :goto_f

    #@1f
    :cond_1f
    return-void
.end method

.method private handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "view",
            "event"
        }
    .end annotation

    #@0
    .line 4048
    instance-of v0, p3, Landroid/view/ViewGroup;

    #@2
    const/4 v1, 0x1

    #@3
    if-eqz v0, :cond_36

    #@5
    .line 4049
    move-object v0, p3

    #@6
    check-cast v0, Landroid/view/ViewGroup;

    #@8
    .line 4050
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    #@b
    move-result v2

    #@c
    sub-int/2addr v2, v1

    #@d
    :goto_d
    if-ltz v2, :cond_36

    #@f
    .line 4052
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v3

    #@13
    .line 4053
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@16
    move-result v4

    #@17
    int-to-float v4, v4

    #@18
    add-float/2addr v4, p1

    #@19
    invoke-virtual {p3}, Landroid/view/View;->getScrollX()I

    #@1c
    move-result v5

    #@1d
    int-to-float v5, v5

    #@1e
    sub-float/2addr v4, v5

    #@1f
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@22
    move-result v5

    #@23
    int-to-float v5, v5

    #@24
    add-float/2addr v5, p2

    #@25
    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    #@28
    move-result v6

    #@29
    int-to-float v6, v6

    #@2a
    sub-float/2addr v5, v6

    #@2b
    invoke-direct {p0, v4, v5, v3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_33

    #@31
    move v0, v1

    #@32
    goto :goto_37

    #@33
    :cond_33
    add-int/lit8 v2, v2, -0x1

    #@35
    goto :goto_d

    #@36
    :cond_36
    const/4 v0, 0x0

    #@37
    :goto_37
    if-nez v0, :cond_75

    #@39
    .line 4061
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    #@3b
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    #@3e
    move-result v3

    #@3f
    int-to-float v3, v3

    #@40
    add-float/2addr v3, p1

    #@41
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    #@44
    move-result v4

    #@45
    int-to-float v4, v4

    #@46
    sub-float/2addr v3, v4

    #@47
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    #@4a
    move-result v4

    #@4b
    int-to-float v4, v4

    #@4c
    add-float/2addr v4, p2

    #@4d
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    #@50
    move-result v5

    #@51
    int-to-float v5, v5

    #@52
    sub-float/2addr v4, v5

    #@53
    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    #@56
    .line 4063
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    #@59
    move-result v2

    #@5a
    if-nez v2, :cond_6c

    #@5c
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    #@5e
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    #@61
    move-result v3

    #@62
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    #@65
    move-result v4

    #@66
    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    #@69
    move-result v2

    #@6a
    if-eqz v2, :cond_75

    #@6c
    :cond_6c
    neg-float p1, p1

    #@6d
    neg-float p2, p2

    #@6e
    .line 4064
    invoke-direct {p0, p3, p4, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->callTransformedTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;FF)Z

    #@71
    move-result p1

    #@72
    if-eqz p1, :cond_75

    #@74
    goto :goto_76

    #@75
    :cond_75
    move v1, v0

    #@76
    :goto_76
    return v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    #@0
    .line 3829
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInEditMode()Z

    #@3
    move-result v0

    #@4
    sput-boolean v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    #@6
    const/4 v0, -0x1

    #@7
    if-eqz p1, :cond_8b

    #@9
    .line 3831
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@c
    move-result-object v1

    #@d
    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout:[I

    #@f
    .line 3832
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@12
    move-result-object p1

    #@13
    .line 3833
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@16
    move-result v1

    #@17
    const/4 v2, 0x1

    #@18
    const/4 v3, 0x0

    #@19
    move v5, v2

    #@1a
    move v4, v3

    #@1b
    :goto_1b
    if-ge v4, v1, :cond_78

    #@1d
    .line 3837
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@20
    move-result v6

    #@21
    .line 3838
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_layoutDescription:I

    #@23
    if-ne v6, v7, :cond_35

    #@25
    .line 3839
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@28
    move-result v6

    #@29
    .line 3840
    new-instance v7, Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2b
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@2e
    move-result-object v8

    #@2f
    invoke-direct {v7, v8, p0, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    #@32
    iput-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@34
    goto :goto_75

    #@35
    .line 3841
    :cond_35
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_currentState:I

    #@37
    if-ne v6, v7, :cond_40

    #@39
    .line 3842
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@3c
    move-result v6

    #@3d
    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@3f
    goto :goto_75

    #@40
    .line 3843
    :cond_40
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_motionProgress:I

    #@42
    if-ne v6, v7, :cond_4e

    #@44
    const/4 v7, 0x0

    #@45
    .line 3844
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@48
    move-result v6

    #@49
    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@4b
    .line 3845
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@4d
    goto :goto_75

    #@4e
    .line 3846
    :cond_4e
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_applyMotionScene:I

    #@50
    if-ne v6, v7, :cond_57

    #@52
    .line 3847
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@55
    move-result v5

    #@56
    goto :goto_75

    #@57
    .line 3848
    :cond_57
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_showPaths:I

    #@59
    if-ne v6, v7, :cond_6b

    #@5b
    .line 3849
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@5d
    if-nez v7, :cond_75

    #@5f
    .line 3850
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@62
    move-result v6

    #@63
    if-eqz v6, :cond_67

    #@65
    const/4 v6, 0x2

    #@66
    goto :goto_68

    #@67
    :cond_67
    move v6, v3

    #@68
    :goto_68
    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@6a
    goto :goto_75

    #@6b
    .line 3852
    :cond_6b
    sget v7, Landroidx/constraintlayout/widget/R$styleable;->MotionLayout_motionDebug:I

    #@6d
    if-ne v6, v7, :cond_75

    #@6f
    .line 3853
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@72
    move-result v6

    #@73
    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@75
    :cond_75
    :goto_75
    add-int/lit8 v4, v4, 0x1

    #@77
    goto :goto_1b

    #@78
    .line 3856
    :cond_78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@7b
    .line 3857
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@7d
    if-nez p1, :cond_86

    #@7f
    const-string p1, "MotionLayout"

    #@81
    const-string v1, "WARNING NO app:layoutDescription tag"

    #@83
    .line 3858
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    :cond_86
    if-nez v5, :cond_8b

    #@88
    const/4 p1, 0x0

    #@89
    .line 3861
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@8b
    .line 3864
    :cond_8b
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@8d
    if-eqz p1, :cond_92

    #@8f
    .line 3865
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->checkStructure()V

    #@92
    .line 3867
    :cond_92
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@94
    if-ne p1, v0, :cond_b0

    #@96
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@98
    if-eqz p1, :cond_b0

    #@9a
    .line 3869
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    #@9d
    move-result p1

    #@9e
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@a0
    .line 3870
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@a2
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    #@a5
    move-result p1

    #@a6
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@a8
    .line 3874
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@aa
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    #@ad
    move-result p1

    #@ae
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@b0
    :cond_b0
    return-void
.end method

.method private processTransitionCompleted()V
    .registers 6

    #@0
    .line 4446
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    #@2
    if-nez v0, :cond_f

    #@4
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@6
    if-eqz v0, :cond_e

    #@8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_f

    #@e
    :cond_e
    return-void

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    .line 4449
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mIsAnimating:Z

    #@12
    .line 4450
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v0

    #@18
    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_4b

    #@1e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Ljava/lang/Integer;

    #@24
    .line 4451
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    #@26
    if-eqz v2, :cond_2f

    #@28
    .line 4452
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v3

    #@2c
    invoke-interface {v2, p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    #@2f
    .line 4454
    :cond_2f
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@31
    if-eqz v2, :cond_18

    #@33
    .line 4455
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v2

    #@37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_18

    #@3d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v3

    #@41
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    #@43
    .line 4456
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@46
    move-result v4

    #@47
    invoke-interface {v3, p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    #@4a
    goto :goto_37

    #@4b
    .line 4460
    :cond_4b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@50
    return-void
.end method

.method private setupMotionViews()V
    .registers 16

    #@0
    .line 1765
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    .line 1767
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@6
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    #@9
    const/4 v1, 0x1

    #@a
    .line 1768
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@c
    .line 1769
    new-instance v2, Landroid/util/SparseArray;

    #@e
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@11
    const/4 v3, 0x0

    #@12
    move v4, v3

    #@13
    :goto_13
    if-ge v4, v0, :cond_2b

    #@15
    .line 1771
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@18
    move-result-object v5

    #@19
    .line 1772
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    #@1c
    move-result v6

    #@1d
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v5

    #@23
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    #@25
    invoke-virtual {v2, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@28
    add-int/lit8 v4, v4, 0x1

    #@2a
    goto :goto_13

    #@2b
    .line 1774
    :cond_2b
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    #@2e
    move-result v2

    #@2f
    .line 1775
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@32
    move-result v4

    #@33
    .line 1776
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@35
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->gatPathMotionArc()I

    #@38
    move-result v5

    #@39
    const/4 v6, -0x1

    #@3a
    if-eq v5, v6, :cond_53

    #@3c
    move v7, v3

    #@3d
    :goto_3d
    if-ge v7, v0, :cond_53

    #@3f
    .line 1779
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@41
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@44
    move-result-object v9

    #@45
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v8

    #@49
    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionController;

    #@4b
    if-eqz v8, :cond_50

    #@4d
    .line 1781
    invoke-virtual {v8, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->setPathMotionArc(I)V

    #@50
    :cond_50
    add-int/lit8 v7, v7, 0x1

    #@52
    goto :goto_3d

    #@53
    .line 1786
    :cond_53
    new-instance v11, Landroid/util/SparseBooleanArray;

    #@55
    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    #@58
    .line 1787
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@5a
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    #@5d
    move-result v5

    #@5e
    new-array v12, v5, [I

    #@60
    move v5, v3

    #@61
    move v13, v5

    #@62
    :goto_62
    if-ge v5, v0, :cond_89

    #@64
    .line 1790
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@67
    move-result-object v7

    #@68
    .line 1791
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@6a
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    move-result-object v7

    #@6e
    check-cast v7, Landroidx/constraintlayout/motion/widget/MotionController;

    #@70
    .line 1792
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    #@73
    move-result v8

    #@74
    if-eq v8, v6, :cond_86

    #@76
    .line 1793
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    #@79
    move-result v8

    #@7a
    invoke-virtual {v11, v8, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@7d
    add-int/lit8 v8, v13, 0x1

    #@7f
    .line 1794
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    #@82
    move-result v7

    #@83
    aput v7, v12, v13

    #@85
    move v13, v8

    #@86
    :cond_86
    add-int/lit8 v5, v5, 0x1

    #@88
    goto :goto_62

    #@89
    .line 1797
    :cond_89
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    #@8b
    if-eqz v5, :cond_e3

    #@8d
    move v5, v3

    #@8e
    :goto_8e
    if-ge v5, v13, :cond_a9

    #@90
    .line 1799
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@92
    aget v7, v12, v5

    #@94
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    #@97
    move-result-object v7

    #@98
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    move-result-object v6

    #@9c
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionController;

    #@9e
    if-nez v6, :cond_a1

    #@a0
    goto :goto_a6

    #@a1
    .line 1803
    :cond_a1
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@a3
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    #@a6
    :goto_a6
    add-int/lit8 v5, v5, 0x1

    #@a8
    goto :goto_8e

    #@a9
    .line 1806
    :cond_a9
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    #@ab
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@ae
    move-result-object v5

    #@af
    :goto_af
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@b2
    move-result v6

    #@b3
    if-eqz v6, :cond_c1

    #@b5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b8
    move-result-object v6

    #@b9
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionHelper;

    #@bb
    .line 1807
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@bd
    invoke-virtual {v6, p0, v7}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V

    #@c0
    goto :goto_af

    #@c1
    :cond_c1
    move v14, v3

    #@c2
    :goto_c2
    if-ge v14, v13, :cond_10a

    #@c4
    .line 1810
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@c6
    aget v6, v12, v14

    #@c8
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    #@cb
    move-result-object v6

    #@cc
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@cf
    move-result-object v5

    #@d0
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    #@d2
    if-nez v5, :cond_d5

    #@d4
    goto :goto_e0

    #@d5
    .line 1814
    :cond_d5
    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@d7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@da
    move-result-wide v9

    #@db
    move v6, v2

    #@dc
    move v7, v4

    #@dd
    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    #@e0
    :goto_e0
    add-int/lit8 v14, v14, 0x1

    #@e2
    goto :goto_c2

    #@e3
    :cond_e3
    move v14, v3

    #@e4
    :goto_e4
    if-ge v14, v13, :cond_10a

    #@e6
    .line 1819
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@e8
    aget v6, v12, v14

    #@ea
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    #@ed
    move-result-object v6

    #@ee
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f1
    move-result-object v5

    #@f2
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    #@f4
    if-nez v5, :cond_f7

    #@f6
    goto :goto_107

    #@f7
    .line 1823
    :cond_f7
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@f9
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    #@fc
    .line 1824
    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@fe
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@101
    move-result-wide v9

    #@102
    move v6, v2

    #@103
    move v7, v4

    #@104
    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    #@107
    :goto_107
    add-int/lit8 v14, v14, 0x1

    #@109
    goto :goto_e4

    #@10a
    :cond_10a
    move v12, v3

    #@10b
    :goto_10b
    if-ge v12, v0, :cond_13a

    #@10d
    .line 1830
    invoke-virtual {p0, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@110
    move-result-object v5

    #@111
    .line 1831
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@113
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@116
    move-result-object v6

    #@117
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionController;

    #@119
    .line 1832
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    #@11c
    move-result v5

    #@11d
    invoke-virtual {v11, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    #@120
    move-result v5

    #@121
    if-eqz v5, :cond_124

    #@123
    goto :goto_137

    #@124
    :cond_124
    if-eqz v6, :cond_137

    #@126
    .line 1837
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@128
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    #@12b
    .line 1838
    iget v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@12d
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@130
    move-result-wide v9

    #@131
    move-object v5, v6

    #@132
    move v6, v2

    #@133
    move v7, v4

    #@134
    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    #@137
    :cond_137
    :goto_137
    add-int/lit8 v12, v12, 0x1

    #@139
    goto :goto_10b

    #@13a
    .line 1842
    :cond_13a
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@13c
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStaggered()F

    #@13f
    move-result v2

    #@140
    const/4 v4, 0x0

    #@141
    cmpl-float v4, v2, v4

    #@143
    if-eqz v4, :cond_21c

    #@145
    float-to-double v4, v2

    #@146
    const-wide/16 v6, 0x0

    #@148
    cmpg-double v4, v4, v6

    #@14a
    if-gez v4, :cond_14e

    #@14c
    move v4, v1

    #@14d
    goto :goto_14f

    #@14e
    :cond_14e
    move v4, v3

    #@14f
    .line 1846
    :goto_14f
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@152
    move-result v2

    #@153
    const v5, -0x800001

    #@156
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    #@159
    move v7, v3

    #@15a
    move v9, v5

    #@15b
    move v8, v6

    #@15c
    :goto_15c
    if-ge v7, v0, :cond_18b

    #@15e
    .line 1849
    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@160
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@163
    move-result-object v11

    #@164
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@167
    move-result-object v10

    #@168
    check-cast v10, Landroidx/constraintlayout/motion/widget/MotionController;

    #@16a
    .line 1850
    iget v11, v10, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    #@16c
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    #@16f
    move-result v11

    #@170
    if-nez v11, :cond_173

    #@172
    goto :goto_18c

    #@173
    .line 1854
    :cond_173
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    #@176
    move-result v11

    #@177
    .line 1855
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    #@17a
    move-result v10

    #@17b
    if-eqz v4, :cond_17f

    #@17d
    sub-float/2addr v10, v11

    #@17e
    goto :goto_180

    #@17f
    :cond_17f
    add-float/2addr v10, v11

    #@180
    .line 1857
    :goto_180
    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    #@183
    move-result v8

    #@184
    .line 1858
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    #@187
    move-result v9

    #@188
    add-int/lit8 v7, v7, 0x1

    #@18a
    goto :goto_15c

    #@18b
    :cond_18b
    move v1, v3

    #@18c
    :goto_18c
    const/high16 v7, 0x3f800000    # 1.0f

    #@18e
    if-eqz v1, :cond_1ef

    #@190
    move v1, v3

    #@191
    :goto_191
    if-ge v1, v0, :cond_1b6

    #@193
    .line 1865
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@195
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@198
    move-result-object v9

    #@199
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19c
    move-result-object v8

    #@19d
    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionController;

    #@19f
    .line 1866
    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    #@1a1
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    #@1a4
    move-result v9

    #@1a5
    if-nez v9, :cond_1b3

    #@1a7
    .line 1867
    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    #@1a9
    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    #@1ac
    move-result v6

    #@1ad
    .line 1868
    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    #@1af
    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    #@1b2
    move-result v5

    #@1b3
    :cond_1b3
    add-int/lit8 v1, v1, 0x1

    #@1b5
    goto :goto_191

    #@1b6
    :cond_1b6
    :goto_1b6
    if-ge v3, v0, :cond_21c

    #@1b8
    .line 1872
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@1ba
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@1bd
    move-result-object v8

    #@1be
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c1
    move-result-object v1

    #@1c2
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

    #@1c4
    .line 1873
    iget v8, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    #@1c6
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    #@1c9
    move-result v8

    #@1ca
    if-nez v8, :cond_1ec

    #@1cc
    sub-float v8, v7, v2

    #@1ce
    div-float v8, v7, v8

    #@1d0
    .line 1875
    iput v8, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    #@1d2
    if-eqz v4, :cond_1e1

    #@1d4
    .line 1877
    iget v8, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    #@1d6
    sub-float v8, v5, v8

    #@1d8
    sub-float v9, v5, v6

    #@1da
    div-float/2addr v8, v9

    #@1db
    mul-float/2addr v8, v2

    #@1dc
    sub-float v8, v2, v8

    #@1de
    iput v8, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    #@1e0
    goto :goto_1ec

    #@1e1
    .line 1879
    :cond_1e1
    iget v8, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    #@1e3
    sub-float/2addr v8, v6

    #@1e4
    mul-float/2addr v8, v2

    #@1e5
    sub-float v9, v5, v6

    #@1e7
    div-float/2addr v8, v9

    #@1e8
    sub-float v8, v2, v8

    #@1ea
    iput v8, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    #@1ec
    :cond_1ec
    :goto_1ec
    add-int/lit8 v3, v3, 0x1

    #@1ee
    goto :goto_1b6

    #@1ef
    :cond_1ef
    :goto_1ef
    if-ge v3, v0, :cond_21c

    #@1f1
    .line 1885
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@1f3
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@1f6
    move-result-object v5

    #@1f7
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1fa
    move-result-object v1

    #@1fb
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

    #@1fd
    .line 1886
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    #@200
    move-result v5

    #@201
    .line 1887
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    #@204
    move-result v6

    #@205
    if-eqz v4, :cond_209

    #@207
    sub-float/2addr v6, v5

    #@208
    goto :goto_20a

    #@209
    :cond_209
    add-float/2addr v6, v5

    #@20a
    :goto_20a
    sub-float v5, v7, v2

    #@20c
    div-float v5, v7, v5

    #@20e
    .line 1889
    iput v5, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    #@210
    sub-float/2addr v6, v8

    #@211
    mul-float/2addr v6, v2

    #@212
    sub-float v5, v9, v8

    #@214
    div-float/2addr v6, v5

    #@215
    sub-float v5, v2, v6

    #@217
    .line 1890
    iput v5, v1, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    #@219
    add-int/lit8 v3, v3, 0x1

    #@21b
    goto :goto_1ef

    #@21c
    :cond_21c
    return-void
.end method

.method private toRect(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cw"
        }
    .end annotation

    #@0
    .line 2870
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getY()I

    #@5
    move-result v1

    #@6
    iput v1, v0, Landroid/graphics/Rect;->top:I

    #@8
    .line 2871
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    #@a
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getX()I

    #@d
    move-result v1

    #@e
    iput v1, v0, Landroid/graphics/Rect;->left:I

    #@10
    .line 2872
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    #@12
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@15
    move-result v1

    #@16
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    #@18
    iget v2, v2, Landroid/graphics/Rect;->left:I

    #@1a
    add-int/2addr v1, v2

    #@1b
    iput v1, v0, Landroid/graphics/Rect;->right:I

    #@1d
    .line 2873
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    #@1f
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@22
    move-result p1

    #@23
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    #@25
    iget v1, v1, Landroid/graphics/Rect;->top:I

    #@27
    add-int/2addr p1, v1

    #@28
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    #@2a
    .line 2874
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTempRect:Landroid/graphics/Rect;

    #@2c
    return-object p1
.end method

.method private static willJump(FFF)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "velocity",
            "position",
            "maxAcceleration"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    cmpl-float v1, p0, v0

    #@3
    const/4 v2, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    const/high16 v4, 0x40000000    # 2.0f

    #@7
    if-lez v1, :cond_1a

    #@9
    div-float v0, p0, p2

    #@b
    mul-float/2addr p0, v0

    #@c
    mul-float/2addr p2, v0

    #@d
    mul-float/2addr p2, v0

    #@e
    div-float/2addr p2, v4

    #@f
    sub-float/2addr p0, p2

    #@10
    add-float/2addr p1, p0

    #@11
    const/high16 p0, 0x3f800000    # 1.0f

    #@13
    cmpl-float p0, p1, p0

    #@15
    if-lez p0, :cond_18

    #@17
    goto :goto_19

    #@18
    :cond_18
    move v2, v3

    #@19
    :goto_19
    return v2

    #@1a
    :cond_1a
    neg-float v1, p0

    #@1b
    div-float/2addr v1, p2

    #@1c
    mul-float/2addr p0, v1

    #@1d
    mul-float/2addr p2, v1

    #@1e
    mul-float/2addr p2, v1

    #@1f
    div-float/2addr p2, v4

    #@20
    add-float/2addr p0, p2

    #@21
    add-float/2addr p1, p0

    #@22
    cmpg-float p0, p1, v0

    #@24
    if-gez p0, :cond_27

    #@26
    goto :goto_28

    #@27
    :cond_27
    move v2, v3

    #@28
    :goto_28
    return v2
.end method


# virtual methods
.method public addTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    #@0
    .line 4300
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 4301
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@b
    .line 4303
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method animateTo(F)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    #@0
    .line 2086
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 2090
    :cond_5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@7
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@9
    cmpl-float v1, v1, v2

    #@b
    if-eqz v1, :cond_13

    #@d
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    #@f
    if-eqz v1, :cond_13

    #@11
    .line 2093
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@13
    .line 2096
    :cond_13
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@15
    cmpl-float v2, v1, p1

    #@17
    if-nez v2, :cond_1a

    #@19
    return-void

    #@1a
    :cond_1a
    const/4 v2, 0x0

    #@1b
    .line 2099
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    #@1d
    .line 2101
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@1f
    .line 2102
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    #@22
    move-result p1

    #@23
    int-to-float p1, p1

    #@24
    const/high16 v0, 0x447a0000    # 1000.0f

    #@26
    div-float/2addr p1, v0

    #@27
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@29
    .line 2103
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@2b
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@2e
    const/4 p1, 0x0

    #@2f
    .line 2104
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@31
    .line 2105
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@33
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    #@36
    move-result-object p1

    #@37
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    #@39
    .line 2106
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    #@3b
    .line 2107
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@3e
    move-result-wide v2

    #@3f
    iput-wide v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    #@41
    const/4 p1, 0x1

    #@42
    .line 2108
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@44
    .line 2109
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@46
    .line 2113
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@48
    .line 2114
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    #@4b
    return-void
.end method

.method public applyViewTransition(ILandroidx/constraintlayout/motion/widget/MotionController;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewTransitionId",
            "motionController"
        }
    .end annotation

    #@0
    .line 4860
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 4861
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->applyViewTransition(ILandroidx/constraintlayout/motion/widget/MotionController;)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    return p1
.end method

.method public cloneConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;
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
    .line 4579
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return-object p1

    #@6
    .line 4582
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@9
    move-result-object p1

    #@a
    .line 4583
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    #@c
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    #@f
    .line 4584
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@12
    return-object v0
.end method

.method disableAutoTransition(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable"
        }
    .end annotation

    #@0
    .line 4772
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 4775
    :cond_5
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->disableAutoTransition(Z)V

    #@8
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    #@0
    .line 3467
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_18

    #@4
    .line 3468
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_18

    #@e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    #@14
    .line 3469
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPreDraw(Landroid/graphics/Canvas;)V

    #@17
    goto :goto_8

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    .line 3472
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    #@1c
    .line 3473
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@1e
    if-eqz v1, :cond_2b

    #@20
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@22
    if-eqz v1, :cond_2b

    #@24
    .line 3474
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@26
    iget-object v1, v1, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@28
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animate()V

    #@2b
    .line 3481
    :cond_2b
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@2e
    .line 3482
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@30
    if-nez v1, :cond_33

    #@32
    return-void

    #@33
    .line 3488
    :cond_33
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@35
    const/4 v2, 0x1

    #@36
    and-int/2addr v1, v2

    #@37
    if-ne v1, v2, :cond_104

    #@39
    .line 3489
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInEditMode()Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_104

    #@3f
    .line 3490
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    #@41
    add-int/2addr v1, v2

    #@42
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    #@44
    .line 3491
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@47
    move-result-wide v3

    #@48
    .line 3492
    iget-wide v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    #@4a
    const-wide/16 v7, -0x1

    #@4c
    cmp-long v1, v5, v7

    #@4e
    if-eqz v1, :cond_6f

    #@50
    sub-long v5, v3, v5

    #@52
    const-wide/32 v7, 0xbebc200

    #@55
    cmp-long v1, v5, v7

    #@57
    if-lez v1, :cond_71

    #@59
    .line 3495
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    #@5b
    int-to-float v1, v1

    #@5c
    long-to-float v5, v5

    #@5d
    const v6, 0x3089705f    # 1.0E-9f

    #@60
    mul-float/2addr v5, v6

    #@61
    div-float/2addr v1, v5

    #@62
    const/high16 v5, 0x42c80000    # 100.0f

    #@64
    mul-float/2addr v1, v5

    #@65
    float-to-int v1, v1

    #@66
    int-to-float v1, v1

    #@67
    div-float/2addr v1, v5

    #@68
    .line 3496
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    #@6a
    .line 3497
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrames:I

    #@6c
    .line 3498
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    #@6e
    goto :goto_71

    #@6f
    .line 3501
    :cond_6f
    iput-wide v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastDrawTime:J

    #@71
    .line 3503
    :cond_71
    :goto_71
    new-instance v0, Landroid/graphics/Paint;

    #@73
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@76
    const/high16 v1, 0x42280000    # 42.0f

    #@78
    .line 3504
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    #@7b
    .line 3505
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    #@7e
    move-result v1

    #@7f
    const/high16 v3, 0x447a0000    # 1000.0f

    #@81
    mul-float/2addr v1, v3

    #@82
    float-to-int v1, v1

    #@83
    int-to-float v1, v1

    #@84
    const/high16 v3, 0x41200000    # 10.0f

    #@86
    div-float/2addr v1, v3

    #@87
    .line 3506
    new-instance v4, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastFps:F

    #@8e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@91
    move-result-object v4

    #@92
    const-string v5, " fps "

    #@94
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@9a
    invoke-static {p0, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    #@9d
    move-result-object v5

    #@9e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    const-string v5, " -> "

    #@a4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v4

    #@ac
    .line 3507
    new-instance v5, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v4

    #@b5
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@b7
    invoke-static {p0, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    #@ba
    move-result-object v5

    #@bb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v4

    #@bf
    const-string v5, " (progress: "

    #@c1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v4

    #@c5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v1

    #@c9
    const-string v4, " ) state="

    #@cb
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v1

    #@cf
    .line 3508
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@d1
    const/4 v5, -0x1

    #@d2
    if-ne v4, v5, :cond_d7

    #@d4
    const-string v4, "undefined"

    #@d6
    goto :goto_db

    #@d7
    :cond_d7
    invoke-static {p0, v4}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;

    #@da
    move-result-object v4

    #@db
    :goto_db
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v1

    #@df
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v1

    #@e3
    const/high16 v4, -0x1000000

    #@e5
    .line 3509
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@e8
    .line 3510
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@eb
    move-result v4

    #@ec
    add-int/lit8 v4, v4, -0x1d

    #@ee
    int-to-float v4, v4

    #@ef
    const/high16 v5, 0x41300000    # 11.0f

    #@f1
    invoke-virtual {p1, v1, v5, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@f4
    const v4, -0x77ff78

    #@f7
    .line 3511
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@fa
    .line 3512
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@fd
    move-result v4

    #@fe
    add-int/lit8 v4, v4, -0x1e

    #@100
    int-to-float v4, v4

    #@101
    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    #@104
    .line 3516
    :cond_104
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@106
    if-le v0, v2, :cond_122

    #@108
    .line 3517
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    #@10a
    if-nez v0, :cond_113

    #@10c
    .line 3518
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    #@10e
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@111
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    #@113
    .line 3520
    :cond_113
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDevModeDraw:Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;

    #@115
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@117
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@119
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    #@11c
    move-result v2

    #@11d
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@11f
    invoke-virtual {v0, p1, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$DevModeDraw;->draw(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V

    #@122
    .line 3522
    :cond_122
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    #@124
    if-eqz v0, :cond_13a

    #@126
    .line 3523
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@129
    move-result-object v0

    #@12a
    :goto_12a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12d
    move-result v1

    #@12e
    if-eqz v1, :cond_13a

    #@130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@133
    move-result-object v1

    #@134
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    #@136
    .line 3524
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPostDraw(Landroid/graphics/Canvas;)V

    #@139
    goto :goto_12a

    #@13a
    :cond_13a
    return-void
.end method

.method public enableTransition(IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "transitionID",
            "enable"
        }
    .end annotation

    #@0
    .line 1151
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@3
    move-result-object p1

    #@4
    if-eqz p2, :cond_b

    #@6
    const/4 p2, 0x1

    #@7
    .line 1153
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    #@a
    return-void

    #@b
    .line 1156
    :cond_b
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@d
    iget-object p2, p2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@f
    if-ne p1, p2, :cond_33

    #@11
    .line 1157
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@13
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@15
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getTransitionsWithState(I)Ljava/util/List;

    #@18
    move-result-object p2

    #@19
    .line 1158
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object p2

    #@1d
    :cond_1d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_33

    #@23
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@29
    .line 1159
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_1d

    #@2f
    .line 1160
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@31
    iput-object v0, p2, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@33
    :cond_33
    const/4 p2, 0x0

    #@34
    .line 1165
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    #@37
    return-void
.end method

.method public enableViewTransition(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewTransitionId",
            "enable"
        }
    .end annotation

    #@0
    .line 4833
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 4834
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->enableViewTransition(IZ)V

    #@7
    :cond_7
    return-void
.end method

.method endTrigger(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    #@0
    .line 3581
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_1b

    #@7
    .line 3583
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v2

    #@b
    .line 3584
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@d
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

    #@13
    if-eqz v2, :cond_18

    #@15
    .line 3586
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->endTrigger(Z)V

    #@18
    :cond_18
    add-int/lit8 v1, v1, 0x1

    #@1a
    goto :goto_5

    #@1b
    :cond_1b
    return-void
.end method

.method evaluate(Z)V
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "force"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    .line 3593
    iget-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    #@4
    const-wide/16 v3, -0x1

    #@6
    cmp-long v1, v1, v3

    #@8
    if-nez v1, :cond_10

    #@a
    .line 3594
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@d
    move-result-wide v1

    #@e
    iput-wide v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    #@10
    .line 3596
    :cond_10
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@12
    const/4 v2, 0x0

    #@13
    cmpl-float v3, v1, v2

    #@15
    const/4 v4, -0x1

    #@16
    const/high16 v5, 0x3f800000    # 1.0f

    #@18
    if-lez v3, :cond_20

    #@1a
    cmpg-float v3, v1, v5

    #@1c
    if-gez v3, :cond_20

    #@1e
    .line 3597
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@20
    .line 3601
    :cond_20
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    #@22
    const/4 v6, 0x1

    #@23
    const/4 v7, 0x0

    #@24
    if-nez v3, :cond_32

    #@26
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@28
    if-eqz v3, :cond_23f

    #@2a
    if-nez p1, :cond_32

    #@2c
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@2e
    cmpl-float v3, v3, v1

    #@30
    if-eqz v3, :cond_23f

    #@32
    .line 3602
    :cond_32
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@34
    sub-float/2addr v3, v1

    #@35
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    #@38
    move-result v1

    #@39
    .line 3603
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@3c
    move-result-wide v8

    #@3d
    .line 3606
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@3f
    instance-of v10, v3, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    #@41
    const v11, 0x3089705f    # 1.0E-9f

    #@44
    if-nez v10, :cond_51

    #@46
    .line 3607
    iget-wide v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    #@48
    sub-long v12, v8, v12

    #@4a
    long-to-float v10, v12

    #@4b
    mul-float/2addr v10, v1

    #@4c
    mul-float/2addr v10, v11

    #@4d
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@4f
    div-float/2addr v10, v12

    #@50
    goto :goto_52

    #@51
    :cond_51
    move v10, v2

    #@52
    .line 3609
    :goto_52
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@54
    add-float/2addr v12, v10

    #@55
    .line 3612
    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    #@57
    if-eqz v13, :cond_5b

    #@59
    .line 3613
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@5b
    :cond_5b
    cmpl-float v13, v1, v2

    #@5d
    if-lez v13, :cond_65

    #@5f
    .line 3616
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@61
    cmpl-float v14, v12, v14

    #@63
    if-gez v14, :cond_6f

    #@65
    :cond_65
    cmpg-float v14, v1, v2

    #@67
    if-gtz v14, :cond_75

    #@69
    iget v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@6b
    cmpg-float v14, v12, v14

    #@6d
    if-gtz v14, :cond_75

    #@6f
    .line 3618
    :cond_6f
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@71
    .line 3619
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@73
    move v14, v6

    #@74
    goto :goto_76

    #@75
    :cond_75
    move v14, v7

    #@76
    .line 3625
    :goto_76
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@78
    .line 3626
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@7a
    .line 3627
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    #@7c
    const v15, 0x3727c5ac    # 1.0E-5f

    #@7f
    if-eqz v3, :cond_103

    #@81
    if-nez v14, :cond_103

    #@83
    .line 3633
    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    #@85
    if-eqz v14, :cond_e4

    #@87
    .line 3634
    iget-wide v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    #@89
    sub-long v4, v8, v4

    #@8b
    long-to-float v4, v4

    #@8c
    mul-float/2addr v4, v11

    #@8d
    .line 3635
    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@90
    move-result v3

    #@91
    .line 3636
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@93
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    #@95
    const/4 v10, 0x2

    #@96
    if-ne v4, v5, :cond_a2

    #@98
    .line 3637
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/utils/StopLogic;->isStopped()Z

    #@9b
    move-result v4

    #@9c
    if-eqz v4, :cond_a0

    #@9e
    move v4, v10

    #@9f
    goto :goto_a3

    #@a0
    :cond_a0
    move v4, v6

    #@a1
    goto :goto_a3

    #@a2
    :cond_a2
    move v4, v7

    #@a3
    .line 3644
    :goto_a3
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@a5
    .line 3646
    iput-wide v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    #@a7
    .line 3647
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@a9
    instance-of v8, v5, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    #@ab
    if-eqz v8, :cond_e2

    #@ad
    .line 3648
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    #@af
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    #@b2
    move-result v5

    #@b3
    .line 3649
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@b5
    .line 3650
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    #@b8
    move-result v8

    #@b9
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@bb
    mul-float/2addr v8, v9

    #@bc
    cmpg-float v8, v8, v15

    #@be
    if-gtz v8, :cond_c4

    #@c0
    if-ne v4, v10, :cond_c4

    #@c2
    .line 3651
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@c4
    :cond_c4
    cmpl-float v8, v5, v2

    #@c6
    if-lez v8, :cond_d4

    #@c8
    const/high16 v8, 0x3f800000    # 1.0f

    #@ca
    cmpl-float v9, v3, v8

    #@cc
    if-ltz v9, :cond_d4

    #@ce
    .line 3654
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@d0
    .line 3655
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@d2
    const/high16 v3, 0x3f800000    # 1.0f

    #@d4
    :cond_d4
    cmpg-float v5, v5, v2

    #@d6
    if-gez v5, :cond_e2

    #@d8
    cmpg-float v5, v3, v2

    #@da
    if-gtz v5, :cond_e2

    #@dc
    .line 3658
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@de
    .line 3659
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@e0
    move v12, v2

    #@e1
    goto :goto_106

    #@e2
    :cond_e2
    move v12, v3

    #@e3
    goto :goto_106

    #@e4
    .line 3666
    :cond_e4
    invoke-interface {v3, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@e7
    move-result v3

    #@e8
    .line 3667
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@ea
    instance-of v5, v4, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    #@ec
    if-eqz v5, :cond_f7

    #@ee
    .line 3668
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    #@f0
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    #@f3
    move-result v4

    #@f4
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@f6
    goto :goto_101

    #@f7
    :cond_f7
    add-float/2addr v12, v10

    #@f8
    .line 3670
    invoke-interface {v4, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@fb
    move-result v4

    #@fc
    sub-float/2addr v4, v3

    #@fd
    mul-float/2addr v4, v1

    #@fe
    div-float/2addr v4, v10

    #@ff
    .line 3671
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@101
    :goto_101
    move v12, v3

    #@102
    goto :goto_105

    #@103
    .line 3676
    :cond_103
    iput v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@105
    :goto_105
    move v4, v7

    #@106
    .line 3678
    :goto_106
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@108
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    #@10b
    move-result v3

    #@10c
    cmpl-float v3, v3, v15

    #@10e
    if-lez v3, :cond_115

    #@110
    .line 3679
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@112
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@115
    :cond_115
    if-eq v4, v6, :cond_13e

    #@117
    if-lez v13, :cond_11f

    #@119
    .line 3683
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@11b
    cmpl-float v3, v12, v3

    #@11d
    if-gez v3, :cond_129

    #@11f
    :cond_11f
    cmpg-float v3, v1, v2

    #@121
    if-gtz v3, :cond_12d

    #@123
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@125
    cmpg-float v3, v12, v3

    #@127
    if-gtz v3, :cond_12d

    #@129
    .line 3685
    :cond_129
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@12b
    .line 3686
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@12d
    :cond_12d
    const/high16 v3, 0x3f800000    # 1.0f

    #@12f
    cmpl-float v4, v12, v3

    #@131
    if-gez v4, :cond_137

    #@133
    cmpg-float v3, v12, v2

    #@135
    if-gtz v3, :cond_13e

    #@137
    .line 3690
    :cond_137
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@139
    .line 3691
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@13b
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@13e
    .line 3695
    :cond_13e
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    #@141
    move-result v3

    #@142
    .line 3696
    iput-boolean v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    #@144
    .line 3697
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@147
    move-result-wide v4

    #@148
    .line 3701
    iput v12, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    #@14a
    .line 3702
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    #@14c
    if-nez v8, :cond_150

    #@14e
    move v8, v12

    #@14f
    goto :goto_154

    #@150
    :cond_150
    invoke-interface {v8, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@153
    move-result v8

    #@154
    .line 3703
    :goto_154
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    #@156
    if-eqz v9, :cond_16c

    #@158
    .line 3704
    iget v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@15a
    div-float v10, v1, v10

    #@15c
    add-float/2addr v10, v12

    #@15d
    invoke-interface {v9, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@160
    move-result v9

    #@161
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@163
    .line 3705
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mProgressInterpolator:Landroid/view/animation/Interpolator;

    #@165
    invoke-interface {v10, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@168
    move-result v10

    #@169
    sub-float/2addr v9, v10

    #@16a
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@16c
    :cond_16c
    move v9, v7

    #@16d
    :goto_16d
    if-ge v9, v3, :cond_195

    #@16f
    .line 3708
    invoke-virtual {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@172
    move-result-object v10

    #@173
    .line 3709
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@175
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@178
    move-result-object v11

    #@179
    move-object/from16 v16, v11

    #@17b
    check-cast v16, Landroidx/constraintlayout/motion/widget/MotionController;

    #@17d
    if-eqz v16, :cond_192

    #@17f
    .line 3711
    iget-boolean v11, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    #@181
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeyCache:Landroidx/constraintlayout/core/motion/utils/KeyCache;

    #@183
    move-object/from16 v17, v10

    #@185
    move/from16 v18, v8

    #@187
    move-wide/from16 v19, v4

    #@189
    move-object/from16 v21, v15

    #@18b
    invoke-virtual/range {v16 .. v21}, Landroidx/constraintlayout/motion/widget/MotionController;->interpolate(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z

    #@18e
    move-result v10

    #@18f
    or-int/2addr v10, v11

    #@190
    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    #@192
    :cond_192
    add-int/lit8 v9, v9, 0x1

    #@194
    goto :goto_16d

    #@195
    :cond_195
    if-lez v13, :cond_19d

    #@197
    .line 3719
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@199
    cmpl-float v3, v12, v3

    #@19b
    if-gez v3, :cond_1a7

    #@19d
    :cond_19d
    cmpg-float v3, v1, v2

    #@19f
    if-gtz v3, :cond_1a9

    #@1a1
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@1a3
    cmpg-float v3, v12, v3

    #@1a5
    if-gtz v3, :cond_1a9

    #@1a7
    :cond_1a7
    move v3, v6

    #@1a8
    goto :goto_1aa

    #@1a9
    :cond_1a9
    move v3, v7

    #@1aa
    .line 3721
    :goto_1aa
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    #@1ac
    if-nez v4, :cond_1b9

    #@1ae
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@1b0
    if-nez v4, :cond_1b9

    #@1b2
    if-eqz v3, :cond_1b9

    #@1b4
    .line 3722
    sget-object v4, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@1b6
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@1b9
    .line 3724
    :cond_1b9
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    #@1bb
    if-eqz v4, :cond_1c0

    #@1bd
    .line 3725
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    #@1c0
    .line 3728
    :cond_1c0
    iget-boolean v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    #@1c2
    xor-int/2addr v3, v6

    #@1c3
    or-int/2addr v3, v4

    #@1c4
    iput-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    #@1c6
    cmpg-float v3, v12, v2

    #@1c8
    if-gtz v3, :cond_1e4

    #@1ca
    .line 3731
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@1cc
    const/4 v4, -0x1

    #@1cd
    if-eq v3, v4, :cond_1e4

    #@1cf
    .line 3732
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@1d1
    if-eq v4, v3, :cond_1e4

    #@1d3
    .line 3734
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@1d5
    .line 3735
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@1d7
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@1da
    move-result-object v3

    #@1db
    .line 3736
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@1de
    .line 3737
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@1e0
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@1e3
    move v7, v6

    #@1e4
    :cond_1e4
    float-to-double v3, v12

    #@1e5
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@1e7
    cmpl-double v3, v3, v8

    #@1e9
    if-ltz v3, :cond_202

    #@1eb
    .line 3745
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@1ed
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@1ef
    if-eq v3, v4, :cond_202

    #@1f1
    .line 3747
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@1f3
    .line 3748
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@1f5
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@1f8
    move-result-object v3

    #@1f9
    .line 3749
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyCustomAttributes(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@1fc
    .line 3750
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@1fe
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@201
    move v7, v6

    #@202
    .line 3754
    :cond_202
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    #@204
    if-nez v3, :cond_221

    #@206
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@208
    if-eqz v3, :cond_20b

    #@20a
    goto :goto_221

    #@20b
    :cond_20b
    if-lez v13, :cond_213

    #@20d
    const/high16 v3, 0x3f800000    # 1.0f

    #@20f
    cmpl-float v4, v12, v3

    #@211
    if-eqz v4, :cond_21b

    #@213
    :cond_213
    cmpg-float v3, v1, v2

    #@215
    if-gez v3, :cond_224

    #@217
    cmpl-float v3, v12, v2

    #@219
    if-nez v3, :cond_224

    #@21b
    .line 3758
    :cond_21b
    sget-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@21d
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@220
    goto :goto_224

    #@221
    .line 3755
    :cond_221
    :goto_221
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    #@224
    .line 3761
    :cond_224
    :goto_224
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mKeepAnimating:Z

    #@226
    if-nez v3, :cond_23f

    #@228
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@22a
    if-nez v3, :cond_23f

    #@22c
    if-lez v13, :cond_234

    #@22e
    const/high16 v3, 0x3f800000    # 1.0f

    #@230
    cmpl-float v4, v12, v3

    #@232
    if-eqz v4, :cond_23c

    #@234
    :cond_234
    cmpg-float v1, v1, v2

    #@236
    if-gez v1, :cond_23f

    #@238
    cmpl-float v1, v12, v2

    #@23a
    if-nez v1, :cond_23f

    #@23c
    .line 3762
    :cond_23c
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    #@23f
    .line 3765
    :cond_23f
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@241
    const/high16 v3, 0x3f800000    # 1.0f

    #@243
    cmpl-float v3, v1, v3

    #@245
    if-ltz v3, :cond_253

    #@247
    .line 3766
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@249
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@24b
    if-eq v1, v2, :cond_24e

    #@24d
    goto :goto_24f

    #@24e
    :cond_24e
    move v6, v7

    #@24f
    .line 3769
    :goto_24f
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@251
    :goto_251
    move v7, v6

    #@252
    goto :goto_262

    #@253
    :cond_253
    cmpg-float v1, v1, v2

    #@255
    if-gtz v1, :cond_262

    #@257
    .line 3771
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@259
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@25b
    if-eq v1, v2, :cond_25e

    #@25d
    goto :goto_25f

    #@25e
    :cond_25e
    move v6, v7

    #@25f
    .line 3774
    :goto_25f
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@261
    goto :goto_251

    #@262
    .line 3777
    :cond_262
    :goto_262
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    #@264
    or-int/2addr v1, v7

    #@265
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    #@267
    if-eqz v7, :cond_270

    #@269
    .line 3779
    iget-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    #@26b
    if-nez v1, :cond_270

    #@26d
    .line 3780
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    #@270
    .line 3783
    :cond_270
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@272
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@274
    return-void
.end method

.method protected fireTransitionCompleted()V
    .registers 5

    #@0
    .line 4421
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    #@2
    const/4 v1, 0x1

    #@3
    if-nez v0, :cond_f

    #@5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@7
    if-eqz v0, :cond_42

    #@9
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_42

    #@f
    .line 4422
    :cond_f
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    #@11
    const/4 v2, -0x1

    #@12
    if-ne v0, v2, :cond_42

    #@14
    .line 4423
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@16
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mListenerState:I

    #@18
    .line 4425
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_32

    #@20
    .line 4426
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v3

    #@26
    sub-int/2addr v3, v1

    #@27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Ljava/lang/Integer;

    #@2d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@30
    move-result v0

    #@31
    goto :goto_33

    #@32
    :cond_32
    move v0, v2

    #@33
    .line 4428
    :goto_33
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@35
    if-eq v0, v3, :cond_42

    #@37
    if-eq v3, v2, :cond_42

    #@39
    .line 4429
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionCompleted:Ljava/util/ArrayList;

    #@3b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@42
    .line 4433
    :cond_42
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->processTransitionCompleted()V

    #@45
    .line 4434
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    #@47
    if-eqz v0, :cond_4c

    #@49
    .line 4435
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@4c
    .line 4438
    :cond_4c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    #@4e
    if-eqz v0, :cond_66

    #@50
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    #@52
    if-lez v2, :cond_66

    #@54
    const/4 v2, 0x0

    #@55
    .line 4439
    aget v0, v0, v2

    #@57
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    #@5a
    .line 4440
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    #@5c
    array-length v3, v0

    #@5d
    sub-int/2addr v3, v1

    #@5e
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@61
    .line 4441
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    #@63
    sub-int/2addr v0, v1

    #@64
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    #@66
    :cond_66
    return-void
.end method

.method public fireTrigger(IZF)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "triggerId",
            "positive",
            "progress"
        }
    .end annotation

    #@0
    .line 4376
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 4377
    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionTrigger(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V

    #@7
    .line 4379
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@9
    if-eqz v0, :cond_1f

    #@b
    .line 4380
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1f

    #@15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    #@1b
    .line 4381
    invoke-interface {v1, p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;->onTransitionTrigger(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V

    #@1e
    goto :goto_f

    #@1f
    :cond_1f
    return-void
.end method

.method getAnchorDpDt(IFFF[F)V
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
            "mTouchAnchorId",
            "pos",
            "locationX",
            "locationY",
            "mAnchorDpDt"
        }
    .end annotation

    #@0
    .line 4248
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewById(I)Landroid/view/View;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionController;

    #@c
    if-eqz v0, :cond_1a

    #@e
    .line 4253
    invoke-virtual {v0, p2, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    #@11
    .line 4254
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    #@14
    move-result p1

    #@15
    .line 4262
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastPos:F

    #@17
    .line 4263
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->lastY:F

    #@19
    goto :goto_4c

    #@1a
    :cond_1a
    if-nez v1, :cond_2c

    #@1c
    .line 4265
    new-instance p2, Ljava/lang/StringBuilder;

    #@1e
    const-string p3, ""

    #@20
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object p1

    #@27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object p1

    #@2b
    goto :goto_38

    #@2c
    .line 4266
    :cond_2c
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@2f
    move-result-object p2

    #@30
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@33
    move-result-object p2

    #@34
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@37
    move-result-object p1

    #@38
    .line 4267
    :goto_38
    new-instance p2, Ljava/lang/StringBuilder;

    #@3a
    const-string p3, "WARNING could not find view id "

    #@3c
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3f
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object p1

    #@43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object p1

    #@47
    const-string p2, "MotionLayout"

    #@49
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    :goto_4c
    return-void
.end method

.method public getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;
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
    .line 4564
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return-object p1

    #@6
    .line 4567
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@9
    move-result-object p1

    #@a
    return-object p1
.end method

.method public getConstraintSetIds()[I
    .registers 2

    #@0
    .line 4547
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 4550
    :cond_6
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSetIds()[I

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method getConstraintSetNames(I)Ljava/lang/String;
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
    .line 4760
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return-object p1

    #@6
    .line 4763
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintName(I)Ljava/lang/String;

    #@9
    move-result-object p1

    #@a
    return-object p1
.end method

.method public getCurrentState()I
    .registers 2

    #@0
    .line 4221
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@2
    return v0
.end method

.method public getDebugMode(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showPaths"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_4

    #@2
    const/4 p1, 0x2

    #@3
    goto :goto_5

    #@4
    :cond_4
    const/4 p1, 0x1

    #@5
    .line 4001
    :goto_5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@7
    .line 4002
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    #@a
    return-void
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition;",
            ">;"
        }
    .end annotation

    #@0
    .line 4681
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 4684
    :cond_6
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDefinedTransitions()Ljava/util/ArrayList;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDesignTool()Landroidx/constraintlayout/motion/widget/DesignTool;
    .registers 2

    #@0
    .line 4467
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 4468
    new-instance v0, Landroidx/constraintlayout/motion/widget/DesignTool;

    #@6
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/DesignTool;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    #@b
    .line 4470
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDesignTool:Landroidx/constraintlayout/motion/widget/DesignTool;

    #@d
    return-object v0
.end method

.method public getEndState()I
    .registers 2

    #@0
    .line 4703
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@2
    return v0
.end method

.method getMotionController(I)Landroidx/constraintlayout/motion/widget/MotionController;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mTouchAnchorId"
        }
    .end annotation

    #@0
    .line 1104
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object p1

    #@6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionController;

    #@c
    return-object p1
.end method

.method protected getNanoTime()J
    .registers 3

    #@0
    .line 1138
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public getProgress()F
    .registers 2

    #@0
    .line 4230
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@2
    return v0
.end method

.method public getScene()Landroidx/constraintlayout/motion/widget/MotionScene;
    .registers 2

    #@0
    .line 3897
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    return-object v0
.end method

.method public getStartState()I
    .registers 2

    #@0
    .line 4694
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@2
    return v0
.end method

.method public getTargetPosition()F
    .registers 2

    #@0
    .line 4713
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@2
    return v0
.end method

.method public getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
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
    .line 4736
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getTransitionById(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .registers 2

    #@0
    .line 1693
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 1694
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@6
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@b
    .line 1696
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@d
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->recordState()V

    #@10
    .line 1697
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@12
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->getTransitionState()Landroid/os/Bundle;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method

.method public getTransitionTimeMs()J
    .registers 3

    #@0
    .line 4277
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    const/high16 v1, 0x447a0000    # 1000.0f

    #@4
    if-eqz v0, :cond_e

    #@6
    .line 4278
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    #@9
    move-result v0

    #@a
    int-to-float v0, v0

    #@b
    div-float/2addr v0, v1

    #@c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@e
    .line 4280
    :cond_e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@10
    mul-float/2addr v0, v1

    #@11
    float-to-long v0, v0

    #@12
    return-wide v0
.end method

.method public getVelocity()F
    .registers 2

    #@0
    .line 2452
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@2
    return v0
.end method

.method public getViewVelocity(Landroid/view/View;FF[FI)V
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
            "view",
            "posOnViewX",
            "posOnViewY",
            "returnVelocity",
            "type"
        }
    .end annotation

    #@0
    .line 2465
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@2
    .line 2466
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@4
    .line 2467
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@6
    if-eqz v2, :cond_2a

    #@8
    .line 2469
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@a
    sub-float/2addr v0, v1

    #@b
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    #@e
    move-result v0

    #@f
    .line 2470
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@11
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@13
    const v3, 0x3727c5ac    # 1.0E-5f

    #@16
    add-float/2addr v2, v3

    #@17
    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@1a
    move-result v1

    #@1b
    .line 2471
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@1d
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@1f
    invoke-interface {v2, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@22
    move-result v2

    #@23
    sub-float/2addr v1, v2

    #@24
    div-float/2addr v1, v3

    #@25
    mul-float/2addr v0, v1

    #@26
    .line 2474
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@28
    div-float/2addr v0, v1

    #@29
    goto :goto_2b

    #@2a
    :cond_2a
    move v2, v1

    #@2b
    .line 2477
    :goto_2b
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@2d
    instance-of v3, v1, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    #@2f
    if-eqz v3, :cond_37

    #@31
    .line 2478
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionInterpolator;

    #@33
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;->getVelocity()F

    #@36
    move-result v0

    #@37
    .line 2482
    :cond_37
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@39
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionController;

    #@3f
    and-int/lit8 v3, p5, 0x1

    #@41
    if-nez v3, :cond_52

    #@43
    .line 2485
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@46
    move-result v3

    #@47
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@4a
    move-result v4

    #@4b
    move v5, p2

    #@4c
    move v6, p3

    #@4d
    move-object v7, p4

    #@4e
    .line 2484
    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionController;->getPostLayoutDvDp(FIIFF[F)V

    #@51
    goto :goto_55

    #@52
    .line 2488
    :cond_52
    invoke-virtual {v1, v2, p2, p3, p4}, Landroidx/constraintlayout/motion/widget/MotionController;->getDpDt(FFF[F)V

    #@55
    :goto_55
    const/4 p1, 0x2

    #@56
    if-ge p5, p1, :cond_64

    #@58
    const/4 p1, 0x0

    #@59
    .line 2491
    aget p2, p4, p1

    #@5b
    mul-float/2addr p2, v0

    #@5c
    aput p2, p4, p1

    #@5e
    const/4 p1, 0x1

    #@5f
    .line 2492
    aget p2, p4, p1

    #@61
    mul-float/2addr p2, v0

    #@62
    aput p2, p4, p1

    #@64
    :cond_64
    return-void
.end method

.method public isAttachedToWindow()Z
    .registers 2

    #@0
    .line 1532
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isAttachedToWindow()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isDelayedApplicationOfInitialState()Z
    .registers 2

    #@0
    .line 4871
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    #@2
    return v0
.end method

.method public isInRotation()Z
    .registers 2

    #@0
    .line 2250
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    #@2
    return v0
.end method

.method public isInteractionEnabled()Z
    .registers 2

    #@0
    .line 4797
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    #@2
    return v0
.end method

.method public isViewTransitionEnabled(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewTransitionId"
        }
    .end annotation

    #@0
    .line 4845
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 4846
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->isViewTransitionEnabled(I)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    return p1
.end method

.method public jumpToState(I)V
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
    .line 2263
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    .line 2264
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@8
    .line 2266
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@a
    if-ne v0, p1, :cond_11

    #@c
    const/4 p1, 0x0

    #@d
    .line 2267
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@10
    goto :goto_1e

    #@11
    .line 2268
    :cond_11
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@13
    if-ne v0, p1, :cond_1b

    #@15
    const/high16 p1, 0x3f800000    # 1.0f

    #@17
    .line 2269
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@1a
    goto :goto_1e

    #@1b
    .line 2271
    :cond_1b
    invoke-virtual {p0, p1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    #@1e
    :goto_1e
    return-void
.end method

.method public loadLayoutDescription(I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionScene"
        }
    .end annotation

    #@0
    const-string v0, "unable to parse MotionScene file"

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz p1, :cond_b9

    #@5
    .line 1463
    :try_start_5
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionScene;

    #@7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@a
    move-result-object v3

    #@b
    invoke-direct {v2, v3, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    #@e
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@10
    .line 1464
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@12
    const/4 v3, -0x1

    #@13
    if-ne p1, v3, :cond_2b

    #@15
    .line 1465
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    #@18
    move-result p1

    #@19
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@1b
    .line 1466
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@1d
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    #@20
    move-result p1

    #@21
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@23
    .line 1467
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@25
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    #@28
    move-result p1

    #@29
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@2b
    .line 1469
    :cond_2b
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    #@2e
    move-result p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_b2

    #@2f
    if-eqz p1, :cond_af

    #@31
    .line 1472
    :try_start_31
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getDisplay()Landroid/view/Display;

    #@34
    move-result-object p1

    #@35
    if-nez p1, :cond_39

    #@37
    const/4 p1, 0x0

    #@38
    goto :goto_3d

    #@39
    .line 1473
    :cond_39
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    #@3c
    move-result p1

    #@3d
    :goto_3d
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreviouseRotation:I

    #@3f
    .line 1476
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@41
    if-eqz p1, :cond_6f

    #@43
    .line 1477
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@45
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@48
    move-result-object p1

    #@49
    .line 1478
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@4b
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->readFallback(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@4e
    .line 1479
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    #@50
    if-eqz v1, :cond_66

    #@52
    .line 1480
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@55
    move-result-object v1

    #@56
    :goto_56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@59
    move-result v2

    #@5a
    if-eqz v2, :cond_66

    #@5c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5f
    move-result-object v2

    #@60
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    #@62
    .line 1481
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onFinishedMotionScene(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@65
    goto :goto_56

    #@66
    :cond_66
    if-eqz p1, :cond_6b

    #@68
    .line 1485
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@6b
    .line 1487
    :cond_6b
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@6d
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@6f
    .line 1489
    :cond_6f
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    #@72
    .line 1490
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@74
    if-eqz p1, :cond_87

    #@76
    .line 1491
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    #@78
    if-eqz v1, :cond_83

    #@7a
    .line 1492
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$1;

    #@7c
    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$1;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@7f
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->post(Ljava/lang/Runnable;)Z

    #@82
    goto :goto_bb

    #@83
    .line 1499
    :cond_83
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    #@86
    goto :goto_bb

    #@87
    .line 1502
    :cond_87
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@89
    if-eqz p1, :cond_bb

    #@8b
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@8d
    if-eqz p1, :cond_bb

    #@8f
    .line 1503
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@91
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@93
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getAutoTransition()I

    #@96
    move-result p1

    #@97
    const/4 v1, 0x4

    #@98
    if-ne p1, v1, :cond_bb

    #@9a
    .line 1504
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    #@9d
    .line 1505
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@9f
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@a2
    .line 1506
    sget-object p1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@a4
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_a7} :catch_a8

    #@a7
    goto :goto_bb

    #@a8
    :catch_a8
    move-exception p1

    #@a9
    .line 1512
    :try_start_a9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@ab
    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@ae
    throw v1

    #@af
    .line 1515
    :cond_af
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b1} :catch_b2

    #@b1
    goto :goto_bb

    #@b2
    :catch_b2
    move-exception p1

    #@b3
    .line 1519
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b5
    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b8
    throw v1

    #@b9
    .line 1522
    :cond_b9
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@bb
    :cond_bb
    :goto_bb
    return-void
.end method

.method lookUpConstraintId(Ljava/lang/String;)I
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
    .line 4747
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return p1

    #@6
    .line 4750
    :cond_6
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->lookUpConstraintId(Ljava/lang/String;)I

    #@9
    move-result p1

    #@a
    return p1
.end method

.method protected obtainVelocityTracker()Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;
    .registers 2

    #@0
    .line 1147
    invoke-static {}, Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;->obtain()Landroidx/constraintlayout/motion/widget/MotionLayout$MyTracker;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    #@0
    .line 4145
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    #@3
    .line 4147
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getDisplay()Landroid/view/Display;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_f

    #@9
    .line 4149
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreviouseRotation:I

    #@f
    .line 4152
    :cond_f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@11
    if-eqz v0, :cond_42

    #@13
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@15
    const/4 v2, -0x1

    #@16
    if-eq v1, v2, :cond_42

    #@18
    .line 4153
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@1b
    move-result-object v0

    #@1c
    .line 4154
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@1e
    invoke-virtual {v1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->readFallback(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@21
    .line 4155
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    #@23
    if-eqz v1, :cond_39

    #@25
    .line 4156
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v1

    #@29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_39

    #@2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v2

    #@33
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    #@35
    .line 4157
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onFinishedMotionScene(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@38
    goto :goto_29

    #@39
    :cond_39
    if-eqz v0, :cond_3e

    #@3b
    .line 4161
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@3e
    .line 4163
    :cond_3e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@40
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@42
    .line 4165
    :cond_42
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    #@45
    .line 4166
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@47
    if-eqz v0, :cond_5a

    #@49
    .line 4167
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    #@4b
    if-eqz v1, :cond_56

    #@4d
    .line 4168
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$4;

    #@4f
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$4;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@52
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->post(Ljava/lang/Runnable;)Z

    #@55
    goto :goto_7a

    #@56
    .line 4175
    :cond_56
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    #@59
    goto :goto_7a

    #@5a
    .line 4178
    :cond_5a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@5c
    if-eqz v0, :cond_7a

    #@5e
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@60
    if-eqz v0, :cond_7a

    #@62
    .line 4179
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@64
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@66
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getAutoTransition()I

    #@69
    move-result v0

    #@6a
    const/4 v1, 0x4

    #@6b
    if-ne v0, v1, :cond_7a

    #@6d
    .line 4180
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    #@70
    .line 4181
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@72
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@75
    .line 4182
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@77
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@7a
    :cond_7a
    :goto_7a
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    #@0
    .line 4081
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_ad

    #@5
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    #@7
    if-nez v2, :cond_b

    #@9
    goto/16 :goto_ad

    #@b
    .line 4085
    :cond_b
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@d
    if-eqz v0, :cond_16

    #@f
    .line 4086
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@11
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@13
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->touchEvent(Landroid/view/MotionEvent;)V

    #@16
    .line 4088
    :cond_16
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@18
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@1a
    if-eqz v0, :cond_ad

    #@1c
    .line 4089
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_ad

    #@22
    .line 4090
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@25
    move-result-object v0

    #@26
    if-eqz v0, :cond_ad

    #@28
    .line 4092
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@2b
    move-result v2

    #@2c
    if-nez v2, :cond_48

    #@2e
    .line 4093
    new-instance v2, Landroid/graphics/RectF;

    #@30
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    #@33
    invoke-virtual {v0, p0, v2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    #@36
    move-result-object v2

    #@37
    if-eqz v2, :cond_48

    #@39
    .line 4095
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@3c
    move-result v3

    #@3d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@40
    move-result v4

    #@41
    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_48

    #@47
    return v1

    #@48
    .line 4099
    :cond_48
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegionId()I

    #@4b
    move-result v0

    #@4c
    const/4 v2, -0x1

    #@4d
    if-eq v0, v2, :cond_ad

    #@4f
    .line 4101
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    #@51
    if-eqz v2, :cond_59

    #@53
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    #@56
    move-result v2

    #@57
    if-eq v2, v0, :cond_5f

    #@59
    .line 4102
    :cond_59
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    #@5c
    move-result-object v0

    #@5d
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    #@5f
    .line 4104
    :cond_5f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    #@61
    if-eqz v0, :cond_ad

    #@63
    .line 4105
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    #@65
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@68
    move-result v0

    #@69
    int-to-float v0, v0

    #@6a
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    #@6c
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@6f
    move-result v3

    #@70
    int-to-float v3, v3

    #@71
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    #@73
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    #@76
    move-result v4

    #@77
    int-to-float v4, v4

    #@78
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    #@7a
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    #@7d
    move-result v5

    #@7e
    int-to-float v5, v5

    #@7f
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    #@82
    .line 4106
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBoundsCheck:Landroid/graphics/RectF;

    #@84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@87
    move-result v2

    #@88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@8b
    move-result v3

    #@8c
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    #@8f
    move-result v0

    #@90
    if-eqz v0, :cond_ad

    #@92
    .line 4109
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    #@94
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@97
    move-result v0

    #@98
    int-to-float v0, v0

    #@99
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    #@9b
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@9e
    move-result v2

    #@9f
    int-to-float v2, v2

    #@a0
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRegionView:Landroid/view/View;

    #@a2
    invoke-direct {p0, v0, v2, v3, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->handlesTouchEvent(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    #@a5
    move-result v0

    #@a6
    if-nez v0, :cond_ad

    #@a8
    .line 4111
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@ab
    move-result p1

    #@ac
    return p1

    #@ad
    :cond_ad
    :goto_ad
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 9
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
    const/4 v0, 0x1

    #@1
    .line 3790
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    #@3
    const/4 v1, 0x0

    #@4
    .line 3795
    :try_start_4
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@6
    if-nez v2, :cond_e

    #@8
    .line 3796
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_29

    #@b
    .line 3814
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    #@d
    return-void

    #@e
    :cond_e
    sub-int/2addr p4, p2

    #@f
    sub-int/2addr p5, p3

    #@10
    .line 3801
    :try_start_10
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    #@12
    if-ne p1, p4, :cond_18

    #@14
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I

    #@16
    if-eq p1, p5, :cond_1e

    #@18
    .line 3802
    :cond_18
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    #@1b
    .line 3803
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    #@1e
    .line 3809
    :cond_1e
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutWidth:I

    #@20
    .line 3810
    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastLayoutHeight:I

    #@22
    .line 3811
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOldWidth:I

    #@24
    .line 3812
    iput p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOldHeight:I
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_29

    #@26
    .line 3814
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    #@28
    return-void

    #@29
    :catchall_29
    move-exception p1

    #@2a
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInLayout:Z

    #@2c
    .line 3815
    throw p1
.end method

.method protected onMeasure(II)V
    .registers 10
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
    .line 2913
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez v0, :cond_8

    #@4
    .line 2914
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    #@7
    return-void

    #@8
    .line 2917
    :cond_8
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    #@a
    const/4 v1, 0x0

    #@b
    const/4 v2, 0x1

    #@c
    if-ne v0, p1, :cond_15

    #@e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    #@10
    if-eq v0, p2, :cond_13

    #@12
    goto :goto_15

    #@13
    :cond_13
    move v0, v1

    #@14
    goto :goto_16

    #@15
    :cond_15
    :goto_15
    move v0, v2

    #@16
    .line 2918
    :goto_16
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    #@18
    if-eqz v3, :cond_23

    #@1a
    .line 2919
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mNeedsFireTransitionCompleted:Z

    #@1c
    .line 2920
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    #@1f
    .line 2921
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->processTransitionCompleted()V

    #@22
    move v0, v2

    #@23
    .line 2925
    :cond_23
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDirtyHierarchy:Z

    #@25
    if-eqz v3, :cond_28

    #@27
    move v0, v2

    #@28
    .line 2929
    :cond_28
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I

    #@2a
    .line 2930
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I

    #@2c
    .line 2932
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2e
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    #@31
    move-result v3

    #@32
    .line 2933
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@34
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    #@37
    move-result v4

    #@38
    if-nez v0, :cond_42

    #@3a
    .line 2935
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@3c
    invoke-virtual {v5, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->isNotConfiguredWith(II)Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_68

    #@42
    :cond_42
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@44
    const/4 v6, -0x1

    #@45
    if-eq v5, v6, :cond_68

    #@47
    .line 2936
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    #@4a
    .line 2937
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@4c
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@4e
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@50
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@53
    move-result-object v0

    #@54
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@56
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {p1, p2, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@5d
    .line 2938
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@5f
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    #@62
    .line 2939
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@64
    invoke-virtual {p1, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setMeasuredId(II)V

    #@67
    goto :goto_6e

    #@68
    :cond_68
    if-eqz v0, :cond_6d

    #@6a
    .line 2942
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    #@6d
    :cond_6d
    move v1, v2

    #@6e
    .line 2945
    :goto_6e
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    #@70
    if-nez p1, :cond_74

    #@72
    if-eqz v1, :cond_c3

    #@74
    .line 2946
    :cond_74
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingTop()I

    #@77
    move-result p1

    #@78
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingBottom()I

    #@7b
    move-result p2

    #@7c
    add-int/2addr p1, p2

    #@7d
    .line 2947
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingLeft()I

    #@80
    move-result p2

    #@81
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getPaddingRight()I

    #@84
    move-result v0

    #@85
    add-int/2addr p2, v0

    #@86
    .line 2948
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@88
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@8b
    move-result v0

    #@8c
    add-int/2addr v0, p2

    #@8d
    .line 2949
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@8f
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@92
    move-result p2

    #@93
    add-int/2addr p2, p1

    #@94
    .line 2950
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    #@96
    const/high16 v1, -0x80000000

    #@98
    if-eq p1, v1, :cond_9c

    #@9a
    if-nez p1, :cond_ab

    #@9c
    .line 2951
    :cond_9c
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    #@9e
    int-to-float v0, p1

    #@9f
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    #@a1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    #@a3
    sub-int/2addr v3, p1

    #@a4
    int-to-float p1, v3

    #@a5
    mul-float/2addr v2, p1

    #@a6
    add-float/2addr v0, v2

    #@a7
    float-to-int v0, v0

    #@a8
    .line 2952
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    #@ab
    .line 2954
    :cond_ab
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    #@ad
    if-eq p1, v1, :cond_b1

    #@af
    if-nez p1, :cond_c0

    #@b1
    .line 2955
    :cond_b1
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    #@b3
    int-to-float p2, p1

    #@b4
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    #@b6
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    #@b8
    sub-int/2addr v2, p1

    #@b9
    int-to-float p1, v2

    #@ba
    mul-float/2addr v1, p1

    #@bb
    add-float/2addr p2, v1

    #@bc
    float-to-int p2, p2

    #@bd
    .line 2956
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    #@c0
    .line 2958
    :cond_c0
    invoke-virtual {p0, v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setMeasuredDimension(II)V

    #@c3
    .line 2960
    :cond_c3
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluateLayout()V

    #@c6
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "velocityX",
            "velocityY",
            "consumed"
        }
    .end annotation

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "velocityX",
            "velocityY"
        }
    .end annotation

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dx",
            "dy",
            "consumed",
            "type"
        }
    .end annotation

    #@0
    .line 3020
    iget-object p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez p5, :cond_5

    #@4
    return-void

    #@5
    .line 3025
    :cond_5
    iget-object v0, p5, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@7
    if-eqz v0, :cond_c1

    #@9
    .line 3026
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_11

    #@f
    goto/16 :goto_c1

    #@11
    .line 3030
    :cond_11
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    #@14
    move-result v1

    #@15
    const/4 v2, -0x1

    #@16
    if-eqz v1, :cond_2b

    #@18
    .line 3031
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_2b

    #@1e
    .line 3033
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegionId()I

    #@21
    move-result v1

    #@22
    if-eq v1, v2, :cond_2b

    #@24
    .line 3034
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@27
    move-result v3

    #@28
    if-eq v3, v1, :cond_2b

    #@2a
    return-void

    #@2b
    .line 3040
    :cond_2b
    invoke-virtual {p5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMoveWhenScrollAtTop()Z

    #@2e
    move-result v1

    #@2f
    const/high16 v3, 0x3f800000    # 1.0f

    #@31
    const/4 v4, 0x0

    #@32
    if-eqz v1, :cond_54

    #@34
    .line 3042
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@37
    move-result-object v1

    #@38
    if-eqz v1, :cond_43

    #@3a
    .line 3045
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getFlags()I

    #@3d
    move-result v1

    #@3e
    and-int/lit8 v1, v1, 0x4

    #@40
    if-eqz v1, :cond_43

    #@42
    move v2, p3

    #@43
    .line 3049
    :cond_43
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@45
    cmpl-float v5, v1, v3

    #@47
    if-eqz v5, :cond_4d

    #@49
    cmpl-float v1, v1, v4

    #@4b
    if-nez v1, :cond_54

    #@4d
    :cond_4d
    invoke-virtual {p1, v2}, Landroid/view/View;->canScrollVertically(I)Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_54

    #@53
    return-void

    #@54
    .line 3055
    :cond_54
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@57
    move-result-object v1

    #@58
    const/4 v2, 0x0

    #@59
    const/4 v5, 0x1

    #@5a
    if-eqz v1, :cond_8b

    #@5c
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getFlags()I

    #@63
    move-result v0

    #@64
    and-int/2addr v0, v5

    #@65
    if-eqz v0, :cond_8b

    #@67
    int-to-float v0, p2

    #@68
    int-to-float v1, p3

    #@69
    .line 3056
    invoke-virtual {p5, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getProgressDirection(FF)F

    #@6c
    move-result v0

    #@6d
    .line 3057
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@6f
    cmpg-float v6, v1, v4

    #@71
    if-gtz v6, :cond_77

    #@73
    cmpg-float v6, v0, v4

    #@75
    if-ltz v6, :cond_7f

    #@77
    :cond_77
    cmpl-float v1, v1, v3

    #@79
    if-ltz v1, :cond_8b

    #@7b
    cmpl-float v0, v0, v4

    #@7d
    if-lez v0, :cond_8b

    #@7f
    .line 3060
    :cond_7f
    invoke-virtual {p1, v2}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    #@82
    .line 3062
    new-instance p2, Landroidx/constraintlayout/motion/widget/MotionLayout$3;

    #@84
    invoke-direct {p2, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$3;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroid/view/View;)V

    #@87
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@8a
    return-void

    #@8b
    .line 3076
    :cond_8b
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@8d
    .line 3077
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@90
    move-result-wide v0

    #@91
    int-to-float v3, p2

    #@92
    .line 3078
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    #@94
    int-to-float v4, p3

    #@95
    .line 3079
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    #@97
    .line 3080
    iget-wide v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    #@99
    sub-long v6, v0, v6

    #@9b
    long-to-double v6, v6

    #@9c
    const-wide v8, 0x3e112e0be826d695L    # 1.0E-9

    #@a1
    mul-double/2addr v6, v8

    #@a2
    double-to-float v6, v6

    #@a3
    iput v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    #@a5
    .line 3081
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    #@a7
    .line 3085
    invoke-virtual {p5, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->processScrollMove(FF)V

    #@aa
    .line 3086
    iget p5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@ac
    cmpl-float p1, p1, p5

    #@ae
    if-eqz p1, :cond_b4

    #@b0
    .line 3087
    aput p2, p4, v2

    #@b2
    .line 3088
    aput p3, p4, v5

    #@b4
    .line 3090
    :cond_b4
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    #@b7
    .line 3091
    aget p1, p4, v2

    #@b9
    if-nez p1, :cond_bf

    #@bb
    aget p1, p4, v5

    #@bd
    if-eqz p1, :cond_c1

    #@bf
    .line 3092
    :cond_bf
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    #@c1
    :cond_c1
    :goto_c1
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 7
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
            "target",
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "type"
        }
    .end annotation

    #@0
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "dxConsumed",
            "dyConsumed",
            "dxUnconsumed",
            "dyUnconsumed",
            "type",
            "consumed"
        }
    .end annotation

    #@0
    .line 3003
    iget-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    #@2
    const/4 p6, 0x0

    #@3
    if-nez p1, :cond_9

    #@5
    if-nez p2, :cond_9

    #@7
    if-eqz p3, :cond_14

    #@9
    .line 3004
    :cond_9
    aget p1, p7, p6

    #@b
    add-int/2addr p1, p4

    #@c
    aput p1, p7, p6

    #@e
    const/4 p1, 0x1

    #@f
    .line 3005
    aget p2, p7, p1

    #@11
    add-int/2addr p2, p5

    #@12
    aput p2, p7, p1

    #@14
    .line 3007
    :cond_14
    iput-boolean p6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mUndergoingMotion:Z

    #@16
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "axes",
            "type"
        }
    .end annotation

    #@0
    .line 2982
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@3
    move-result-wide p1

    #@4
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetTime:J

    #@6
    const/4 p1, 0x0

    #@7
    .line 2983
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    #@9
    .line 2984
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    #@b
    .line 2985
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    #@d
    return-void
.end method

.method onNewStateAttachHandlers()V
    .registers 3

    #@0
    .line 4200
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 4203
    :cond_5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@7
    invoke-virtual {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->autoTransition(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_11

    #@d
    .line 4204
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->requestLayout()V

    #@10
    return-void

    #@11
    .line 4207
    :cond_11
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@13
    const/4 v1, -0x1

    #@14
    if-eq v0, v1, :cond_1b

    #@16
    .line 4208
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@18
    invoke-virtual {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V

    #@1b
    .line 4210
    :cond_1b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@1d
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_28

    #@23
    .line 4211
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@25
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setupTouch()V

    #@28
    :cond_28
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutDirection"
        }
    .end annotation

    #@0
    .line 4190
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-eqz p1, :cond_b

    #@4
    .line 4191
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    #@7
    move-result v0

    #@8
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setRtl(Z)V

    #@b
    :cond_b
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "target",
            "axes",
            "type"
        }
    .end annotation

    #@0
    .line 2968
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-eqz p1, :cond_25

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@6
    if-eqz p1, :cond_25

    #@8
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@a
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    .line 2970
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object p1

    #@10
    if-eqz p1, :cond_25

    #@12
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@14
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@16
    .line 2971
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getFlags()I

    #@1d
    move-result p1

    #@1e
    and-int/lit8 p1, p1, 0x2

    #@20
    if-eqz p1, :cond_23

    #@22
    goto :goto_25

    #@23
    :cond_23
    const/4 p1, 0x1

    #@24
    return p1

    #@25
    :cond_25
    :goto_25
    const/4 p1, 0x0

    #@26
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "type"
        }
    .end annotation

    #@0
    .line 2995
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-eqz p1, :cond_15

    #@4
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDT:F

    #@6
    const/4 v0, 0x0

    #@7
    cmpl-float v0, p2, v0

    #@9
    if-nez v0, :cond_c

    #@b
    goto :goto_15

    #@c
    .line 2998
    :cond_c
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDX:F

    #@e
    div-float/2addr v0, p2

    #@f
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScrollTargetDY:F

    #@11
    div-float/2addr v1, p2

    #@12
    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->processScrollUp(FF)V

    #@15
    :cond_15
    :goto_15
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    #@0
    .line 4126
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-eqz v0, :cond_42

    #@4
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    #@6
    if-eqz v1, :cond_42

    #@8
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->supportTouch()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_42

    #@e
    .line 4127
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@10
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@12
    if-eqz v0, :cond_1f

    #@14
    .line 4128
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_1f

    #@1a
    .line 4129
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@1d
    move-result p1

    #@1e
    return p1

    #@1f
    .line 4131
    :cond_1f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@21
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    #@24
    move-result v1

    #@25
    invoke-virtual {v0, p1, v1, p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->processTouchEvent(Landroid/view/MotionEvent;ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@28
    .line 4132
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2a
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2c
    const/4 v0, 0x4

    #@2d
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isTransitionFlag(I)Z

    #@30
    move-result p1

    #@31
    if-eqz p1, :cond_40

    #@33
    .line 4133
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@35
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@37
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getTouchResponse()Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@3a
    move-result-object p1

    #@3b
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/TouchResponse;->isDragStarted()Z

    #@3e
    move-result p1

    #@3f
    return p1

    #@40
    :cond_40
    const/4 p1, 0x1

    #@41
    return p1

    #@42
    .line 4140
    :cond_42
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@45
    move-result p1

    #@46
    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
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
    .line 4478
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    #@3
    .line 4479
    instance-of v0, p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    #@5
    if-eqz v0, :cond_5b

    #@7
    .line 4480
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionHelper;

    #@9
    .line 4481
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@b
    if-nez v0, :cond_14

    #@d
    .line 4482
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@12
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@14
    .line 4484
    :cond_14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@16
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    #@19
    .line 4486
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->isUsedOnShow()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2f

    #@1f
    .line 4487
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    #@21
    if-nez v0, :cond_2a

    #@23
    .line 4488
    new-instance v0, Ljava/util/ArrayList;

    #@25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@28
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    #@2a
    .line 4490
    :cond_2a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    .line 4492
    :cond_2f
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->isUseOnHide()Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_45

    #@35
    .line 4493
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    #@37
    if-nez v0, :cond_40

    #@39
    .line 4494
    new-instance v0, Ljava/util/ArrayList;

    #@3b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@3e
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    #@40
    .line 4496
    :cond_40
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@45
    .line 4498
    :cond_45
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->isDecorator()Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_5b

    #@4b
    .line 4499
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    #@4d
    if-nez v0, :cond_56

    #@4f
    .line 4500
    new-instance v0, Ljava/util/ArrayList;

    #@51
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@54
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    #@56
    .line 4502
    :cond_56
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5b
    :cond_5b
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
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
    .line 4512
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    #@3
    .line 4513
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    #@5
    if-eqz v0, :cond_a

    #@7
    .line 4514
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a
    .line 4516
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    #@c
    if-eqz v0, :cond_11

    #@e
    .line 4517
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@11
    :cond_11
    return-void
.end method

.method protected parseLayoutDescription(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    const/4 p1, 0x0

    #@1
    .line 3825
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@3
    return-void
.end method

.method public rebuildMotion()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const-string v0, "MotionLayout"

    #@2
    const-string v1, "This method is deprecated. Please call rebuildScene() instead."

    #@4
    .line 4595
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 4596
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    #@a
    return-void
.end method

.method public rebuildScene()V
    .registers 2

    #@0
    .line 4603
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    #@5
    .line 4604
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    #@8
    return-void
.end method

.method public removeTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    #@0
    .line 4314
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return p1

    #@6
    .line 4317
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    #@9
    move-result p1

    #@a
    return p1
.end method

.method public requestLayout()V
    .registers 5

    #@0
    .line 2881
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    #@2
    if-nez v0, :cond_39

    #@4
    .line 2882
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@6
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_39

    #@9
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@b
    if-eqz v0, :cond_39

    #@d
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@f
    if-eqz v0, :cond_39

    #@11
    .line 2884
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@13
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@15
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getLayoutDuringTransition()I

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1c

    #@1b
    return-void

    #@1c
    :cond_1c
    const/4 v1, 0x2

    #@1d
    if-ne v0, v1, :cond_39

    #@1f
    .line 2888
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    #@22
    move-result v0

    #@23
    const/4 v1, 0x0

    #@24
    :goto_24
    if-ge v1, v0, :cond_38

    #@26
    .line 2890
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@29
    move-result-object v2

    #@2a
    .line 2891
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@2c
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

    #@32
    .line 2892
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionController;->remeasure()V

    #@35
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_24

    #@38
    :cond_38
    return-void

    #@39
    .line 2898
    :cond_39
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    #@3c
    return-void
.end method

.method public rotateTo(II)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "duration"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 2210
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z

    #@3
    .line 2211
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    #@6
    move-result v1

    #@7
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotateWidth:I

    #@9
    .line 2212
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@c
    move-result v1

    #@d
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotateHeight:I

    #@f
    .line 2214
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getDisplay()Landroid/view/Display;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    #@16
    move-result v1

    #@17
    add-int/lit8 v2, v1, 0x1

    #@19
    .line 2215
    rem-int/lit8 v2, v2, 0x4

    #@1b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreviouseRotation:I

    #@1d
    add-int/2addr v3, v0

    #@1e
    rem-int/lit8 v3, v3, 0x4

    #@20
    if-le v2, v3, :cond_23

    #@22
    goto :goto_24

    #@23
    :cond_23
    const/4 v0, 0x2

    #@24
    :goto_24
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRotatMode:I

    #@26
    .line 2217
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreviouseRotation:I

    #@28
    .line 2218
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    #@2b
    move-result v0

    #@2c
    const/4 v1, 0x0

    #@2d
    :goto_2d
    if-ge v1, v0, :cond_4d

    #@2f
    .line 2220
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@32
    move-result-object v2

    #@33
    .line 2221
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    #@35
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v3

    #@39
    check-cast v3, Landroidx/constraintlayout/motion/utils/ViewState;

    #@3b
    if-nez v3, :cond_47

    #@3d
    .line 2223
    new-instance v3, Landroidx/constraintlayout/motion/utils/ViewState;

    #@3f
    invoke-direct {v3}, Landroidx/constraintlayout/motion/utils/ViewState;-><init>()V

    #@42
    .line 2224
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    #@44
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 2226
    :cond_47
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/utils/ViewState;->getState(Landroid/view/View;)V

    #@4a
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_2d

    #@4d
    :cond_4d
    const/4 v0, -0x1

    #@4e
    .line 2229
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@50
    .line 2230
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@52
    .line 2231
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@54
    invoke-virtual {v1, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    #@57
    .line 2232
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@59
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@5b
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@5d
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@5f
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@62
    move-result-object v1

    #@63
    const/4 v2, 0x0

    #@64
    invoke-virtual {p1, v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@67
    const/4 p1, 0x0

    #@68
    .line 2233
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@6a
    .line 2235
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@6c
    .line 2236
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    #@6f
    .line 2237
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$2;

    #@71
    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$2;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@74
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd(Ljava/lang/Runnable;)V

    #@77
    if-lez p2, :cond_7f

    #@79
    int-to-float p1, p2

    #@7a
    const/high16 p2, 0x447a0000    # 1000.0f

    #@7c
    div-float/2addr p1, p2

    #@7d
    .line 2244
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@7f
    :cond_7f
    return-void
.end method

.method public scheduleTransitionTo(I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 4652
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_b

    #@7
    .line 4653
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    #@a
    goto :goto_2d

    #@b
    .line 4655
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    #@d
    if-nez v0, :cond_15

    #@f
    const/4 v0, 0x4

    #@10
    new-array v0, v0, [I

    #@12
    .line 4656
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    #@14
    goto :goto_23

    #@15
    .line 4657
    :cond_15
    array-length v1, v0

    #@16
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    #@18
    if-gt v1, v2, :cond_23

    #@1a
    .line 4658
    array-length v1, v0

    #@1b
    mul-int/lit8 v1, v1, 0x2

    #@1d
    .line 4659
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    #@23
    .line 4661
    :cond_23
    :goto_23
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitionTo:[I

    #@25
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    #@27
    add-int/lit8 v2, v1, 0x1

    #@29
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScheduledTransitions:I

    #@2b
    aput p1, v0, v1

    #@2d
    :goto_2d
    return-void
.end method

.method public setDebugMode(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debugMode"
        }
    .end annotation

    #@0
    .line 3988
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@2
    .line 3989
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    #@5
    return-void
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayedApply"
        }
    .end annotation

    #@0
    .line 4879
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDelayedApply:Z

    #@2
    return-void
.end method

.method public setInteractionEnabled(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    #@0
    .line 4784
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInteractionEnabled:Z

    #@2
    return-void
.end method

.method public setInterpolatedProgress(F)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    #@0
    .line 1564
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-eqz v0, :cond_19

    #@4
    .line 1565
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@6
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@9
    .line 1566
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@b
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getInterpolator()Landroid/view/animation/Interpolator;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_19

    #@11
    .line 1568
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@14
    move-result p1

    #@15
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@18
    return-void

    #@19
    .line 1572
    :cond_19
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@1c
    return-void
.end method

.method public setOnHide(F)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    #@0
    .line 4532
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_19

    #@4
    .line 4533
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_9
    if-ge v1, v0, :cond_19

    #@b
    .line 4535
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnHideHelpers:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    #@13
    .line 4536
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_9

    #@19
    :cond_19
    return-void
.end method

.method public setOnShow(F)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    #@0
    .line 4522
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_19

    #@4
    .line 4523
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_9
    if-ge v1, v0, :cond_19

    #@b
    .line 4525
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnShowHelpers:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionHelper;

    #@13
    .line 4526
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(F)V

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_9

    #@19
    :cond_19
    return-void
.end method

.method public setProgress(F)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v1, p1, v0

    #@3
    const/high16 v2, 0x3f800000    # 1.0f

    #@5
    if-ltz v1, :cond_b

    #@7
    cmpl-float v3, p1, v2

    #@9
    if-lez v3, :cond_12

    #@b
    :cond_b
    const-string v3, "MotionLayout"

    #@d
    const-string v4, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    #@f
    .line 1707
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 1709
    :cond_12
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    #@15
    move-result v3

    #@16
    if-nez v3, :cond_29

    #@18
    .line 1710
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@1a
    if-nez v0, :cond_23

    #@1c
    .line 1711
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@1e
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@21
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@23
    .line 1713
    :cond_23
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@25
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setProgress(F)V

    #@28
    return-void

    #@29
    :cond_29
    if-gtz v1, :cond_4c

    #@2b
    .line 1724
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@2d
    cmpl-float v1, v1, v2

    #@2f
    if-nez v1, :cond_3c

    #@31
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@33
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@35
    if-ne v1, v2, :cond_3c

    #@37
    .line 1725
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@39
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@3c
    .line 1728
    :cond_3c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@3e
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@40
    .line 1729
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@42
    cmpl-float v0, v1, v0

    #@44
    if-nez v0, :cond_79

    #@46
    .line 1730
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@48
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@4b
    goto :goto_79

    #@4c
    :cond_4c
    cmpl-float v1, p1, v2

    #@4e
    if-ltz v1, :cond_71

    #@50
    .line 1733
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@52
    cmpl-float v0, v1, v0

    #@54
    if-nez v0, :cond_61

    #@56
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@58
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@5a
    if-ne v0, v1, :cond_61

    #@5c
    .line 1734
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@5e
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@61
    .line 1737
    :cond_61
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@63
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@65
    .line 1738
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@67
    cmpl-float v0, v0, v2

    #@69
    if-nez v0, :cond_79

    #@6b
    .line 1739
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@6d
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@70
    goto :goto_79

    #@71
    :cond_71
    const/4 v0, -0x1

    #@72
    .line 1742
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@74
    .line 1743
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@76
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@79
    .line 1746
    :cond_79
    :goto_79
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@7b
    if-nez v0, :cond_7e

    #@7d
    return-void

    #@7e
    :cond_7e
    const/4 v0, 0x1

    #@7f
    .line 1750
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    #@81
    .line 1751
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@83
    .line 1752
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@85
    const-wide/16 v1, -0x1

    #@87
    .line 1753
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    #@89
    .line 1754
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    #@8b
    const/4 p1, 0x0

    #@8c
    .line 1755
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@8e
    .line 1757
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@90
    .line 1758
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    #@93
    return-void
.end method

.method public setProgress(FF)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "velocity"
        }
    .end annotation

    #@0
    .line 1582
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1c

    #@6
    .line 1583
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@8
    if-nez v0, :cond_11

    #@a
    .line 1584
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@c
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@11
    .line 1586
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@13
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setProgress(F)V

    #@16
    .line 1587
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@18
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setVelocity(F)V

    #@1b
    return-void

    #@1c
    .line 1590
    :cond_1c
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@1f
    .line 1591
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@21
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@24
    .line 1592
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@26
    const/4 v0, 0x0

    #@27
    cmpl-float p2, p2, v0

    #@29
    const/high16 v1, 0x3f800000    # 1.0f

    #@2b
    if-eqz p2, :cond_34

    #@2d
    if-lez p2, :cond_30

    #@2f
    move v0, v1

    #@30
    .line 1594
    :cond_30
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    #@33
    goto :goto_46

    #@34
    :cond_34
    cmpl-float p2, p1, v0

    #@36
    if-eqz p2, :cond_46

    #@38
    cmpl-float p2, p1, v1

    #@3a
    if-eqz p2, :cond_46

    #@3c
    const/high16 p2, 0x3f000000    # 0.5f

    #@3e
    cmpl-float p1, p1, p2

    #@40
    if-lez p1, :cond_43

    #@42
    move v0, v1

    #@43
    .line 1596
    :cond_43
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    #@46
    :cond_46
    :goto_46
    return-void
.end method

.method public setScene(Landroidx/constraintlayout/motion/widget/MotionScene;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    #@0
    .line 3885
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    .line 3886
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z

    #@5
    move-result v0

    #@6
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setRtl(Z)V

    #@9
    .line 3887
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    #@c
    return-void
.end method

.method setStartState(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "beginId"
        }
    .end annotation

    #@0
    .line 1312
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1c

    #@6
    .line 1313
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@8
    if-nez v0, :cond_11

    #@a
    .line 1314
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@c
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@11
    .line 1316
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@13
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setStartState(I)V

    #@16
    .line 1317
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@18
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    #@1b
    return-void

    #@1c
    .line 1320
    :cond_1c
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@1e
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
    .line 1547
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@5
    .line 1548
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@7
    const/4 v0, -0x1

    #@8
    .line 1549
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@a
    .line 1550
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@c
    .line 1551
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@e
    if-eqz v0, :cond_18

    #@10
    .line 1552
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    #@12
    int-to-float p2, p2

    #@13
    int-to-float p3, p3

    #@14
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->updateConstraints(IFF)V

    #@17
    goto :goto_23

    #@18
    .line 1553
    :cond_18
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@1a
    if-eqz p2, :cond_23

    #@1c
    .line 1554
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@23
    :cond_23
    :goto_23
    return-void
.end method

.method setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newState"
        }
    .end annotation

    #@0
    .line 1199
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@2
    if-ne p1, v0, :cond_a

    #@4
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@6
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_a

    #@9
    return-void

    #@a
    .line 1202
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@c
    .line 1203
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionState:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@e
    .line 1205
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@10
    if-ne v0, v1, :cond_19

    #@12
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@14
    if-ne p1, v1, :cond_19

    #@16
    .line 1206
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionChange()V

    #@19
    .line 1208
    :cond_19
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$5;->$SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState:[I

    #@1b
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->ordinal()I

    #@1e
    move-result v0

    #@1f
    aget v0, v1, v0

    #@21
    const/4 v1, 0x1

    #@22
    if-eq v0, v1, :cond_33

    #@24
    const/4 v1, 0x2

    #@25
    if-eq v0, v1, :cond_33

    #@27
    const/4 v1, 0x3

    #@28
    if-eq v0, v1, :cond_2b

    #@2a
    goto :goto_41

    #@2b
    .line 1219
    :cond_2b
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@2d
    if-ne p1, v0, :cond_41

    #@2f
    .line 1220
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionCompleted()V

    #@32
    goto :goto_41

    #@33
    .line 1211
    :cond_33
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@35
    if-ne p1, v0, :cond_3a

    #@37
    .line 1212
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionChange()V

    #@3a
    .line 1214
    :cond_3a
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@3c
    if-ne p1, v0, :cond_41

    #@3e
    .line 1215
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->fireTransitionCompleted()V

    #@41
    :cond_41
    :goto_41
    return-void
.end method

.method public setTransition(I)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transitionId"
        }
    .end annotation

    #@0
    .line 1362
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-eqz v0, :cond_c6

    #@4
    .line 1363
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@7
    move-result-object p1

    #@8
    .line 1365
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getStartConstraintSetId()I

    #@b
    move-result v0

    #@c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@e
    .line 1366
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->getEndConstraintSetId()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@14
    .line 1368
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_34

    #@1a
    .line 1369
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@1c
    if-nez p1, :cond_25

    #@1e
    .line 1370
    new-instance p1, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@20
    invoke-direct {p1, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@23
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@25
    .line 1372
    :cond_25
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@27
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@29
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setStartState(I)V

    #@2c
    .line 1373
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@2e
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@30
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    #@33
    return-void

    #@34
    .line 1385
    :cond_34
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@36
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@38
    const/high16 v2, 0x3f800000    # 1.0f

    #@3a
    const/4 v3, 0x0

    #@3b
    if-ne v0, v1, :cond_3f

    #@3d
    move v0, v3

    #@3e
    goto :goto_47

    #@3f
    .line 1387
    :cond_3f
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@41
    if-ne v0, v1, :cond_45

    #@43
    move v0, v2

    #@44
    goto :goto_47

    #@45
    :cond_45
    const/high16 v0, 0x7fc00000    # Float.NaN

    #@47
    .line 1390
    :goto_47
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@49
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@4c
    .line 1391
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@4e
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@50
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@52
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@54
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@57
    move-result-object v4

    #@58
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@5a
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@5c
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@5f
    move-result-object v5

    #@60
    invoke-virtual {p1, v1, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@63
    .line 1392
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    #@66
    .line 1394
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@68
    cmpl-float p1, p1, v0

    #@6a
    if-eqz p1, :cond_93

    #@6c
    cmpl-float p1, v0, v3

    #@6e
    if-nez p1, :cond_80

    #@70
    const/4 p1, 0x1

    #@71
    .line 1398
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    #@74
    .line 1399
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@76
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@78
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@7b
    move-result-object p1

    #@7c
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@7f
    goto :goto_93

    #@80
    :cond_80
    cmpl-float p1, v0, v2

    #@82
    if-nez p1, :cond_93

    #@84
    const/4 p1, 0x0

    #@85
    .line 1401
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    #@88
    .line 1402
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@8a
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@8c
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@8f
    move-result-object p1

    #@90
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@93
    .line 1406
    :cond_93
    :goto_93
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@96
    move-result p1

    #@97
    if-eqz p1, :cond_9a

    #@99
    goto :goto_9b

    #@9a
    :cond_9a
    move v3, v0

    #@9b
    :goto_9b
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@9d
    .line 1408
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@a0
    move-result p1

    #@a1
    if-eqz p1, :cond_c3

    #@a3
    .line 1409
    new-instance p1, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    #@ab
    move-result-object v0

    #@ac
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object p1

    #@b0
    const-string v0, " transitionToStart "

    #@b2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object p1

    #@b6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object p1

    #@ba
    const-string v0, "MotionLayout"

    #@bc
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@bf
    .line 1410
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    #@c2
    goto :goto_c6

    #@c3
    .line 1412
    :cond_c3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@c6
    :cond_c6
    :goto_c6
    return-void
.end method

.method public setTransition(II)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "beginId",
            "endId"
        }
    .end annotation

    #@0
    .line 1330
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1c

    #@6
    .line 1331
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@8
    if-nez v0, :cond_11

    #@a
    .line 1332
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@c
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@11
    .line 1334
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@13
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setStartState(I)V

    #@16
    .line 1335
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@18
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    #@1b
    return-void

    #@1c
    .line 1339
    :cond_1c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@1e
    if-eqz v0, :cond_43

    #@20
    .line 1340
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@22
    .line 1341
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@24
    .line 1347
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    #@27
    .line 1348
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@29
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@2b
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2d
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@30
    move-result-object p1

    #@31
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@33
    invoke-virtual {v2, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@36
    move-result-object p2

    #@37
    invoke-virtual {v0, v1, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@3a
    .line 1349
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    #@3d
    const/4 p1, 0x0

    #@3e
    .line 1350
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@40
    .line 1351
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    #@43
    :cond_43
    return-void
.end method

.method protected setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transition"
        }
    .end annotation

    #@0
    .line 1418
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@5
    .line 1419
    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@7
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@a
    .line 1420
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@c
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@e
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    #@11
    move-result v1

    #@12
    if-ne v0, v1, :cond_1d

    #@14
    const/high16 v0, 0x3f800000    # 1.0f

    #@16
    .line 1421
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@18
    .line 1422
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@1a
    .line 1423
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@1c
    goto :goto_24

    #@1d
    :cond_1d
    const/4 v0, 0x0

    #@1e
    .line 1425
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@20
    .line 1426
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@22
    .line 1427
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@24
    :goto_24
    const/4 v0, 0x1

    #@25
    .line 1429
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isTransitionFlag(I)Z

    #@28
    move-result p1

    #@29
    if-eqz p1, :cond_2e

    #@2b
    const-wide/16 v0, -0x1

    #@2d
    goto :goto_32

    #@2e
    :cond_2e
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@31
    move-result-wide v0

    #@32
    :goto_32
    iput-wide v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    #@34
    .line 1434
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@36
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStartId()I

    #@39
    move-result p1

    #@3a
    .line 1435
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@3c
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getEndId()I

    #@3f
    move-result v0

    #@40
    .line 1436
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@42
    if-ne p1, v1, :cond_49

    #@44
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@46
    if-ne v0, v1, :cond_49

    #@48
    return-void

    #@49
    .line 1439
    :cond_49
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@4b
    .line 1440
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@4d
    .line 1441
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@4f
    invoke-virtual {v1, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    #@52
    .line 1447
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@54
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@56
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@58
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@5a
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@5d
    move-result-object v1

    #@5e
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@60
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@62
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {p1, v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@69
    .line 1448
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@6b
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@6d
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@6f
    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setMeasuredId(II)V

    #@72
    .line 1449
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@74
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->reEvaluateState()V

    #@77
    .line 1451
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    #@7a
    return-void
.end method

.method public setTransitionDuration(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "milliseconds"
        }
    .end annotation

    #@0
    .line 4722
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez v0, :cond_c

    #@4
    const-string p1, "MotionLayout"

    #@6
    const-string v0, "MotionScene not defined"

    #@8
    .line 4723
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    return-void

    #@c
    .line 4726
    :cond_c
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->setDuration(I)V

    #@f
    return-void
.end method

.method public setTransitionListener(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    #@0
    .line 4290
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionListener:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionListener;

    #@2
    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    #@0
    .line 1680
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 1681
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@6
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@b
    .line 1683
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@d
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setTransitionState(Landroid/os/Bundle;)V

    #@10
    .line 1684
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    #@13
    move-result p1

    #@14
    if-eqz p1, :cond_1b

    #@16
    .line 1685
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@18
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->apply()V

    #@1b
    :cond_1b
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    .line 2903
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 2904
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@b
    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string v2, "->"

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@1b
    .line 2905
    invoke-static {v0, v2}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string v1, " (pos:"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    const-string v1, " Dpos/Dt:"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    return-object v0
.end method

.method public touchAnimateTo(IFF)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "touchUpMode",
            "position",
            "currentVelocity"
        }
    .end annotation

    #@0
    .line 1915
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 1918
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@7
    cmpl-float v0, v0, p2

    #@9
    if-nez v0, :cond_c

    #@b
    return-void

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    .line 1922
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    #@f
    .line 1923
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@12
    move-result-wide v1

    #@13
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    #@15
    .line 1924
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@17
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    #@1a
    move-result v1

    #@1b
    int-to-float v1, v1

    #@1c
    const/high16 v2, 0x447a0000    # 1000.0f

    #@1e
    div-float/2addr v1, v2

    #@1f
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@21
    .line 1926
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@23
    .line 1927
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@25
    const/4 v1, 0x0

    #@26
    const/4 v2, 0x7

    #@27
    const/4 v3, 0x6

    #@28
    const/4 v4, 0x2

    #@29
    if-eqz p1, :cond_93

    #@2b
    if-eq p1, v0, :cond_93

    #@2d
    if-eq p1, v4, :cond_93

    #@2f
    const/4 v5, 0x4

    #@30
    if-eq p1, v5, :cond_81

    #@32
    const/4 v5, 0x5

    #@33
    if-eq p1, v5, :cond_3b

    #@35
    if-eq p1, v3, :cond_93

    #@37
    if-eq p1, v2, :cond_93

    #@39
    goto/16 :goto_f1

    #@3b
    .line 1966
    :cond_3b
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@3d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@3f
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    #@42
    move-result v0

    #@43
    invoke-static {p3, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->willJump(FFF)Z

    #@46
    move-result p1

    #@47
    if-eqz p1, :cond_5c

    #@49
    .line 1967
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    #@4b
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@4d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@4f
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    #@52
    move-result v0

    #@53
    invoke-virtual {p1, p3, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->config(FFF)V

    #@56
    .line 1968
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    #@58
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@5a
    goto/16 :goto_f1

    #@5c
    .line 1970
    :cond_5c
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    #@5e
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@60
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@62
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@64
    .line 1971
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    #@67
    move-result v7

    #@68
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@6a
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxVelocity()F

    #@6d
    move-result v8

    #@6e
    move v4, p2

    #@6f
    move v5, p3

    #@70
    .line 1970
    invoke-virtual/range {v2 .. v8}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    #@73
    .line 1972
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@75
    .line 1973
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@77
    .line 1974
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@79
    .line 1975
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@7b
    .line 1976
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    #@7d
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@7f
    goto/16 :goto_f1

    #@81
    .line 1961
    :cond_81
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    #@83
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@85
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@87
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    #@8a
    move-result v0

    #@8b
    invoke-virtual {p1, p3, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->config(FFF)V

    #@8e
    .line 1962
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecelerateLogic:Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;

    #@90
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@92
    goto :goto_f1

    #@93
    :cond_93
    if-eq p1, v0, :cond_9f

    #@95
    if-ne p1, v2, :cond_98

    #@97
    goto :goto_9f

    #@98
    :cond_98
    if-eq p1, v4, :cond_9c

    #@9a
    if-ne p1, v3, :cond_a0

    #@9c
    :cond_9c
    const/high16 p2, 0x3f800000    # 1.0f

    #@9e
    goto :goto_a0

    #@9f
    :cond_9f
    :goto_9f
    move p2, v1

    #@a0
    .line 1941
    :cond_a0
    :goto_a0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@a2
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getAutoCompleteMode()I

    #@a5
    move-result p1

    #@a6
    if-nez p1, :cond_c0

    #@a8
    .line 1942
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    #@aa
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@ac
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@ae
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@b0
    .line 1943
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxAcceleration()F

    #@b3
    move-result v5

    #@b4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@b6
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getMaxVelocity()F

    #@b9
    move-result v6

    #@ba
    move v2, p2

    #@bb
    move v3, p3

    #@bc
    .line 1942
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/utils/StopLogic;->config(FFFFFF)V

    #@bf
    goto :goto_e7

    #@c0
    .line 1945
    :cond_c0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    #@c2
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@c4
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@c6
    .line 1946
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringMass()F

    #@c9
    move-result v4

    #@ca
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@cc
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringStiffiness()F

    #@cf
    move-result v5

    #@d0
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@d2
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringDamping()F

    #@d5
    move-result v6

    #@d6
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@d8
    .line 1947
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringStopThreshold()F

    #@db
    move-result v7

    #@dc
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@de
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringBoundary()I

    #@e1
    move-result v8

    #@e2
    move v2, p2

    #@e3
    move v3, p3

    #@e4
    .line 1945
    invoke-virtual/range {v0 .. v8}, Landroidx/constraintlayout/motion/utils/StopLogic;->springConfig(FFFFFFFI)V

    #@e7
    .line 1950
    :goto_e7
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@e9
    .line 1951
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@eb
    .line 1952
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@ed
    .line 1953
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    #@ef
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@f1
    :goto_f1
    const/4 p1, 0x0

    #@f2
    .line 1982
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    #@f4
    .line 1983
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@f7
    move-result-wide p1

    #@f8
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    #@fa
    .line 1984
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    #@fd
    return-void
.end method

.method public touchSpringTo(FF)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "currentVelocity"
        }
    .end annotation

    #@0
    .line 1998
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 2001
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@7
    cmpl-float v0, v0, p1

    #@9
    if-nez v0, :cond_c

    #@b
    return-void

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    .line 2005
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    #@f
    .line 2006
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@12
    move-result-wide v1

    #@13
    iput-wide v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    #@15
    .line 2007
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@17
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    #@1a
    move-result v1

    #@1b
    int-to-float v1, v1

    #@1c
    const/high16 v2, 0x447a0000    # 1000.0f

    #@1e
    div-float/2addr v1, v2

    #@1f
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@21
    .line 2009
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@23
    .line 2010
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@25
    .line 2012
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    #@27
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@29
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2b
    .line 2013
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringMass()F

    #@2e
    move-result v6

    #@2f
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@31
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringStiffiness()F

    #@34
    move-result v7

    #@35
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@37
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringDamping()F

    #@3a
    move-result v8

    #@3b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@3d
    .line 2014
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringStopThreshold()F

    #@40
    move-result v9

    #@41
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@43
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getSpringBoundary()I

    #@46
    move-result v10

    #@47
    move v4, p1

    #@48
    move v5, p2

    #@49
    .line 2012
    invoke-virtual/range {v2 .. v10}, Landroidx/constraintlayout/motion/utils/StopLogic;->springConfig(FFFFFFFI)V

    #@4c
    .line 2016
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@4e
    .line 2017
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@50
    .line 2018
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@52
    .line 2019
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStopLogic:Landroidx/constraintlayout/motion/utils/StopLogic;

    #@54
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@56
    const/4 p1, 0x0

    #@57
    .line 2022
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    #@59
    .line 2023
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@5c
    move-result-wide p1

    #@5d
    iput-wide p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    #@5f
    .line 2024
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    #@62
    return-void
.end method

.method public transitionToEnd()V
    .registers 2

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    .line 2144
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    #@5
    const/4 v0, 0x0

    #@6
    .line 2145
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    #@8
    return-void
.end method

.method public transitionToEnd(Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onComplete"
        }
    .end annotation

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    .line 2156
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    #@5
    .line 2157
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    #@7
    return-void
.end method

.method public transitionToStart()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 2135
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    #@4
    return-void
.end method

.method public transitionToState(I)V
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
    .line 2167
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_17

    #@6
    .line 2168
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@8
    if-nez v0, :cond_11

    #@a
    .line 2169
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@c
    invoke-direct {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@f
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@11
    .line 2171
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@13
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    #@16
    return-void

    #@17
    :cond_17
    const/4 v0, -0x1

    #@18
    .line 2174
    invoke-virtual {p0, p1, v0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(III)V

    #@1b
    return-void
.end method

.method public transitionToState(II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "duration"
        }
    .end annotation

    #@0
    .line 2186
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isAttachedToWindow()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_17

    #@6
    .line 2187
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@8
    if-nez p2, :cond_11

    #@a
    .line 2188
    new-instance p2, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@c
    invoke-direct {p2, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@f
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@11
    .line 2190
    :cond_11
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStateCache:Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;

    #@13
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$StateCache;->setEndState(I)V

    #@16
    return-void

    #@17
    :cond_17
    const/4 v0, -0x1

    #@18
    .line 2193
    invoke-virtual {p0, p1, v0, v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(IIII)V

    #@1b
    return-void
.end method

.method public transitionToState(III)V
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
    const/4 v0, -0x1

    #@1
    .line 2205
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(IIII)V

    #@4
    return-void
.end method

.method public transitionToState(IIII)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "screenWidth",
            "screenHeight",
            "duration"
        }
    .end annotation

    #@0
    .line 2295
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    const/4 v1, -0x1

    #@3
    if-eqz v0, :cond_18

    #@5
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    #@7
    if-eqz v0, :cond_18

    #@9
    .line 2296
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@b
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    #@d
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@f
    int-to-float p2, p2

    #@10
    int-to-float p3, p3

    #@11
    invoke-virtual {v0, v2, p1, p2, p3}, Landroidx/constraintlayout/widget/StateSet;->convertToConstraintSet(IIFF)I

    #@14
    move-result p2

    #@15
    if-eq p2, v1, :cond_18

    #@17
    move p1, p2

    #@18
    .line 2307
    :cond_18
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@1a
    if-ne p2, p1, :cond_1d

    #@1c
    return-void

    #@1d
    .line 2310
    :cond_1d
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@1f
    const/high16 v0, 0x447a0000    # 1000.0f

    #@21
    const/4 v2, 0x0

    #@22
    if-ne p3, p1, :cond_2e

    #@24
    .line 2311
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    #@27
    if-lez p4, :cond_2d

    #@29
    int-to-float p1, p4

    #@2a
    div-float/2addr p1, v0

    #@2b
    .line 2313
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@2d
    :cond_2d
    return-void

    #@2e
    .line 2317
    :cond_2e
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@30
    const/high16 v3, 0x3f800000    # 1.0f

    #@32
    if-ne p3, p1, :cond_3e

    #@34
    .line 2318
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    #@37
    if-lez p4, :cond_3d

    #@39
    int-to-float p1, p4

    #@3a
    div-float/2addr p1, v0

    #@3b
    .line 2320
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@3d
    :cond_3d
    return-void

    #@3e
    .line 2324
    :cond_3e
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@40
    if-eq p2, v1, :cond_54

    #@42
    .line 2333
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(II)V

    #@45
    .line 2335
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    #@48
    .line 2337
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@4a
    .line 2338
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    #@4d
    if-lez p4, :cond_53

    #@4f
    int-to-float p1, p4

    #@50
    div-float/2addr p1, v0

    #@51
    .line 2340
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@53
    :cond_53
    return-void

    #@54
    :cond_54
    const/4 p2, 0x0

    #@55
    .line 2350
    iput-boolean p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTemporalInterpolator:Z

    #@57
    .line 2351
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionGoalPosition:F

    #@59
    .line 2352
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@5b
    .line 2353
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@5d
    .line 2354
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@60
    move-result-wide v4

    #@61
    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastTime:J

    #@63
    .line 2355
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@66
    move-result-wide v4

    #@67
    iput-wide v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mAnimationStartTime:J

    #@69
    .line 2356
    iput-boolean p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionInstantly:Z

    #@6b
    const/4 p3, 0x0

    #@6c
    .line 2357
    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInterpolator:Landroid/view/animation/Interpolator;

    #@6e
    if-ne p4, v1, :cond_7a

    #@70
    .line 2359
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@72
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    #@75
    move-result v4

    #@76
    int-to-float v4, v4

    #@77
    div-float/2addr v4, v0

    #@78
    iput v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@7a
    .line 2361
    :cond_7a
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@7c
    .line 2362
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@7e
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@80
    invoke-virtual {v4, v1, v5}, Landroidx/constraintlayout/motion/widget/MotionScene;->setTransition(II)V

    #@83
    .line 2363
    new-instance v1, Landroid/util/SparseArray;

    #@85
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@88
    if-nez p4, :cond_95

    #@8a
    .line 2365
    iget-object p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@8c
    invoke-virtual {p4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getDuration()I

    #@8f
    move-result p4

    #@90
    int-to-float p4, p4

    #@91
    div-float/2addr p4, v0

    #@92
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@94
    goto :goto_9b

    #@95
    :cond_95
    if-lez p4, :cond_9b

    #@97
    int-to-float p4, p4

    #@98
    div-float/2addr p4, v0

    #@99
    .line 2367
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@9b
    .line 2370
    :cond_9b
    :goto_9b
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    #@9e
    move-result p4

    #@9f
    .line 2372
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@a1
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@a4
    move v0, p2

    #@a5
    :goto_a5
    if-ge v0, p4, :cond_c7

    #@a7
    .line 2374
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@aa
    move-result-object v4

    #@ab
    .line 2375
    new-instance v5, Landroidx/constraintlayout/motion/widget/MotionController;

    #@ad
    invoke-direct {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    #@b0
    .line 2376
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@b2
    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b5
    .line 2377
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    #@b8
    move-result v5

    #@b9
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@bb
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@be
    move-result-object v4

    #@bf
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    #@c1
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@c4
    add-int/lit8 v0, v0, 0x1

    #@c6
    goto :goto_a5

    #@c7
    :cond_c7
    const/4 v0, 0x1

    #@c8
    .line 2379
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@ca
    .line 2381
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@cc
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@ce
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@d0
    invoke-virtual {v5, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@d3
    move-result-object p1

    #@d4
    invoke-virtual {v1, v4, p3, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@d7
    .line 2382
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    #@da
    .line 2383
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@dc
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->build()V

    #@df
    .line 2384
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->computeCurrentPositions()V

    #@e2
    .line 2385
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    #@e5
    move-result p1

    #@e6
    .line 2386
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@e9
    move-result p3

    #@ea
    .line 2389
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    #@ec
    if-eqz v1, :cond_140

    #@ee
    move v1, p2

    #@ef
    :goto_ef
    if-ge v1, p4, :cond_108

    #@f1
    .line 2391
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@f3
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@f6
    move-result-object v5

    #@f7
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@fa
    move-result-object v4

    #@fb
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    #@fd
    if-nez v4, :cond_100

    #@ff
    goto :goto_105

    #@100
    .line 2395
    :cond_100
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@102
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    #@105
    :goto_105
    add-int/lit8 v1, v1, 0x1

    #@107
    goto :goto_ef

    #@108
    .line 2398
    :cond_108
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDecoratorsHelpers:Ljava/util/ArrayList;

    #@10a
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@10d
    move-result-object v1

    #@10e
    :goto_10e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@111
    move-result v4

    #@112
    if-eqz v4, :cond_120

    #@114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@117
    move-result-object v4

    #@118
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionHelper;

    #@11a
    .line 2399
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@11c
    invoke-virtual {v4, p0, v5}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V

    #@11f
    goto :goto_10e

    #@120
    :cond_120
    move v1, p2

    #@121
    :goto_121
    if-ge v1, p4, :cond_165

    #@123
    .line 2402
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@125
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@128
    move-result-object v5

    #@129
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12c
    move-result-object v4

    #@12d
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    #@12f
    if-nez v4, :cond_132

    #@131
    goto :goto_13d

    #@132
    .line 2406
    :cond_132
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@134
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@137
    move-result-wide v8

    #@138
    move v5, p1

    #@139
    move v6, p3

    #@13a
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    #@13d
    :goto_13d
    add-int/lit8 v1, v1, 0x1

    #@13f
    goto :goto_121

    #@140
    :cond_140
    move v1, p2

    #@141
    :goto_141
    if-ge v1, p4, :cond_165

    #@143
    .line 2410
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@145
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@148
    move-result-object v5

    #@149
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14c
    move-result-object v4

    #@14d
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    #@14f
    if-nez v4, :cond_152

    #@151
    goto :goto_162

    #@152
    .line 2414
    :cond_152
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@154
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    #@157
    .line 2415
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionDuration:F

    #@159
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    #@15c
    move-result-wide v8

    #@15d
    move v5, p1

    #@15e
    move v6, p3

    #@15f
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIFJ)V

    #@162
    :goto_162
    add-int/lit8 v1, v1, 0x1

    #@164
    goto :goto_141

    #@165
    .line 2419
    :cond_165
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@167
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getStaggered()F

    #@16a
    move-result p1

    #@16b
    cmpl-float p3, p1, v2

    #@16d
    if-eqz p3, :cond_1c1

    #@16f
    const p3, 0x7f7fffff    # Float.MAX_VALUE

    #@172
    const v1, -0x800001

    #@175
    move v4, p2

    #@176
    :goto_176
    if-ge v4, p4, :cond_198

    #@178
    .line 2423
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@17a
    invoke-virtual {p0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@17d
    move-result-object v6

    #@17e
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@181
    move-result-object v5

    #@182
    check-cast v5, Landroidx/constraintlayout/motion/widget/MotionController;

    #@184
    .line 2424
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    #@187
    move-result v6

    #@188
    .line 2425
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    #@18b
    move-result v5

    #@18c
    add-float/2addr v5, v6

    #@18d
    .line 2426
    invoke-static {p3, v5}, Ljava/lang/Math;->min(FF)F

    #@190
    move-result p3

    #@191
    .line 2427
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    #@194
    move-result v1

    #@195
    add-int/lit8 v4, v4, 0x1

    #@197
    goto :goto_176

    #@198
    :cond_198
    :goto_198
    if-ge p2, p4, :cond_1c1

    #@19a
    .line 2431
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@19c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@19f
    move-result-object v5

    #@1a0
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a3
    move-result-object v4

    #@1a4
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionController;

    #@1a6
    .line 2432
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalX()F

    #@1a9
    move-result v5

    #@1aa
    .line 2433
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getFinalY()F

    #@1ad
    move-result v6

    #@1ae
    sub-float v7, v3, p1

    #@1b0
    div-float v7, v3, v7

    #@1b2
    .line 2434
    iput v7, v4, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    #@1b4
    add-float/2addr v5, v6

    #@1b5
    sub-float/2addr v5, p3

    #@1b6
    mul-float/2addr v5, p1

    #@1b7
    sub-float v6, v1, p3

    #@1b9
    div-float/2addr v5, v6

    #@1ba
    sub-float v5, p1, v5

    #@1bc
    .line 2435
    iput v5, v4, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    #@1be
    add-int/lit8 p2, p2, 0x1

    #@1c0
    goto :goto_198

    #@1c1
    .line 2439
    :cond_1c1
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionPosition:F

    #@1c3
    .line 2440
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@1c5
    .line 2441
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mInTransition:Z

    #@1c7
    .line 2443
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    #@1ca
    return-void
.end method

.method public updateState()V
    .registers 6

    #@0
    .line 4671
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mModel:Landroidx/constraintlayout/motion/widget/MotionLayout$Model;

    #@2
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@4
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@6
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mBeginState:I

    #@8
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@e
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndState:I

    #@10
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@17
    .line 4672
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    #@1a
    return-void
.end method

.method public updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stateId",
            "set"
        }
    .end annotation

    #@0
    .line 4614
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 4615
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->setConstraintSet(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    #@7
    .line 4617
    :cond_7
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState()V

    #@a
    .line 4618
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@c
    if-ne v0, p1, :cond_11

    #@e
    .line 4619
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@11
    :cond_11
    return-void
.end method

.method public updateStateAnimate(ILandroidx/constraintlayout/widget/ConstraintSet;I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stateId",
            "set",
            "duration"
        }
    .end annotation

    #@0
    .line 4631
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 4635
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@7
    if-ne v0, p1, :cond_2d

    #@9
    .line 4636
    sget v0, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    #@b
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    #@12
    .line 4637
    sget v0, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    #@14
    const/4 v1, -0x1

    #@15
    invoke-virtual {p0, v0, v1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(III)V

    #@18
    .line 4638
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    #@1b
    .line 4639
    new-instance p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@1d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@1f
    sget v2, Landroidx/constraintlayout/widget/R$id;->view_transition:I

    #@21
    invoke-direct {p2, v1, v0, v2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(ILandroidx/constraintlayout/motion/widget/MotionScene;II)V

    #@24
    .line 4640
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setDuration(I)V

    #@27
    .line 4641
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@2a
    .line 4642
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    #@2d
    :cond_2d
    return-void
.end method

.method public varargs viewTransition(I[Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewTransitionId",
            "view"
        }
    .end annotation

    #@0
    .line 4819
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 4820
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->viewTransition(I[Landroid/view/View;)V

    #@7
    goto :goto_f

    #@8
    :cond_8
    const-string p1, "MotionLayout"

    #@a
    const-string p2, " no motionScene"

    #@c
    .line 4822
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    :goto_f
    return-void
.end method
