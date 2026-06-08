.class Landroidx/constraintlayout/motion/widget/TouchResponse;
.super Ljava/lang/Object;
.source "TouchResponse.java"


# static fields
.field public static final COMPLETE_MODE_CONTINUOUS_VELOCITY:I = 0x0

.field public static final COMPLETE_MODE_SPRING:I = 0x1

.field private static final DEBUG:Z = false

.field private static final EPSILON:F = 1.0E-7f

.field static final FLAG_DISABLE_POST_SCROLL:I = 0x1

.field static final FLAG_DISABLE_SCROLL:I = 0x2

.field static final FLAG_SUPPORT_SCROLL_UP:I = 0x4

.field private static final SEC_TO_MILLISECONDS:I = 0x3e8

.field private static final SIDE_BOTTOM:I = 0x3

.field private static final SIDE_END:I = 0x6

.field private static final SIDE_LEFT:I = 0x1

.field private static final SIDE_MIDDLE:I = 0x4

.field private static final SIDE_RIGHT:I = 0x2

.field private static final SIDE_START:I = 0x5

.field private static final SIDE_TOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TouchResponse"

.field private static final TOUCH_DIRECTION:[[F

.field private static final TOUCH_DOWN:I = 0x1

.field private static final TOUCH_END:I = 0x5

.field private static final TOUCH_LEFT:I = 0x2

.field private static final TOUCH_RIGHT:I = 0x3

.field private static final TOUCH_SIDES:[[F

.field private static final TOUCH_START:I = 0x4

.field private static final TOUCH_UP:I


# instance fields
.field private mAnchorDpDt:[F

.field private mAutoCompleteMode:I

.field private mDragScale:F

.field private mDragStarted:Z

.field private mDragThreshold:F

.field private mFlags:I

.field mIsRotateMode:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLimitBoundsTo:I

.field private mMaxAcceleration:F

.field private mMaxVelocity:F

.field private final mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mMoveWhenScrollAtTop:Z

.field private mOnTouchUp:I

.field mRotateCenterX:F

.field mRotateCenterY:F

.field private mRotationCenterId:I

.field private mSpringBoundary:I

.field private mSpringDamping:F

.field private mSpringMass:F

.field private mSpringStiffness:F

.field private mSpringStopThreshold:F

.field private mTempLoc:[I

.field private mTouchAnchorId:I

.field private mTouchAnchorSide:I

.field private mTouchAnchorX:F

.field private mTouchAnchorY:F

.field private mTouchDirectionX:F

.field private mTouchDirectionY:F

.field private mTouchRegionId:I

.field private mTouchSide:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    #@0
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [[F

    #@3
    const/4 v1, 0x2

    #@4
    new-array v2, v1, [F

    #@6
    .line 67
    fill-array-data v2, :array_6c

    #@9
    const/4 v3, 0x0

    #@a
    aput-object v2, v0, v3

    #@c
    new-array v2, v1, [F

    #@e
    fill-array-data v2, :array_74

    #@11
    const/4 v4, 0x1

    #@12
    aput-object v2, v0, v4

    #@14
    new-array v2, v1, [F

    #@16
    fill-array-data v2, :array_7c

    #@19
    aput-object v2, v0, v1

    #@1b
    new-array v2, v1, [F

    #@1d
    fill-array-data v2, :array_84

    #@20
    const/4 v5, 0x3

    #@21
    aput-object v2, v0, v5

    #@23
    new-array v2, v1, [F

    #@25
    fill-array-data v2, :array_8c

    #@28
    const/4 v6, 0x4

    #@29
    aput-object v2, v0, v6

    #@2b
    new-array v2, v1, [F

    #@2d
    fill-array-data v2, :array_94

    #@30
    const/4 v7, 0x5

    #@31
    aput-object v2, v0, v7

    #@33
    new-array v2, v1, [F

    #@35
    fill-array-data v2, :array_9c

    #@38
    const/4 v8, 0x6

    #@39
    aput-object v2, v0, v8

    #@3b
    sput-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    #@3d
    new-array v0, v8, [[F

    #@3f
    new-array v2, v1, [F

    #@41
    .line 76
    fill-array-data v2, :array_a4

    #@44
    aput-object v2, v0, v3

    #@46
    new-array v2, v1, [F

    #@48
    fill-array-data v2, :array_ac

    #@4b
    aput-object v2, v0, v4

    #@4d
    new-array v2, v1, [F

    #@4f
    fill-array-data v2, :array_b4

    #@52
    aput-object v2, v0, v1

    #@54
    new-array v2, v1, [F

    #@56
    fill-array-data v2, :array_bc

    #@59
    aput-object v2, v0, v5

    #@5b
    new-array v2, v1, [F

    #@5d
    fill-array-data v2, :array_c4

    #@60
    aput-object v2, v0, v6

    #@62
    new-array v1, v1, [F

    #@64
    fill-array-data v1, :array_cc

    #@67
    aput-object v1, v0, v7

    #@69
    sput-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    #@6b
    return-void

    #@6c
    :array_6c
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    #@74
    :array_74
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    #@7c
    :array_7c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    #@84
    :array_84
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    #@8c
    :array_8c
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    #@94
    :array_94
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    #@9c
    :array_9c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    #@a4
    :array_a4
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    #@ac
    :array_ac
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    #@b4
    :array_b4
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    #@bc
    :array_bc
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    #@c4
    :array_c4
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    #@cc
    :array_cc
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "layout",
            "parser"
        }
    .end annotation

    #@0
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 45
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    #@6
    .line 46
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    #@8
    .line 47
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@a
    const/4 v1, -0x1

    #@b
    .line 48
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@d
    .line 49
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    #@f
    .line 50
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    #@11
    const/high16 v2, 0x3f000000    # 0.5f

    #@13
    .line 51
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    #@15
    .line 52
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    #@17
    .line 53
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotateCenterX:F

    #@19
    .line 54
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotateCenterY:F

    #@1b
    .line 55
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    #@1d
    .line 56
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    #@1f
    const/4 v1, 0x0

    #@20
    .line 57
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@22
    const/high16 v1, 0x3f800000    # 1.0f

    #@24
    .line 58
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@26
    .line 59
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@28
    const/4 v2, 0x2

    #@29
    new-array v3, v2, [F

    #@2b
    .line 60
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@2d
    new-array v2, v2, [I

    #@2f
    .line 61
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    #@31
    const/high16 v2, 0x40800000    # 4.0f

    #@33
    .line 99
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    #@35
    const v2, 0x3f99999a    # 1.2f

    #@38
    .line 100
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    #@3a
    const/4 v2, 0x1

    #@3b
    .line 101
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    #@3d
    .line 102
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    #@3f
    .line 103
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    #@41
    const/high16 v2, 0x41200000    # 10.0f

    #@43
    .line 108
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    #@45
    .line 109
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    #@47
    .line 110
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    #@49
    const/high16 v1, 0x7fc00000    # Float.NaN

    #@4b
    .line 111
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    #@4d
    .line 112
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    #@4f
    .line 113
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    #@51
    .line 114
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    #@53
    .line 119
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@55
    .line 120
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@58
    move-result-object p2

    #@59
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5c
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/motion/widget/OnSwipe;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "onSwipe"
        }
    .end annotation

    #@0
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 45
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    #@6
    .line 46
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    #@8
    .line 47
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@a
    const/4 v1, -0x1

    #@b
    .line 48
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@d
    .line 49
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    #@f
    .line 50
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    #@11
    const/high16 v2, 0x3f000000    # 0.5f

    #@13
    .line 51
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    #@15
    .line 52
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    #@17
    .line 53
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotateCenterX:F

    #@19
    .line 54
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotateCenterY:F

    #@1b
    .line 55
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    #@1d
    .line 56
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    #@1f
    const/4 v2, 0x0

    #@20
    .line 57
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@22
    const/high16 v2, 0x3f800000    # 1.0f

    #@24
    .line 58
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@26
    .line 59
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@28
    const/4 v3, 0x2

    #@29
    new-array v4, v3, [F

    #@2b
    .line 60
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@2d
    new-array v3, v3, [I

    #@2f
    .line 61
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    #@31
    const/high16 v3, 0x40800000    # 4.0f

    #@33
    .line 99
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    #@35
    const v3, 0x3f99999a    # 1.2f

    #@38
    .line 100
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    #@3a
    const/4 v3, 0x1

    #@3b
    .line 101
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    #@3d
    .line 102
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    #@3f
    .line 103
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    #@41
    const/high16 v4, 0x41200000    # 10.0f

    #@43
    .line 108
    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    #@45
    .line 109
    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    #@47
    .line 110
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    #@49
    const/high16 v2, 0x7fc00000    # Float.NaN

    #@4b
    .line 111
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    #@4d
    .line 112
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    #@4f
    .line 113
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    #@51
    .line 114
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    #@53
    .line 124
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@55
    .line 125
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getTouchAnchorId()I

    #@58
    move-result p1

    #@59
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@5b
    .line 126
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getTouchAnchorSide()I

    #@5e
    move-result p1

    #@5f
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    #@61
    if-eq p1, v1, :cond_6f

    #@63
    .line 128
    sget-object v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    #@65
    aget-object p1, v1, p1

    #@67
    aget v1, p1, v0

    #@69
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    #@6b
    .line 129
    aget p1, p1, v3

    #@6d
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    #@6f
    .line 131
    :cond_6f
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getDragDirection()I

    #@72
    move-result p1

    #@73
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    #@75
    .line 132
    sget-object v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    #@77
    array-length v4, v1

    #@78
    if-ge p1, v4, :cond_85

    #@7a
    .line 133
    aget-object p1, v1, p1

    #@7c
    aget v0, p1, v0

    #@7e
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@80
    .line 134
    aget p1, p1, v3

    #@82
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@84
    goto :goto_8b

    #@85
    .line 136
    :cond_85
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@87
    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@89
    .line 137
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    #@8b
    .line 139
    :goto_8b
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getMaxVelocity()F

    #@8e
    move-result p1

    #@8f
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    #@91
    .line 140
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getMaxAcceleration()F

    #@94
    move-result p1

    #@95
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    #@97
    .line 141
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getMoveWhenScrollAtTop()Z

    #@9a
    move-result p1

    #@9b
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    #@9d
    .line 142
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getDragScale()F

    #@a0
    move-result p1

    #@a1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    #@a3
    .line 143
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getDragThreshold()F

    #@a6
    move-result p1

    #@a7
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    #@a9
    .line 144
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getTouchRegionId()I

    #@ac
    move-result p1

    #@ad
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    #@af
    .line 145
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getOnTouchUp()I

    #@b2
    move-result p1

    #@b3
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@b5
    .line 146
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getNestedScrollFlags()I

    #@b8
    move-result p1

    #@b9
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    #@bb
    .line 147
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getLimitBoundsTo()I

    #@be
    move-result p1

    #@bf
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    #@c1
    .line 148
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getRotationCenterId()I

    #@c4
    move-result p1

    #@c5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    #@c7
    .line 149
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringBoundary()I

    #@ca
    move-result p1

    #@cb
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    #@cd
    .line 150
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringDamping()F

    #@d0
    move-result p1

    #@d1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    #@d3
    .line 151
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringMass()F

    #@d6
    move-result p1

    #@d7
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    #@d9
    .line 152
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringStiffness()F

    #@dc
    move-result p1

    #@dd
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    #@df
    .line 153
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getSpringStopThreshold()F

    #@e2
    move-result p1

    #@e3
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    #@e5
    .line 154
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/OnSwipe;->getAutoCompleteMode()I

    #@e8
    move-result p1

    #@e9
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    #@eb
    return-void
.end method

.method private fill(Landroid/content/res/TypedArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    #@0
    .line 186
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    move v2, v1

    #@6
    :goto_6
    if-ge v2, v0, :cond_132

    #@8
    .line 188
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@b
    move-result v3

    #@c
    .line 189
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorId:I

    #@e
    if-ne v3, v4, :cond_1a

    #@10
    .line 190
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@12
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@15
    move-result v3

    #@16
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@18
    goto/16 :goto_12e

    #@1a
    .line 191
    :cond_1a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorSide:I

    #@1c
    const/4 v5, 0x1

    #@1d
    if-ne v3, v4, :cond_35

    #@1f
    .line 192
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    #@21
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@24
    move-result v3

    #@25
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    #@27
    .line 193
    sget-object v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    #@29
    aget-object v3, v4, v3

    #@2b
    aget v4, v3, v1

    #@2d
    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    #@2f
    .line 194
    aget v3, v3, v5

    #@31
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    #@33
    goto/16 :goto_12e

    #@35
    .line 195
    :cond_35
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragDirection:I

    #@37
    if-ne v3, v4, :cond_5c

    #@39
    .line 196
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    #@3b
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@3e
    move-result v3

    #@3f
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    #@41
    .line 197
    sget-object v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    #@43
    array-length v6, v4

    #@44
    if-ge v3, v6, :cond_52

    #@46
    .line 198
    aget-object v3, v4, v3

    #@48
    aget v4, v3, v1

    #@4a
    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@4c
    .line 199
    aget v3, v3, v5

    #@4e
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@50
    goto/16 :goto_12e

    #@52
    :cond_52
    const/high16 v3, 0x7fc00000    # Float.NaN

    #@54
    .line 201
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@56
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@58
    .line 202
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    #@5a
    goto/16 :goto_12e

    #@5c
    .line 204
    :cond_5c
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxVelocity:I

    #@5e
    if-ne v3, v4, :cond_6a

    #@60
    .line 205
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    #@62
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@65
    move-result v3

    #@66
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    #@68
    goto/16 :goto_12e

    #@6a
    .line 206
    :cond_6a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxAcceleration:I

    #@6c
    if-ne v3, v4, :cond_78

    #@6e
    .line 207
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    #@70
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@73
    move-result v3

    #@74
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    #@76
    goto/16 :goto_12e

    #@78
    .line 208
    :cond_78
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_moveWhenScrollAtTop:I

    #@7a
    if-ne v3, v4, :cond_86

    #@7c
    .line 209
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    #@7e
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@81
    move-result v3

    #@82
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    #@84
    goto/16 :goto_12e

    #@86
    .line 210
    :cond_86
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragScale:I

    #@88
    if-ne v3, v4, :cond_94

    #@8a
    .line 211
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    #@8c
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@8f
    move-result v3

    #@90
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    #@92
    goto/16 :goto_12e

    #@94
    .line 212
    :cond_94
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragThreshold:I

    #@96
    if-ne v3, v4, :cond_a2

    #@98
    .line 213
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    #@9a
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@9d
    move-result v3

    #@9e
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    #@a0
    goto/16 :goto_12e

    #@a2
    .line 214
    :cond_a2
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchRegionId:I

    #@a4
    if-ne v3, v4, :cond_b0

    #@a6
    .line 215
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    #@a8
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@ab
    move-result v3

    #@ac
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    #@ae
    goto/16 :goto_12e

    #@b0
    .line 216
    :cond_b0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_onTouchUp:I

    #@b2
    if-ne v3, v4, :cond_be

    #@b4
    .line 217
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@b6
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@b9
    move-result v3

    #@ba
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@bc
    goto/16 :goto_12e

    #@be
    .line 218
    :cond_be
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_nestedScrollFlags:I

    #@c0
    if-ne v3, v4, :cond_c9

    #@c2
    .line 219
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@c5
    move-result v3

    #@c6
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    #@c8
    goto :goto_12e

    #@c9
    .line 220
    :cond_c9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_limitBoundsTo:I

    #@cb
    if-ne v3, v4, :cond_d4

    #@cd
    .line 221
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@d0
    move-result v3

    #@d1
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    #@d3
    goto :goto_12e

    #@d4
    .line 222
    :cond_d4
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_rotationCenterId:I

    #@d6
    if-ne v3, v4, :cond_e1

    #@d8
    .line 223
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    #@da
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@dd
    move-result v3

    #@de
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    #@e0
    goto :goto_12e

    #@e1
    .line 224
    :cond_e1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springDamping:I

    #@e3
    if-ne v3, v4, :cond_ee

    #@e5
    .line 225
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    #@e7
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@ea
    move-result v3

    #@eb
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    #@ed
    goto :goto_12e

    #@ee
    .line 226
    :cond_ee
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springMass:I

    #@f0
    if-ne v3, v4, :cond_fb

    #@f2
    .line 227
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    #@f4
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@f7
    move-result v3

    #@f8
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    #@fa
    goto :goto_12e

    #@fb
    .line 228
    :cond_fb
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springStiffness:I

    #@fd
    if-ne v3, v4, :cond_108

    #@ff
    .line 229
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    #@101
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@104
    move-result v3

    #@105
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    #@107
    goto :goto_12e

    #@108
    .line 230
    :cond_108
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springStopThreshold:I

    #@10a
    if-ne v3, v4, :cond_115

    #@10c
    .line 231
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    #@10e
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@111
    move-result v3

    #@112
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    #@114
    goto :goto_12e

    #@115
    .line 232
    :cond_115
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_springBoundary:I

    #@117
    if-ne v3, v4, :cond_122

    #@119
    .line 233
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    #@11b
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@11e
    move-result v3

    #@11f
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    #@121
    goto :goto_12e

    #@122
    .line 234
    :cond_122
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_autoCompleteMode:I

    #@124
    if-ne v3, v4, :cond_12e

    #@126
    .line 235
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    #@128
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@12b
    move-result v3

    #@12c
    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    #@12e
    :cond_12e
    :goto_12e
    add-int/lit8 v2, v2, 0x1

    #@130
    goto/16 :goto_6

    #@132
    :cond_132
    return-void
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
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
    .line 180
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe:[I

    #@2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    .line 181
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/TouchResponse;->fill(Landroid/content/res/TypedArray;)V

    #@9
    .line 182
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@c
    return-void
.end method


# virtual methods
.method dot(FF)F
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    #@0
    .line 821
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@2
    mul-float/2addr p1, v0

    #@3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@5
    mul-float/2addr p2, v0

    #@6
    add-float/2addr p1, p2

    #@7
    return p1
.end method

.method public getAnchorId()I
    .registers 2

    #@0
    .line 702
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@2
    return v0
.end method

.method public getAutoCompleteMode()I
    .registers 2

    #@0
    .line 760
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    #@2
    return v0
.end method

.method public getFlags()I
    .registers 2

    #@0
    .line 834
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    #@2
    return v0
.end method

.method getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "rect"
        }
    .end annotation

    #@0
    .line 805
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-ne v0, v1, :cond_7

    #@6
    return-object v2

    #@7
    .line 808
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@a
    move-result-object p1

    #@b
    if-nez p1, :cond_e

    #@d
    return-object v2

    #@e
    .line 812
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@11
    move-result v0

    #@12
    int-to-float v0, v0

    #@13
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@16
    move-result v1

    #@17
    int-to-float v1, v1

    #@18
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@1b
    move-result v2

    #@1c
    int-to-float v2, v2

    #@1d
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@20
    move-result p1

    #@21
    int-to-float p1, p1

    #@22
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    #@25
    return-object p2
.end method

.method getLimitBoundsToId()I
    .registers 2

    #@0
    .line 817
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    #@2
    return v0
.end method

.method getMaxAcceleration()F
    .registers 2

    #@0
    .line 737
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    #@2
    return v0
.end method

.method public getMaxVelocity()F
    .registers 2

    #@0
    .line 747
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    #@2
    return v0
.end method

.method getMoveWhenScrollAtTop()Z
    .registers 2

    #@0
    .line 751
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    #@2
    return v0
.end method

.method getProgressDirection(FF)F
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    #@0
    .line 588
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    #@5
    move-result v3

    #@6
    .line 589
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@a
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    #@c
    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    #@e
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@10
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    #@13
    .line 591
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@15
    const/4 v1, 0x0

    #@16
    cmpl-float v2, v0, v1

    #@18
    const v3, 0x33d6bf95    # 1.0E-7f

    #@1b
    if-eqz v2, :cond_2d

    #@1d
    .line 592
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@1f
    const/4 v2, 0x0

    #@20
    aget v4, p2, v2

    #@22
    cmpl-float v1, v4, v1

    #@24
    if-nez v1, :cond_28

    #@26
    .line 593
    aput v3, p2, v2

    #@28
    :cond_28
    mul-float/2addr p1, v0

    #@29
    .line 595
    aget p2, p2, v2

    #@2b
    div-float/2addr p1, p2

    #@2c
    goto :goto_3f

    #@2d
    .line 597
    :cond_2d
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@2f
    const/4 v0, 0x1

    #@30
    aget v2, p1, v0

    #@32
    cmpl-float v1, v2, v1

    #@34
    if-nez v1, :cond_38

    #@36
    .line 598
    aput v3, p1, v0

    #@38
    .line 600
    :cond_38
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@3a
    mul-float/2addr p2, v1

    #@3b
    aget p1, p1, v0

    #@3d
    div-float p1, p2, p1

    #@3f
    :goto_3f
    return p1
.end method

.method public getSpringBoundary()I
    .registers 2

    #@0
    .line 885
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringBoundary:I

    #@2
    return v0
.end method

.method public getSpringDamping()F
    .registers 2

    #@0
    .line 865
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringDamping:F

    #@2
    return v0
.end method

.method public getSpringMass()F
    .registers 2

    #@0
    .line 856
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringMass:F

    #@2
    return v0
.end method

.method public getSpringStiffness()F
    .registers 2

    #@0
    .line 847
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStiffness:F

    #@2
    return v0
.end method

.method public getSpringStopThreshold()F
    .registers 2

    #@0
    .line 873
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mSpringStopThreshold:F

    #@2
    return v0
.end method

.method getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "rect"
        }
    .end annotation

    #@0
    .line 781
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    #@2
    const/4 v1, -0x1

    #@3
    const/4 v2, 0x0

    #@4
    if-ne v0, v1, :cond_7

    #@6
    return-object v2

    #@7
    .line 784
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@a
    move-result-object p1

    #@b
    if-nez p1, :cond_e

    #@d
    return-object v2

    #@e
    .line 788
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    #@11
    move-result v0

    #@12
    int-to-float v0, v0

    #@13
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@16
    move-result v1

    #@17
    int-to-float v1, v1

    #@18
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    #@1b
    move-result v2

    #@1c
    int-to-float v2, v2

    #@1d
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    #@20
    move-result p1

    #@21
    int-to-float p1, p1

    #@22
    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    #@25
    return-object p2
.end method

.method getTouchRegionId()I
    .registers 2

    #@0
    .line 793
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    #@2
    return v0
.end method

.method isDragStarted()Z
    .registers 2

    #@0
    .line 889
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@2
    return v0
.end method

.method processTouchEvent(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;ILandroidx/constraintlayout/motion/widget/MotionScene;)V
    .registers 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "velocityTracker",
            "currentState",
            "motionScene"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    .line 412
    iget-boolean v2, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    #@6
    if-eqz v2, :cond_c

    #@8
    .line 413
    invoke-virtual/range {p0 .. p4}, Landroidx/constraintlayout/motion/widget/TouchResponse;->processTouchRotateEvent(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;ILandroidx/constraintlayout/motion/widget/MotionScene;)V

    #@b
    return-void

    #@c
    :cond_c
    move-object/from16 v2, p1

    #@e
    .line 416
    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@11
    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@14
    move-result v3

    #@15
    const/4 v4, 0x0

    #@16
    if-eqz v3, :cond_1fd

    #@18
    const/4 v6, 0x6

    #@19
    const/4 v7, -0x1

    #@1a
    const/high16 v9, 0x3f800000    # 1.0f

    #@1c
    const/4 v10, 0x1

    #@1d
    const/4 v11, 0x0

    #@1e
    if-eq v3, v10, :cond_13b

    #@20
    const/4 v12, 0x2

    #@21
    if-eq v3, v12, :cond_25

    #@23
    goto/16 :goto_20b

    #@25
    .line 424
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    #@28
    move-result v3

    #@29
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    #@2b
    sub-float/2addr v3, v12

    #@2c
    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    #@2f
    move-result v12

    #@30
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    #@32
    sub-float/2addr v12, v13

    #@33
    .line 426
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@35
    mul-float/2addr v13, v12

    #@36
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@38
    mul-float/2addr v14, v3

    #@39
    add-float/2addr v13, v14

    #@3a
    .line 431
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    #@3d
    move-result v13

    #@3e
    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    #@40
    cmpl-float v13, v13, v14

    #@42
    if-gtz v13, :cond_48

    #@44
    iget-boolean v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@46
    if-eqz v13, :cond_20b

    #@48
    .line 435
    :cond_48
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@4a
    invoke-virtual {v13}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    #@4d
    move-result v13

    #@4e
    .line 436
    iget-boolean v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@50
    if-nez v14, :cond_59

    #@52
    .line 437
    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@54
    .line 438
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@56
    invoke-virtual {v14, v13}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@59
    .line 443
    :cond_59
    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@5b
    if-eq v15, v7, :cond_71

    #@5d
    .line 445
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@5f
    iget v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    #@61
    iget v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    #@63
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@65
    move/from16 v16, v13

    #@67
    move/from16 v17, v7

    #@69
    move/from16 v18, v8

    #@6b
    move-object/from16 v19, v5

    #@6d
    invoke-virtual/range {v14 .. v19}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    #@70
    goto :goto_8e

    #@71
    .line 453
    :cond_71
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@73
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    #@76
    move-result v5

    #@77
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@79
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@7c
    move-result v7

    #@7d
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    #@80
    move-result v5

    #@81
    int-to-float v5, v5

    #@82
    .line 454
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@84
    iget v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@86
    mul-float/2addr v8, v5

    #@87
    aput v8, v7, v10

    #@89
    .line 455
    iget v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@8b
    mul-float/2addr v5, v8

    #@8c
    aput v5, v7, v4

    #@8e
    .line 458
    :goto_8e
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@90
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@92
    aget v8, v7, v4

    #@94
    mul-float/2addr v5, v8

    #@95
    iget v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@97
    aget v7, v7, v10

    #@99
    mul-float/2addr v8, v7

    #@9a
    add-float/2addr v5, v8

    #@9b
    .line 466
    iget v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    #@9d
    mul-float/2addr v5, v7

    #@9e
    .line 468
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    #@a1
    move-result v5

    #@a2
    float-to-double v7, v5

    #@a3
    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    #@a8
    cmpg-double v5, v7, v14

    #@aa
    const v7, 0x3c23d70a    # 0.01f

    #@ad
    if-gez v5, :cond_b5

    #@af
    .line 469
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@b1
    aput v7, v5, v4

    #@b3
    .line 470
    aput v7, v5, v10

    #@b5
    .line 474
    :cond_b5
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@b7
    cmpl-float v5, v5, v11

    #@b9
    if-eqz v5, :cond_c1

    #@bb
    .line 475
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@bd
    aget v3, v3, v4

    #@bf
    div-float/2addr v12, v3

    #@c0
    goto :goto_c7

    #@c1
    .line 477
    :cond_c1
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@c3
    aget v5, v5, v10

    #@c5
    div-float v12, v3, v5

    #@c7
    :goto_c7
    add-float/2addr v13, v12

    #@c8
    .line 483
    invoke-static {v13, v9}, Ljava/lang/Math;->min(FF)F

    #@cb
    move-result v3

    #@cc
    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    #@cf
    move-result v3

    #@d0
    .line 485
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@d2
    if-ne v5, v6, :cond_d8

    #@d4
    .line 486
    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    #@d7
    move-result v3

    #@d8
    .line 488
    :cond_d8
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@da
    const/4 v6, 0x7

    #@db
    if-ne v5, v6, :cond_e4

    #@dd
    const v5, 0x3f7d70a4    # 0.99f

    #@e0
    .line 489
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    #@e3
    move-result v3

    #@e4
    .line 492
    :cond_e4
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@e6
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    #@e9
    move-result v5

    #@ea
    cmpl-float v6, v3, v5

    #@ec
    if-eqz v6, :cond_129

    #@ee
    cmpl-float v6, v5, v11

    #@f0
    if-eqz v6, :cond_f6

    #@f2
    cmpl-float v5, v5, v9

    #@f4
    if-nez v5, :cond_100

    #@f6
    .line 495
    :cond_f6
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@f8
    if-nez v6, :cond_fc

    #@fa
    move v6, v10

    #@fb
    goto :goto_fd

    #@fc
    :cond_fc
    move v6, v4

    #@fd
    :goto_fd
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    #@100
    .line 497
    :cond_100
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@102
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@105
    const/16 v3, 0x3e8

    #@107
    .line 501
    invoke-interface {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    #@10a
    .line 502
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    #@10d
    move-result v3

    #@10e
    .line 503
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    #@111
    move-result v1

    #@112
    .line 504
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@114
    cmpl-float v5, v5, v11

    #@116
    if-eqz v5, :cond_11e

    #@118
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@11a
    aget v1, v1, v4

    #@11c
    div-float/2addr v3, v1

    #@11d
    goto :goto_124

    #@11e
    :cond_11e
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@120
    aget v3, v3, v10

    #@122
    div-float v3, v1, v3

    #@124
    .line 505
    :goto_124
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@126
    iput v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@128
    goto :goto_12d

    #@129
    .line 507
    :cond_129
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@12b
    iput v11, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@12d
    .line 509
    :goto_12d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    #@130
    move-result v1

    #@131
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    #@133
    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    #@136
    move-result v1

    #@137
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    #@139
    goto/16 :goto_20b

    #@13b
    .line 514
    :cond_13b
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@13d
    const/16 v2, 0x3e8

    #@13f
    .line 515
    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    #@142
    .line 516
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    #@145
    move-result v2

    #@146
    .line 517
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    #@149
    move-result v1

    #@14a
    .line 518
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@14c
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    #@14f
    move-result v3

    #@150
    .line 524
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@152
    if-eq v13, v7, :cond_165

    #@154
    .line 525
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@156
    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    #@158
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    #@15a
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@15c
    move v14, v3

    #@15d
    move/from16 v16, v5

    #@15f
    move-object/from16 v17, v7

    #@161
    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    #@164
    goto :goto_182

    #@165
    .line 527
    :cond_165
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@167
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    #@16a
    move-result v5

    #@16b
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@16d
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@170
    move-result v7

    #@171
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    #@174
    move-result v5

    #@175
    int-to-float v5, v5

    #@176
    .line 528
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@178
    iget v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@17a
    mul-float/2addr v8, v5

    #@17b
    aput v8, v7, v10

    #@17d
    .line 529
    iget v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@17f
    mul-float/2addr v5, v8

    #@180
    aput v5, v7, v4

    #@182
    .line 531
    :goto_182
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@184
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@186
    aget v4, v7, v4

    #@188
    aget v7, v7, v10

    #@18a
    cmpl-float v5, v5, v11

    #@18c
    if-eqz v5, :cond_190

    #@18e
    div-float/2addr v2, v4

    #@18f
    goto :goto_192

    #@190
    :cond_190
    div-float v2, v1, v7

    #@192
    .line 544
    :goto_192
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    #@195
    move-result v1

    #@196
    if-nez v1, :cond_19e

    #@198
    const/high16 v1, 0x40400000    # 3.0f

    #@19a
    div-float v1, v2, v1

    #@19c
    add-float/2addr v1, v3

    #@19d
    goto :goto_19f

    #@19e
    :cond_19e
    move v1, v3

    #@19f
    :goto_19f
    cmpl-float v4, v1, v11

    #@1a1
    if-eqz v4, :cond_1ed

    #@1a3
    cmpl-float v4, v1, v9

    #@1a5
    if-eqz v4, :cond_1ed

    #@1a7
    .line 547
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@1a9
    const/4 v5, 0x3

    #@1aa
    if-eq v4, v5, :cond_1ed

    #@1ac
    float-to-double v7, v1

    #@1ad
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    #@1af
    cmpg-double v1, v7, v12

    #@1b1
    if-gez v1, :cond_1b5

    #@1b3
    move v1, v11

    #@1b4
    goto :goto_1b6

    #@1b5
    :cond_1b5
    move v1, v9

    #@1b6
    :goto_1b6
    if-ne v4, v6, :cond_1c4

    #@1b8
    add-float v1, v3, v2

    #@1ba
    cmpg-float v1, v1, v11

    #@1bc
    if-gez v1, :cond_1c3

    #@1be
    .line 552
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@1c1
    move-result v1

    #@1c2
    move v2, v1

    #@1c3
    :cond_1c3
    move v1, v9

    #@1c4
    .line 556
    :cond_1c4
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@1c6
    const/4 v5, 0x7

    #@1c7
    if-ne v4, v5, :cond_1d6

    #@1c9
    add-float v1, v3, v2

    #@1cb
    cmpl-float v1, v1, v9

    #@1cd
    if-lez v1, :cond_1d5

    #@1cf
    .line 558
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@1d2
    move-result v1

    #@1d3
    neg-float v1, v1

    #@1d4
    move v2, v1

    #@1d5
    :cond_1d5
    move v1, v11

    #@1d6
    .line 563
    :cond_1d6
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@1d8
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@1da
    invoke-virtual {v4, v5, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    #@1dd
    cmpl-float v1, v11, v3

    #@1df
    if-gez v1, :cond_1e5

    #@1e1
    cmpg-float v1, v9, v3

    #@1e3
    if-gtz v1, :cond_20b

    #@1e5
    .line 565
    :cond_1e5
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@1e7
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@1e9
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@1ec
    goto :goto_20b

    #@1ed
    :cond_1ed
    cmpl-float v2, v11, v1

    #@1ef
    if-gez v2, :cond_1f5

    #@1f1
    cmpg-float v1, v9, v1

    #@1f3
    if-gtz v1, :cond_20b

    #@1f5
    .line 568
    :cond_1f5
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@1f7
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@1f9
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@1fc
    goto :goto_20b

    #@1fd
    .line 419
    :cond_1fd
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    #@200
    move-result v1

    #@201
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    #@203
    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    #@206
    move-result v1

    #@207
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    #@209
    .line 421
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@20b
    :cond_20b
    :goto_20b
    return-void
.end method

.method processTouchRotateEvent(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;ILandroidx/constraintlayout/motion/widget/MotionScene;)V
    .registers 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "velocityTracker",
            "currentState",
            "motionScene"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p2

    #@4
    move-object/from16 v2, p1

    #@6
    .line 254
    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@9
    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@c
    move-result v3

    #@d
    const/4 v4, 0x0

    #@e
    if-eqz v3, :cond_332

    #@10
    const/high16 v5, 0x43b40000    # 360.0f

    #@12
    const/4 v6, -0x1

    #@13
    const/high16 v9, 0x40000000    # 2.0f

    #@15
    const/4 v10, 0x1

    #@16
    if-eq v3, v10, :cond_1c1

    #@18
    const/4 v11, 0x2

    #@19
    if-eq v3, v11, :cond_1d

    #@1b
    goto/16 :goto_340

    #@1d
    .line 264
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    #@20
    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    #@23
    .line 269
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@25
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    #@28
    move-result v3

    #@29
    int-to-float v3, v3

    #@2a
    div-float/2addr v3, v9

    #@2b
    .line 270
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2d
    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@30
    move-result v11

    #@31
    int-to-float v11, v11

    #@32
    div-float/2addr v11, v9

    #@33
    .line 271
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    #@35
    if-eq v12, v6, :cond_6c

    #@37
    .line 272
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@39
    invoke-virtual {v3, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    #@3c
    move-result-object v3

    #@3d
    .line 273
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@3f
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    #@41
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getLocationOnScreen([I)V

    #@44
    .line 274
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    #@46
    aget v11, v11, v4

    #@48
    int-to-float v11, v11

    #@49
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    #@4c
    move-result v12

    #@4d
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    #@50
    move-result v13

    #@51
    add-int/2addr v12, v13

    #@52
    int-to-float v12, v12

    #@53
    div-float/2addr v12, v9

    #@54
    add-float/2addr v11, v12

    #@55
    .line 275
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    #@57
    aget v12, v12, v10

    #@59
    int-to-float v12, v12

    #@5a
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    #@5d
    move-result v13

    #@5e
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    #@61
    move-result v3

    #@62
    add-int/2addr v13, v3

    #@63
    int-to-float v3, v13

    #@64
    div-float/2addr v3, v9

    #@65
    add-float/2addr v3, v12

    #@66
    move/from16 v22, v11

    #@68
    move v11, v3

    #@69
    move/from16 v3, v22

    #@6b
    goto :goto_b3

    #@6c
    .line 276
    :cond_6c
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@6e
    if-eq v12, v6, :cond_b3

    #@70
    .line 277
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@72
    invoke-virtual {v13, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getMotionController(I)Landroidx/constraintlayout/motion/widget/MotionController;

    #@75
    move-result-object v12

    #@76
    .line 278
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@78
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    #@7b
    move-result v12

    #@7c
    invoke-virtual {v13, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    #@7f
    move-result-object v12

    #@80
    if-nez v12, :cond_8a

    #@82
    const-string v9, "TouchResponse"

    #@84
    const-string v12, "could not find view to animate to"

    #@86
    .line 280
    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    goto :goto_b3

    #@8a
    .line 282
    :cond_8a
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@8c
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    #@8e
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getLocationOnScreen([I)V

    #@91
    .line 283
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    #@93
    aget v3, v3, v4

    #@95
    int-to-float v3, v3

    #@96
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    #@99
    move-result v11

    #@9a
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    #@9d
    move-result v13

    #@9e
    add-int/2addr v11, v13

    #@9f
    int-to-float v11, v11

    #@a0
    div-float/2addr v11, v9

    #@a1
    add-float/2addr v3, v11

    #@a2
    .line 284
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    #@a4
    aget v11, v11, v10

    #@a6
    int-to-float v11, v11

    #@a7
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    #@aa
    move-result v13

    #@ab
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    #@ae
    move-result v12

    #@af
    add-int/2addr v13, v12

    #@b0
    int-to-float v12, v13

    #@b1
    div-float/2addr v12, v9

    #@b2
    add-float/2addr v11, v12

    #@b3
    .line 287
    :cond_b3
    :goto_b3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    #@b6
    move-result v9

    #@b7
    sub-float/2addr v9, v3

    #@b8
    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    #@bb
    move-result v12

    #@bc
    sub-float/2addr v12, v11

    #@bd
    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    #@c0
    move-result v13

    #@c1
    sub-float/2addr v13, v11

    #@c2
    float-to-double v13, v13

    #@c3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    #@c6
    move-result v15

    #@c7
    sub-float/2addr v15, v3

    #@c8
    move/from16 p4, v9

    #@ca
    float-to-double v8, v15

    #@cb
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    #@ce
    move-result-wide v8

    #@cf
    .line 291
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    #@d1
    sub-float/2addr v13, v11

    #@d2
    float-to-double v13, v13

    #@d3
    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    #@d5
    sub-float/2addr v11, v3

    #@d6
    float-to-double v6, v11

    #@d7
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    #@da
    move-result-wide v6

    #@db
    sub-double v6, v8, v6

    #@dd
    const-wide v13, 0x4066800000000000L    # 180.0

    #@e2
    mul-double/2addr v6, v13

    #@e3
    const-wide v13, 0x400921fb54442d18L    # Math.PI

    #@e8
    div-double/2addr v6, v13

    #@e9
    double-to-float v6, v6

    #@ea
    const/high16 v7, 0x43a50000    # 330.0f

    #@ec
    cmpl-float v7, v6, v7

    #@ee
    if-lez v7, :cond_f2

    #@f0
    sub-float/2addr v6, v5

    #@f1
    goto :goto_f9

    #@f2
    :cond_f2
    const/high16 v7, -0x3c5b0000    # -330.0f

    #@f4
    cmpg-float v7, v6, v7

    #@f6
    if-gez v7, :cond_f9

    #@f8
    add-float/2addr v6, v5

    #@f9
    .line 299
    :cond_f9
    :goto_f9
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    #@fc
    move-result v7

    #@fd
    float-to-double v13, v7

    #@fe
    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    #@103
    cmpl-double v7, v13, v16

    #@105
    if-gtz v7, :cond_10b

    #@107
    iget-boolean v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@109
    if-eqz v7, :cond_340

    #@10b
    .line 300
    :cond_10b
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@10d
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    #@110
    move-result v7

    #@111
    .line 301
    iget-boolean v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@113
    if-nez v11, :cond_11c

    #@115
    .line 302
    iput-boolean v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@117
    .line 303
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@119
    invoke-virtual {v11, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@11c
    .line 305
    :cond_11c
    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@11e
    const/4 v3, -0x1

    #@11f
    if-eq v11, v3, :cond_145

    #@121
    .line 306
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@123
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    #@125
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    #@127
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@129
    move-object/from16 v16, v3

    #@12b
    move/from16 v17, v11

    #@12d
    move/from16 v18, v7

    #@12f
    move/from16 v19, v5

    #@131
    move/from16 v20, v13

    #@133
    move-object/from16 v21, v14

    #@135
    invoke-virtual/range {v16 .. v21}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    #@138
    .line 307
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@13a
    aget v5, v3, v10

    #@13c
    float-to-double v13, v5

    #@13d
    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    #@140
    move-result-wide v13

    #@141
    double-to-float v5, v13

    #@142
    aput v5, v3, v10

    #@144
    goto :goto_149

    #@145
    .line 309
    :cond_145
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@147
    aput v5, v3, v10

    #@149
    .line 311
    :goto_149
    iget v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    #@14b
    mul-float/2addr v6, v3

    #@14c
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@14e
    aget v3, v3, v10

    #@150
    div-float/2addr v6, v3

    #@151
    add-float/2addr v7, v6

    #@152
    const/high16 v3, 0x3f800000    # 1.0f

    #@154
    .line 313
    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    #@157
    move-result v5

    #@158
    const/4 v6, 0x0

    #@159
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    #@15c
    move-result v5

    #@15d
    .line 314
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@15f
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    #@162
    move-result v7

    #@163
    cmpl-float v11, v5, v7

    #@165
    if-eqz v11, :cond_1ae

    #@167
    cmpl-float v6, v7, v6

    #@169
    if-eqz v6, :cond_16f

    #@16b
    cmpl-float v3, v7, v3

    #@16d
    if-nez v3, :cond_177

    #@16f
    .line 318
    :cond_16f
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@171
    if-nez v6, :cond_174

    #@173
    move v4, v10

    #@174
    :cond_174
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->endTrigger(Z)V

    #@177
    .line 320
    :cond_177
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@179
    invoke-virtual {v3, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@17c
    const/16 v3, 0x3e8

    #@17e
    .line 321
    invoke-interface {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    #@181
    .line 322
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    #@184
    move-result v3

    #@185
    .line 323
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    #@188
    move-result v1

    #@189
    float-to-double v4, v1

    #@18a
    float-to-double v6, v3

    #@18b
    .line 324
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    #@18e
    move-result-wide v10

    #@18f
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    #@192
    move-result-wide v3

    #@193
    sub-double/2addr v3, v8

    #@194
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    #@197
    move-result-wide v3

    #@198
    mul-double/2addr v10, v3

    #@199
    move/from16 v9, p4

    #@19b
    float-to-double v3, v9

    #@19c
    float-to-double v5, v12

    #@19d
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    #@1a0
    move-result-wide v3

    #@1a1
    div-double/2addr v10, v3

    #@1a2
    double-to-float v1, v10

    #@1a3
    .line 325
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@1a5
    float-to-double v4, v1

    #@1a6
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    #@1a9
    move-result-wide v4

    #@1aa
    double-to-float v1, v4

    #@1ab
    iput v1, v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@1ad
    goto :goto_1b3

    #@1ae
    .line 327
    :cond_1ae
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@1b0
    const/4 v3, 0x0

    #@1b1
    iput v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    #@1b3
    .line 329
    :goto_1b3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    #@1b6
    move-result v1

    #@1b7
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    #@1b9
    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    #@1bc
    move-result v1

    #@1bd
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    #@1bf
    goto/16 :goto_340

    #@1c1
    .line 335
    :cond_1c1
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@1c3
    const/16 v6, 0x10

    #@1c5
    .line 336
    invoke-interface {v1, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    #@1c8
    .line 338
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    #@1cb
    move-result v6

    #@1cc
    .line 339
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    #@1cf
    move-result v1

    #@1d0
    .line 340
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@1d2
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    #@1d5
    move-result v7

    #@1d6
    .line 342
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@1d8
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    #@1db
    move-result v8

    #@1dc
    int-to-float v8, v8

    #@1dd
    div-float/2addr v8, v9

    #@1de
    .line 343
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@1e0
    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@1e3
    move-result v11

    #@1e4
    int-to-float v11, v11

    #@1e5
    div-float/2addr v11, v9

    #@1e6
    .line 344
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotationCenterId:I

    #@1e8
    const/4 v3, -0x1

    #@1e9
    if-eq v12, v3, :cond_21c

    #@1eb
    .line 345
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@1ed
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    #@1f0
    move-result-object v8

    #@1f1
    .line 346
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@1f3
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    #@1f5
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getLocationOnScreen([I)V

    #@1f8
    .line 347
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    #@1fa
    aget v4, v11, v4

    #@1fc
    int-to-float v4, v4

    #@1fd
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    #@200
    move-result v11

    #@201
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    #@204
    move-result v12

    #@205
    add-int/2addr v11, v12

    #@206
    int-to-float v11, v11

    #@207
    div-float/2addr v11, v9

    #@208
    add-float/2addr v4, v11

    #@209
    .line 348
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    #@20b
    aget v11, v11, v10

    #@20d
    int-to-float v11, v11

    #@20e
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    #@211
    move-result v12

    #@212
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    #@215
    move-result v8

    #@216
    :goto_216
    add-int/2addr v12, v8

    #@217
    int-to-float v8, v12

    #@218
    div-float/2addr v8, v9

    #@219
    add-float/2addr v11, v8

    #@21a
    move v8, v4

    #@21b
    goto :goto_257

    #@21c
    .line 349
    :cond_21c
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@21e
    const/4 v3, -0x1

    #@21f
    if-eq v12, v3, :cond_257

    #@221
    .line 350
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@223
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getMotionController(I)Landroidx/constraintlayout/motion/widget/MotionController;

    #@226
    move-result-object v8

    #@227
    .line 351
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@229
    invoke-virtual {v8}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    #@22c
    move-result v8

    #@22d
    invoke-virtual {v11, v8}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    #@230
    move-result-object v8

    #@231
    .line 352
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@233
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    #@235
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getLocationOnScreen([I)V

    #@238
    .line 353
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    #@23a
    aget v4, v11, v4

    #@23c
    int-to-float v4, v4

    #@23d
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    #@240
    move-result v11

    #@241
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    #@244
    move-result v12

    #@245
    add-int/2addr v11, v12

    #@246
    int-to-float v11, v11

    #@247
    div-float/2addr v11, v9

    #@248
    add-float/2addr v4, v11

    #@249
    .line 354
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTempLoc:[I

    #@24b
    aget v11, v11, v10

    #@24d
    int-to-float v11, v11

    #@24e
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    #@251
    move-result v12

    #@252
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    #@255
    move-result v8

    #@256
    goto :goto_216

    #@257
    .line 356
    :cond_257
    :goto_257
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    #@25a
    move-result v4

    #@25b
    sub-float/2addr v4, v8

    #@25c
    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    #@25f
    move-result v2

    #@260
    sub-float/2addr v2, v11

    #@261
    float-to-double v8, v2

    #@262
    float-to-double v11, v4

    #@263
    .line 358
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    #@266
    move-result-wide v8

    #@267
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    #@26a
    move-result-wide v8

    #@26b
    .line 360
    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@26d
    const/4 v3, -0x1

    #@26e
    if-eq v11, v3, :cond_294

    #@270
    .line 361
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@272
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    #@274
    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    #@276
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@278
    move-object/from16 v16, v3

    #@27a
    move/from16 v17, v11

    #@27c
    move/from16 v18, v7

    #@27e
    move/from16 v19, v5

    #@280
    move/from16 v20, v12

    #@282
    move-object/from16 v21, v13

    #@284
    invoke-virtual/range {v16 .. v21}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    #@287
    .line 362
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@289
    aget v5, v3, v10

    #@28b
    float-to-double v11, v5

    #@28c
    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    #@28f
    move-result-wide v11

    #@290
    double-to-float v5, v11

    #@291
    aput v5, v3, v10

    #@293
    goto :goto_298

    #@294
    .line 364
    :cond_294
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@296
    aput v5, v3, v10

    #@298
    :goto_298
    add-float/2addr v1, v2

    #@299
    float-to-double v1, v1

    #@29a
    add-float/2addr v6, v4

    #@29b
    float-to-double v3, v6

    #@29c
    .line 366
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    #@29f
    move-result-wide v1

    #@2a0
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    #@2a3
    move-result-wide v1

    #@2a4
    sub-double/2addr v1, v8

    #@2a5
    double-to-float v1, v1

    #@2a6
    const/high16 v2, 0x427a0000    # 62.5f

    #@2a8
    mul-float/2addr v1, v2

    #@2a9
    .line 370
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    #@2ac
    move-result v2

    #@2ad
    const/high16 v3, 0x40400000    # 3.0f

    #@2af
    if-nez v2, :cond_2bd

    #@2b1
    mul-float v2, v1, v3

    #@2b3
    .line 371
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    #@2b5
    mul-float/2addr v2, v4

    #@2b6
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@2b8
    aget v4, v4, v10

    #@2ba
    div-float/2addr v2, v4

    #@2bb
    add-float/2addr v2, v7

    #@2bc
    goto :goto_2be

    #@2bd
    :cond_2bd
    move v2, v7

    #@2be
    :goto_2be
    const/4 v4, 0x0

    #@2bf
    cmpl-float v5, v2, v4

    #@2c1
    if-eqz v5, :cond_31f

    #@2c3
    const/high16 v4, 0x3f800000    # 1.0f

    #@2c5
    cmpl-float v5, v2, v4

    #@2c7
    if-eqz v5, :cond_31f

    #@2c9
    .line 373
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@2cb
    const/4 v5, 0x3

    #@2cc
    if-eq v4, v5, :cond_31f

    #@2ce
    .line 374
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    #@2d0
    mul-float/2addr v1, v5

    #@2d1
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@2d3
    aget v5, v5, v10

    #@2d5
    div-float/2addr v1, v5

    #@2d6
    float-to-double v5, v2

    #@2d7
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    #@2d9
    cmpg-double v2, v5, v8

    #@2db
    if-gez v2, :cond_2df

    #@2dd
    const/4 v2, 0x0

    #@2de
    goto :goto_2e1

    #@2df
    :cond_2df
    const/high16 v2, 0x3f800000    # 1.0f

    #@2e1
    :goto_2e1
    const/4 v5, 0x6

    #@2e2
    if-ne v4, v5, :cond_2f1

    #@2e4
    add-float v2, v7, v1

    #@2e6
    const/4 v4, 0x0

    #@2e7
    cmpg-float v2, v2, v4

    #@2e9
    if-gez v2, :cond_2ef

    #@2eb
    .line 379
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@2ee
    move-result v1

    #@2ef
    :cond_2ef
    const/high16 v2, 0x3f800000    # 1.0f

    #@2f1
    .line 383
    :cond_2f1
    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@2f3
    const/4 v5, 0x7

    #@2f4
    if-ne v4, v5, :cond_304

    #@2f6
    add-float v2, v7, v1

    #@2f8
    const/high16 v4, 0x3f800000    # 1.0f

    #@2fa
    cmpl-float v2, v2, v4

    #@2fc
    if-lez v2, :cond_303

    #@2fe
    .line 385
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@301
    move-result v1

    #@302
    neg-float v1, v1

    #@303
    :cond_303
    const/4 v2, 0x0

    #@304
    .line 389
    :cond_304
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@306
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@308
    mul-float/2addr v1, v3

    #@309
    invoke-virtual {v4, v5, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    #@30c
    const/4 v1, 0x0

    #@30d
    cmpl-float v1, v1, v7

    #@30f
    if-gez v1, :cond_317

    #@311
    const/high16 v1, 0x3f800000    # 1.0f

    #@313
    cmpg-float v1, v1, v7

    #@315
    if-gtz v1, :cond_340

    #@317
    .line 391
    :cond_317
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@319
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@31b
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@31e
    goto :goto_340

    #@31f
    :cond_31f
    const/4 v1, 0x0

    #@320
    cmpl-float v1, v1, v2

    #@322
    if-gez v1, :cond_32a

    #@324
    const/high16 v1, 0x3f800000    # 1.0f

    #@326
    cmpg-float v1, v1, v2

    #@328
    if-gtz v1, :cond_340

    #@32a
    .line 394
    :cond_32a
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@32c
    sget-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@32e
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@331
    goto :goto_340

    #@332
    .line 258
    :cond_332
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    #@335
    move-result v1

    #@336
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    #@338
    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    #@33b
    move-result v1

    #@33c
    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    #@33e
    .line 261
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@340
    :cond_340
    :goto_340
    return-void
.end method

.method scrollMove(FF)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    #@0
    .line 629
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    #@5
    move-result v0

    #@6
    .line 630
    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@8
    const/4 v7, 0x1

    #@9
    if-nez v1, :cond_12

    #@b
    .line 631
    iput-boolean v7, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@d
    .line 632
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@f
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@12
    .line 634
    :cond_12
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@14
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@16
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    #@18
    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    #@1a
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@1c
    move v3, v0

    #@1d
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    #@20
    .line 635
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@22
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@24
    const/4 v3, 0x0

    #@25
    aget v4, v2, v3

    #@27
    mul-float/2addr v1, v4

    #@28
    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@2a
    aget v2, v2, v7

    #@2c
    mul-float/2addr v4, v2

    #@2d
    add-float/2addr v1, v4

    #@2e
    .line 637
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@31
    move-result v1

    #@32
    float-to-double v1, v1

    #@33
    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    #@38
    cmpg-double v1, v1, v4

    #@3a
    if-gez v1, :cond_45

    #@3c
    .line 638
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@3e
    const v2, 0x3c23d70a    # 0.01f

    #@41
    aput v2, v1, v3

    #@43
    .line 639
    aput v2, v1, v7

    #@45
    .line 643
    :cond_45
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@47
    const/4 v2, 0x0

    #@48
    cmpl-float v4, v1, v2

    #@4a
    if-eqz v4, :cond_53

    #@4c
    mul-float/2addr p1, v1

    #@4d
    .line 644
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@4f
    aget p2, p2, v3

    #@51
    div-float/2addr p1, p2

    #@52
    goto :goto_5c

    #@53
    .line 646
    :cond_53
    iget p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@55
    mul-float/2addr p2, p1

    #@56
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@58
    aget p1, p1, v7

    #@5a
    div-float p1, p2, p1

    #@5c
    :goto_5c
    add-float/2addr v0, p1

    #@5d
    const/high16 p1, 0x3f800000    # 1.0f

    #@5f
    .line 648
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    #@62
    move-result p1

    #@63
    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    #@66
    move-result p1

    #@67
    .line 650
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@69
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    #@6c
    move-result p2

    #@6d
    cmpl-float p2, p1, p2

    #@6f
    if-eqz p2, :cond_76

    #@71
    .line 651
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@73
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@76
    :cond_76
    return-void
.end method

.method scrollUp(FF)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 606
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@3
    .line 608
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@5
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    #@8
    move-result v1

    #@9
    .line 609
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@d
    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    #@f
    iget v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    #@11
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@13
    move v4, v1

    #@14
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    #@17
    .line 610
    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@19
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    #@1b
    aget v4, v3, v0

    #@1d
    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@1f
    const/4 v6, 0x1

    #@20
    aget v3, v3, v6

    #@22
    const/4 v7, 0x0

    #@23
    cmpl-float v8, v2, v7

    #@25
    if-eqz v8, :cond_2a

    #@27
    mul-float/2addr p1, v2

    #@28
    div-float/2addr p1, v4

    #@29
    goto :goto_2d

    #@2a
    :cond_2a
    mul-float/2addr p2, v5

    #@2b
    div-float p1, p2, v3

    #@2d
    .line 617
    :goto_2d
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@30
    move-result p2

    #@31
    if-nez p2, :cond_38

    #@33
    const/high16 p2, 0x40400000    # 3.0f

    #@35
    div-float p2, p1, p2

    #@37
    add-float/2addr v1, p2

    #@38
    :cond_38
    cmpl-float p2, v1, v7

    #@3a
    if-eqz p2, :cond_5c

    #@3c
    const/high16 p2, 0x3f800000    # 1.0f

    #@3e
    cmpl-float v2, v1, p2

    #@40
    if-eqz v2, :cond_44

    #@42
    move v2, v6

    #@43
    goto :goto_45

    #@44
    :cond_44
    move v2, v0

    #@45
    .line 620
    :goto_45
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@47
    const/4 v4, 0x3

    #@48
    if-eq v3, v4, :cond_4b

    #@4a
    move v0, v6

    #@4b
    :cond_4b
    and-int/2addr v0, v2

    #@4c
    if-eqz v0, :cond_5c

    #@4e
    .line 621
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@50
    float-to-double v1, v1

    #@51
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    #@53
    cmpg-double v1, v1, v4

    #@55
    if-gez v1, :cond_58

    #@57
    goto :goto_59

    #@58
    :cond_58
    move v7, p2

    #@59
    :goto_59
    invoke-virtual {v0, v3, v7, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    #@5c
    :cond_5c
    return-void
.end method

.method public setAnchorId(I)V
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
    .line 693
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@2
    return-void
.end method

.method setAutoCompleteMode(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoCompleteMode"
        }
    .end annotation

    #@0
    .line 769
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAutoCompleteMode:I

    #@2
    return-void
.end method

.method setDown(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lastTouchX",
            "lastTouchY"
        }
    .end annotation

    #@0
    .line 576
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    #@2
    .line 577
    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    #@4
    return-void
.end method

.method public setMaxAcceleration(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "acceleration"
        }
    .end annotation

    #@0
    .line 733
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    #@2
    return-void
.end method

.method public setMaxVelocity(F)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "velocity"
        }
    .end annotation

    #@0
    .line 723
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    #@2
    return-void
.end method

.method public setRTL(Z)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtl"
        }
    .end annotation

    #@0
    const/4 v0, 0x6

    #@1
    const/4 v1, 0x3

    #@2
    const/4 v2, 0x4

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v4, 0x5

    #@5
    const/4 v5, 0x2

    #@6
    if-eqz p1, :cond_1d

    #@8
    .line 159
    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    #@a
    aget-object v1, p1, v1

    #@c
    aput-object v1, p1, v2

    #@e
    .line 160
    aget-object v1, p1, v5

    #@10
    aput-object v1, p1, v4

    #@12
    .line 161
    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    #@14
    aget-object v1, p1, v5

    #@16
    aput-object v1, p1, v4

    #@18
    .line 162
    aget-object v1, p1, v3

    #@1a
    aput-object v1, p1, v0

    #@1c
    goto :goto_31

    #@1d
    .line 164
    :cond_1d
    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    #@1f
    aget-object v6, p1, v5

    #@21
    aput-object v6, p1, v2

    #@23
    .line 165
    aget-object v1, p1, v1

    #@25
    aput-object v1, p1, v4

    #@27
    .line 166
    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    #@29
    aget-object v1, p1, v3

    #@2b
    aput-object v1, p1, v4

    #@2d
    .line 167
    aget-object v1, p1, v5

    #@2f
    aput-object v1, p1, v0

    #@31
    .line 170
    :goto_31
    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    #@33
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    #@35
    aget-object p1, p1, v0

    #@37
    const/4 v0, 0x0

    #@38
    aget v1, p1, v0

    #@3a
    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    #@3c
    .line 171
    aget p1, p1, v3

    #@3e
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    #@40
    .line 172
    iget p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    #@42
    sget-object v1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    #@44
    array-length v2, v1

    #@45
    if-lt p1, v2, :cond_48

    #@47
    return-void

    #@48
    .line 175
    :cond_48
    aget-object p1, v1, p1

    #@4a
    aget v0, p1, v0

    #@4c
    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@4e
    .line 176
    aget p1, p1, v3

    #@50
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@52
    return-void
.end method

.method public setTouchAnchorLocation(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    #@0
    .line 712
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    #@2
    .line 713
    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    #@4
    return-void
.end method

.method public setTouchUpMode(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchUpMode"
        }
    .end annotation

    #@0
    .line 838
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    #@2
    return-void
.end method

.method setUpTouchEvent(FF)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lastTouchX",
            "lastTouchY"
        }
    .end annotation

    #@0
    .line 242
    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    #@2
    .line 243
    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    #@4
    const/4 p1, 0x0

    #@5
    .line 244
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    #@7
    return-void
.end method

.method setupTouch()V
    .registers 5

    #@0
    .line 663
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_2e

    #@5
    .line 664
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@7
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_2f

    #@d
    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    const-string v2, "cannot find TouchAnchorId @id/"

    #@11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@16
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@19
    move-result-object v2

    #@1a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    #@1c
    invoke-static {v2, v3}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    const-string v2, "TouchResponse"

    #@2a
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    goto :goto_2f

    #@2e
    :cond_2e
    const/4 v0, 0x0

    #@2f
    .line 669
    :cond_2f
    :goto_2f
    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

    #@31
    if-eqz v1, :cond_45

    #@33
    .line 670
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    #@35
    .line 671
    new-instance v1, Landroidx/constraintlayout/motion/widget/TouchResponse$1;

    #@37
    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse$1;-><init>(Landroidx/constraintlayout/motion/widget/TouchResponse;)V

    #@3a
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@3d
    .line 677
    new-instance v1, Landroidx/constraintlayout/motion/widget/TouchResponse$2;

    #@3f
    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse$2;-><init>(Landroidx/constraintlayout/motion/widget/TouchResponse;)V

    #@42
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    #@45
    :cond_45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 825
    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    const-string v0, "rotation"

    #@a
    goto :goto_26

    #@b
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string v1, " , "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    :goto_26
    return-object v0
.end method
