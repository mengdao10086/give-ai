.class public Landroidx/constraintlayout/motion/widget/MotionScene;
.super Ljava/lang/Object;
.source "MotionScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    }
.end annotation


# static fields
.field static final ANTICIPATE:I = 0x6

.field static final BOUNCE:I = 0x4

.field private static final CONSTRAINTSET_TAG:Ljava/lang/String; = "ConstraintSet"

.field private static final DEBUG:Z = false

.field static final EASE_IN:I = 0x1

.field static final EASE_IN_OUT:I = 0x0

.field static final EASE_OUT:I = 0x2

.field private static final INCLUDE_TAG:Ljava/lang/String; = "include"

.field private static final INCLUDE_TAG_UC:Ljava/lang/String; = "Include"

.field private static final INTERPOLATOR_REFERENCE_ID:I = -0x2

.field private static final KEYFRAMESET_TAG:Ljava/lang/String; = "KeyFrameSet"

.field public static final LAYOUT_CALL_MEASURE:I = 0x2

.field public static final LAYOUT_HONOR_REQUEST:I = 0x1

.field public static final LAYOUT_IGNORE_REQUEST:I = 0x0

.field static final LINEAR:I = 0x3

.field private static final MIN_DURATION:I = 0x8

.field private static final MOTIONSCENE_TAG:Ljava/lang/String; = "MotionScene"

.field private static final ONCLICK_TAG:Ljava/lang/String; = "OnClick"

.field private static final ONSWIPE_TAG:Ljava/lang/String; = "OnSwipe"

.field static final OVERSHOOT:I = 0x5

.field private static final SPLINE_STRING:I = -0x1

.field private static final STATESET_TAG:Ljava/lang/String; = "StateSet"

.field private static final TAG:Ljava/lang/String; = "MotionScene"

.field static final TRANSITION_BACKWARD:I = 0x0

.field static final TRANSITION_FORWARD:I = 0x1

.field private static final TRANSITION_TAG:Ljava/lang/String; = "Transition"

.field public static final UNSET:I = -0x1

.field private static final VIEW_TRANSITION:Ljava/lang/String; = "ViewTransition"


# instance fields
.field private DEBUG_DESKTOP:Z

.field private mAbstractTransitionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSetIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

.field private mDefaultDuration:I

.field private mDefaultTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

.field private mDeriveMap:Landroid/util/SparseIntArray;

.field private mDisableAutoTransition:Z

.field private mIgnoreTouch:Z

.field private mLastTouchDown:Landroid/view/MotionEvent;

.field mLastTouchX:F

.field mLastTouchY:F

.field private mLayoutDuringTransition:I

.field private final mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mMotionOutsideRegion:Z

.field private mRtl:Z

.field mStateSet:Landroidx/constraintlayout/widget/StateSet;

.field private mTransitionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition;",
            ">;"
        }
    .end annotation
.end field

.field private mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

.field final mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "layout",
            "resourceID"
        }
    .end annotation

    #@0
    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 70
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    #@6
    .line 71
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@8
    const/4 v1, 0x0

    #@9
    .line 72
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDisableAutoTransition:Z

    #@b
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    #@d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@12
    .line 74
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@14
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    #@1b
    .line 77
    new-instance v0, Landroid/util/SparseArray;

    #@1d
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@20
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@22
    .line 78
    new-instance v0, Ljava/util/HashMap;

    #@24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@27
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    #@29
    .line 79
    new-instance v0, Landroid/util/SparseIntArray;

    #@2b
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@2e
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    #@30
    .line 80
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->DEBUG_DESKTOP:Z

    #@32
    const/16 v0, 0x190

    #@34
    .line 81
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    #@36
    .line 82
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLayoutDuringTransition:I

    #@38
    .line 88
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    #@3a
    .line 89
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    #@3c
    .line 1048
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@3e
    .line 1049
    new-instance v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@40
    invoke-direct {v0, p2}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@43
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@45
    .line 1051
    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/motion/widget/MotionScene;->load(Landroid/content/Context;I)V

    #@48
    .line 1052
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@4a
    sget p2, Landroidx/constraintlayout/widget/R$id;->motion_base:I

    #@4c
    new-instance p3, Landroidx/constraintlayout/widget/ConstraintSet;

    #@4e
    invoke-direct {p3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    #@51
    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@54
    .line 1053
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    #@56
    sget p2, Landroidx/constraintlayout/widget/R$id;->motion_base:I

    #@58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5b
    move-result-object p2

    #@5c
    const-string p3, "motion_base"

    #@5e
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layout"
        }
    .end annotation

    #@0
    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 70
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    #@6
    .line 71
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@8
    const/4 v1, 0x0

    #@9
    .line 72
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDisableAutoTransition:Z

    #@b
    .line 73
    new-instance v2, Ljava/util/ArrayList;

    #@d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@12
    .line 74
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@14
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    #@1b
    .line 77
    new-instance v0, Landroid/util/SparseArray;

    #@1d
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@20
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@22
    .line 78
    new-instance v0, Ljava/util/HashMap;

    #@24
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@27
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    #@29
    .line 79
    new-instance v0, Landroid/util/SparseIntArray;

    #@2b
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@2e
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    #@30
    .line 80
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->DEBUG_DESKTOP:Z

    #@32
    const/16 v0, 0x190

    #@34
    .line 81
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    #@36
    .line 82
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLayoutDuringTransition:I

    #@38
    .line 88
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    #@3a
    .line 89
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    #@3c
    .line 1043
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@3e
    .line 1044
    new-instance v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@40
    invoke-direct {v0, p1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;-><init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@43
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@45
    return-void
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/motion/widget/MotionScene;)I
    .registers 1

    #@0
    .line 60
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLayoutDuringTransition:I

    #@2
    return p0
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/motion/widget/MotionScene;)Landroid/util/SparseArray;
    .registers 1

    #@0
    .line 60
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@2
    return-object p0
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;I)I
    .registers 3

    #@0
    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->parseInclude(Landroid/content/Context;I)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/motion/widget/MotionScene;)Landroidx/constraintlayout/motion/widget/MotionLayout;
    .registers 1

    #@0
    .line 60
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    return-object p0
.end method

.method static synthetic access$900(Landroidx/constraintlayout/motion/widget/MotionScene;)I
    .registers 1

    #@0
    .line 60
    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    #@2
    return p0
.end method

.method private getId(Landroid/content/Context;Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "idString"
        }
    .end annotation

    #@0
    const-string v0, "/"

    #@2
    .line 1189
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    const/4 v2, -0x1

    #@8
    if-eqz v0, :cond_3c

    #@a
    const/16 v0, 0x2f

    #@c
    .line 1190
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    #@f
    move-result v0

    #@10
    add-int/2addr v0, v1

    #@11
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    .line 1191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@18
    move-result-object v3

    #@19
    const-string v4, "id"

    #@1b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1e
    move-result-object p1

    #@1f
    invoke-virtual {v3, v0, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@22
    move-result p1

    #@23
    .line 1192
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->DEBUG_DESKTOP:Z

    #@25
    if-eqz v0, :cond_3d

    #@27
    .line 1193
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@29
    new-instance v3, Ljava/lang/StringBuilder;

    #@2b
    const-string v4, "id getMap res = "

    #@2d
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3b
    goto :goto_3d

    #@3c
    :cond_3c
    move p1, v2

    #@3d
    :cond_3d
    :goto_3d
    if-ne p1, v2, :cond_57

    #@3f
    if-eqz p2, :cond_50

    #@41
    .line 1197
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@44
    move-result v0

    #@45
    if-le v0, v1, :cond_50

    #@47
    .line 1198
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4a
    move-result-object p1

    #@4b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4e
    move-result p1

    #@4f
    goto :goto_57

    #@50
    :cond_50
    const-string p2, "MotionScene"

    #@52
    const-string v0, "error in parsing id"

    #@54
    .line 1200
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    :cond_57
    :goto_57
    return p1
.end method

.method private getIndex(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transition"
        }
    .end annotation

    #@0
    .line 202
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$300(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@3
    move-result p1

    #@4
    const/4 v0, -0x1

    #@5
    if-eq p1, v0, :cond_23

    #@7
    const/4 v1, 0x0

    #@8
    .line 208
    :goto_8
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v2

    #@e
    if-ge v1, v2, :cond_22

    #@10
    .line 209
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@18
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$300(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@1b
    move-result v2

    #@1c
    if-ne v2, p1, :cond_1f

    #@1e
    return v1

    #@1f
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_8

    #@22
    :cond_22
    return v0

    #@23
    .line 204
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@25
    const-string v0, "The transition must have an id"

    #@27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw p1
.end method

.method static getLine(Landroid/content/Context;ILorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceId",
            "pullParser"
        }
    .end annotation

    #@0
    .line 1912
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, ".("

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object p0

    #@f
    const-string p1, ".xml:"

    #@11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object p0

    #@15
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    #@18
    move-result p1

    #@19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p0

    #@1d
    const-string p1, ") \""

    #@1f
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object p0

    #@23
    .line 1913
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@26
    move-result-object p1

    #@27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object p0

    #@2b
    const-string p1, "\""

    #@2d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object p0

    #@31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object p0

    #@35
    return-object p0
.end method

.method private getRealID(I)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateId"
        }
    .end annotation

    #@0
    .line 239
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    #@2
    if-eqz v0, :cond_c

    #@4
    const/4 v1, -0x1

    #@5
    .line 240
    invoke-virtual {v0, p1, v1, v1}, Landroidx/constraintlayout/widget/StateSet;->stateGetConstraintID(III)I

    #@8
    move-result v0

    #@9
    if-eq v0, v1, :cond_c

    #@b
    return v0

    #@c
    :cond_c
    return p1
.end method

.method private hasCycleDependency(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    #@0
    .line 1808
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@5
    move-result v0

    #@6
    .line 1809
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    #@8
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    #@b
    move-result v1

    #@c
    :goto_c
    if-lez v0, :cond_1f

    #@e
    const/4 v2, 0x1

    #@f
    if-ne v0, p1, :cond_12

    #@11
    return v2

    #@12
    :cond_12
    add-int/lit8 v3, v1, -0x1

    #@14
    if-gez v1, :cond_17

    #@16
    return v2

    #@17
    .line 1817
    :cond_17
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    #@19
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    #@1c
    move-result v0

    #@1d
    move v1, v3

    #@1e
    goto :goto_c

    #@1f
    :cond_1f
    const/4 p1, 0x0

    #@20
    return p1
.end method

.method private isProcessingTouch()Z
    .registers 2

    #@0
    .line 439
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

    #@2
    if-eqz v0, :cond_6

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

.method private load(Landroid/content/Context;I)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceId"
        }
    .end annotation

    #@0
    .line 1064
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    .line 1065
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@7
    move-result-object v0

    #@8
    .line 1070
    :try_start_8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@b
    move-result v1

    #@c
    const/4 v2, 0x0

    #@d
    :goto_d
    const/4 v3, 0x1

    #@e
    if-eq v1, v3, :cond_17a

    #@10
    if-eqz v1, :cond_168

    #@12
    const/4 v4, 0x2

    #@13
    if-eq v1, v4, :cond_17

    #@15
    goto/16 :goto_16b

    #@17
    .line 1078
    :cond_17
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 1079
    iget-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->DEBUG_DESKTOP:Z

    #@1d
    if-eqz v5, :cond_37

    #@1f
    .line 1080
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@21
    new-instance v6, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string v7, "parsing = "

    #@28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v6

    #@2c
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@37
    .line 1085
    :cond_37
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@3a
    move-result v5
    :try_end_3b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_3b} :catch_176
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3b} :catch_171

    #@3b
    const-string v6, "MotionScene"

    #@3d
    const/4 v7, -0x1

    #@3e
    sparse-switch v5, :sswitch_data_17c

    #@41
    goto/16 :goto_a6

    #@43
    :sswitch_43
    :try_start_43
    const-string v3, "include"

    #@45
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v1

    #@49
    if-eqz v1, :cond_a6

    #@4b
    const/4 v3, 0x6

    #@4c
    goto :goto_a7

    #@4d
    :sswitch_4d
    const-string v3, "StateSet"

    #@4f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_a6

    #@55
    const/4 v3, 0x4

    #@56
    goto :goto_a7

    #@57
    :sswitch_57
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_a6

    #@5d
    const/4 v3, 0x0

    #@5e
    goto :goto_a7

    #@5f
    :sswitch_5f
    const-string v3, "OnSwipe"

    #@61
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v1

    #@65
    if-eqz v1, :cond_a6

    #@67
    move v3, v4

    #@68
    goto :goto_a7

    #@69
    :sswitch_69
    const-string v3, "OnClick"

    #@6b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v1

    #@6f
    if-eqz v1, :cond_a6

    #@71
    const/4 v3, 0x3

    #@72
    goto :goto_a7

    #@73
    :sswitch_73
    const-string v4, "Transition"

    #@75
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v1

    #@79
    if-eqz v1, :cond_a6

    #@7b
    goto :goto_a7

    #@7c
    :sswitch_7c
    const-string v3, "ViewTransition"

    #@7e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v1

    #@82
    if-eqz v1, :cond_a6

    #@84
    const/16 v3, 0x9

    #@86
    goto :goto_a7

    #@87
    :sswitch_87
    const-string v3, "Include"

    #@89
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_a6

    #@8f
    const/4 v3, 0x7

    #@90
    goto :goto_a7

    #@91
    :sswitch_91
    const-string v3, "KeyFrameSet"

    #@93
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@96
    move-result v1

    #@97
    if-eqz v1, :cond_a6

    #@99
    const/16 v3, 0x8

    #@9b
    goto :goto_a7

    #@9c
    :sswitch_9c
    const-string v3, "ConstraintSet"

    #@9e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a1
    move-result v1

    #@a2
    if-eqz v1, :cond_a6

    #@a4
    const/4 v3, 0x5

    #@a5
    goto :goto_a7

    #@a6
    :cond_a6
    :goto_a6
    move v3, v7

    #@a7
    :goto_a7
    packed-switch v3, :pswitch_data_1a6

    #@aa
    goto/16 :goto_16b

    #@ac
    .line 1138
    :pswitch_ac
    new-instance v1, Landroidx/constraintlayout/motion/widget/ViewTransition;

    #@ae
    invoke-direct {v1, p1, v0}, Landroidx/constraintlayout/motion/widget/ViewTransition;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@b1
    .line 1139
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@b3
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->add(Landroidx/constraintlayout/motion/widget/ViewTransition;)V

    #@b6
    goto/16 :goto_16b

    #@b8
    .line 1132
    :pswitch_b8
    new-instance v1, Landroidx/constraintlayout/motion/widget/KeyFrames;

    #@ba
    invoke-direct {v1, p1, v0}, Landroidx/constraintlayout/motion/widget/KeyFrames;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@bd
    if-eqz v2, :cond_16b

    #@bf
    .line 1134
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$1400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;

    #@c2
    move-result-object v3

    #@c3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c6
    goto/16 :goto_16b

    #@c8
    .line 1129
    :pswitch_c8
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->parseInclude(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@cb
    goto/16 :goto_16b

    #@cd
    .line 1125
    :pswitch_cd
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I

    #@d0
    goto/16 :goto_16b

    #@d2
    .line 1122
    :pswitch_d2
    new-instance v1, Landroidx/constraintlayout/widget/StateSet;

    #@d4
    invoke-direct {v1, p1, v0}, Landroidx/constraintlayout/widget/StateSet;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@d7
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    #@d9
    goto/16 :goto_16b

    #@db
    :pswitch_db
    if-eqz v2, :cond_16b

    #@dd
    .line 1118
    invoke-virtual {v2, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->addOnClick(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@e0
    goto/16 :goto_16b

    #@e2
    :pswitch_e2
    if-nez v2, :cond_116

    #@e4
    .line 1108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e7
    move-result-object v1

    #@e8
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@eb
    move-result-object v1

    #@ec
    .line 1109
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    #@ef
    move-result v3

    #@f0
    .line 1110
    new-instance v4, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string v5, " OnSwipe ("

    #@f7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v4

    #@fb
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v1

    #@ff
    const-string v4, ".xml:"

    #@101
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    move-result-object v1

    #@105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@108
    move-result-object v1

    #@109
    const-string v3, ")"

    #@10b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v1

    #@10f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v1

    #@113
    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@116
    :cond_116
    if-eqz v2, :cond_16b

    #@118
    .line 1113
    new-instance v1, Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@11a
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@11c
    invoke-direct {v1, p1, v3, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;-><init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V

    #@11f
    # setter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v2, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$202(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroidx/constraintlayout/motion/widget/TouchResponse;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@122
    goto :goto_16b

    #@123
    .line 1090
    :pswitch_123
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@125
    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@127
    invoke-direct {v2, p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@12a
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12d
    .line 1091
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@12f
    if-nez v1, :cond_14a

    #@131
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mIsAbstract:Z
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$1300(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Z

    #@134
    move-result v1

    #@135
    if-nez v1, :cond_14a

    #@137
    .line 1092
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@139
    .line 1093
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@13c
    move-result-object v1

    #@13d
    if-eqz v1, :cond_14a

    #@13f
    .line 1094
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@141
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@144
    move-result-object v1

    #@145
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    #@147
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    #@14a
    .line 1097
    :cond_14a
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mIsAbstract:Z
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$1300(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Z

    #@14d
    move-result v1

    #@14e
    if-eqz v1, :cond_16b

    #@150
    .line 1098
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@153
    move-result v1

    #@154
    if-ne v1, v7, :cond_159

    #@156
    .line 1099
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@158
    goto :goto_15e

    #@159
    .line 1101
    :cond_159
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    #@15b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15e
    .line 1103
    :goto_15e
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@160
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@163
    goto :goto_16b

    #@164
    .line 1087
    :pswitch_164
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->parseMotionSceneTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@167
    goto :goto_16b

    #@168
    .line 1075
    :cond_168
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@16b
    .line 1072
    :cond_16b
    :goto_16b
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@16e
    move-result v1
    :try_end_16f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_16f} :catch_176
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_16f} :catch_171

    #@16f
    goto/16 :goto_d

    #@171
    :catch_171
    move-exception p1

    #@172
    .line 1165
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@175
    goto :goto_17a

    #@176
    :catch_176
    move-exception p1

    #@177
    .line 1160
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    #@17a
    :cond_17a
    :goto_17a
    return-void

    #@17b
    nop

    #@17c
    :sswitch_data_17c
    .sparse-switch
        -0x50764adb -> :sswitch_9c
        -0x49df9cec -> :sswitch_91
        -0x28fe1378 -> :sswitch_87
        0x3b205fa -> :sswitch_7c
        0x100d4975 -> :sswitch_73
        0x12a432c9 -> :sswitch_69
        0x138aac7b -> :sswitch_5f
        0x2f487256 -> :sswitch_57
        0x526c4e31 -> :sswitch_4d
        0x73c954a8 -> :sswitch_43
    .end sparse-switch

    #@1a6
    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_164
        :pswitch_123
        :pswitch_e2
        :pswitch_db
        :pswitch_d2
        :pswitch_cd
        :pswitch_c8
        :pswitch_c8
        :pswitch_b8
        :pswitch_ac
    .end packed-switch
.end method

.method private parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    #@0
    .line 1247
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    .line 1248
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setForceId(Z)V

    #@9
    .line 1249
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@c
    move-result v2

    #@d
    const/4 v3, -0x1

    #@e
    move v4, v1

    #@f
    move v5, v3

    #@10
    move v6, v5

    #@11
    :goto_11
    const/4 v7, 0x1

    #@12
    if-ge v4, v2, :cond_e6

    #@14
    .line 1253
    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    .line 1254
    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    .line 1255
    iget-boolean v10, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->DEBUG_DESKTOP:Z

    #@1e
    if-eqz v10, :cond_34

    #@20
    .line 1256
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@22
    new-instance v11, Ljava/lang/StringBuilder;

    #@24
    const-string v12, "id string = "

    #@26
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@29
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v11

    #@2d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v11

    #@31
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@34
    .line 1258
    :cond_34
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    #@37
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    #@3a
    move-result v10

    #@3b
    const/4 v11, 0x2

    #@3c
    sparse-switch v10, :sswitch_data_102

    #@3f
    :goto_3f
    move v8, v3

    #@40
    goto :goto_61

    #@41
    :sswitch_41
    const-string v10, "id"

    #@43
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v8

    #@47
    if-nez v8, :cond_4a

    #@49
    goto :goto_3f

    #@4a
    :cond_4a
    move v8, v11

    #@4b
    goto :goto_61

    #@4c
    :sswitch_4c
    const-string v10, "constraintRotate"

    #@4e
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v8

    #@52
    if-nez v8, :cond_55

    #@54
    goto :goto_3f

    #@55
    :cond_55
    move v8, v7

    #@56
    goto :goto_61

    #@57
    :sswitch_57
    const-string v10, "deriveConstraintsFrom"

    #@59
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v8

    #@5d
    if-nez v8, :cond_60

    #@5f
    goto :goto_3f

    #@60
    :cond_60
    move v8, v1

    #@61
    :goto_61
    packed-switch v8, :pswitch_data_110

    #@64
    goto/16 :goto_e2

    #@66
    .line 1260
    :pswitch_66
    invoke-direct {p0, p1, v9}, Landroidx/constraintlayout/motion/widget/MotionScene;->getId(Landroid/content/Context;Ljava/lang/String;)I

    #@69
    move-result v5

    #@6a
    .line 1261
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    #@6c
    invoke-static {v9}, Landroidx/constraintlayout/motion/widget/MotionScene;->stripID(Ljava/lang/String;)Ljava/lang/String;

    #@6f
    move-result-object v8

    #@70
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@73
    move-result-object v9

    #@74
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    .line 1262
    invoke-static {p1, v5}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    #@7a
    move-result-object v7

    #@7b
    iput-object v7, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mIdString:Ljava/lang/String;

    #@7d
    goto/16 :goto_e2

    #@7f
    .line 1269
    :pswitch_7f
    :try_start_7f
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@82
    move-result v8

    #@83
    iput v8, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_7f .. :try_end_85} :catch_87

    #@85
    goto/16 :goto_e2

    #@87
    .line 1271
    :catch_87
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    #@8a
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    #@8d
    move-result v8

    #@8e
    const/4 v10, 0x4

    #@8f
    const/4 v12, 0x3

    #@90
    sparse-switch v8, :sswitch_data_11a

    #@93
    :goto_93
    move v8, v3

    #@94
    goto :goto_cb

    #@95
    :sswitch_95
    const-string v8, "x_right"

    #@97
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v8

    #@9b
    if-nez v8, :cond_9e

    #@9d
    goto :goto_93

    #@9e
    :cond_9e
    move v8, v10

    #@9f
    goto :goto_cb

    #@a0
    :sswitch_a0
    const-string v8, "right"

    #@a2
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a5
    move-result v8

    #@a6
    if-nez v8, :cond_a9

    #@a8
    goto :goto_93

    #@a9
    :cond_a9
    move v8, v12

    #@aa
    goto :goto_cb

    #@ab
    :sswitch_ab
    const-string v8, "none"

    #@ad
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v8

    #@b1
    if-nez v8, :cond_b4

    #@b3
    goto :goto_93

    #@b4
    :cond_b4
    move v8, v11

    #@b5
    goto :goto_cb

    #@b6
    :sswitch_b6
    const-string v8, "left"

    #@b8
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bb
    move-result v8

    #@bc
    if-nez v8, :cond_bf

    #@be
    goto :goto_93

    #@bf
    :cond_bf
    move v8, v7

    #@c0
    goto :goto_cb

    #@c1
    :sswitch_c1
    const-string v8, "x_left"

    #@c3
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c6
    move-result v8

    #@c7
    if-nez v8, :cond_ca

    #@c9
    goto :goto_93

    #@ca
    :cond_ca
    move v8, v1

    #@cb
    :goto_cb
    packed-switch v8, :pswitch_data_130

    #@ce
    goto :goto_e2

    #@cf
    .line 1282
    :pswitch_cf
    iput v12, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@d1
    goto :goto_e2

    #@d2
    .line 1276
    :pswitch_d2
    iput v7, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@d4
    goto :goto_e2

    #@d5
    .line 1273
    :pswitch_d5
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@d7
    goto :goto_e2

    #@d8
    .line 1279
    :pswitch_d8
    iput v11, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@da
    goto :goto_e2

    #@db
    .line 1285
    :pswitch_db
    iput v10, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@dd
    goto :goto_e2

    #@de
    .line 1265
    :pswitch_de
    invoke-direct {p0, p1, v9}, Landroidx/constraintlayout/motion/widget/MotionScene;->getId(Landroid/content/Context;Ljava/lang/String;)I

    #@e1
    move-result v6

    #@e2
    :goto_e2
    add-int/lit8 v4, v4, 0x1

    #@e4
    goto/16 :goto_11

    #@e6
    :cond_e6
    if-eq v5, v3, :cond_100

    #@e8
    .line 1295
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@ea
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@ec
    if-eqz v1, :cond_f1

    #@ee
    .line 1296
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setValidateOnParse(Z)V

    #@f1
    .line 1298
    :cond_f1
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    #@f4
    if-eq v6, v3, :cond_fb

    #@f6
    .line 1300
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    #@f8
    invoke-virtual {p1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    #@fb
    .line 1302
    :cond_fb
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@fd
    invoke-virtual {p1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@100
    :cond_100
    return v5

    #@101
    nop

    #@102
    :sswitch_data_102
    .sparse-switch
        -0x59328327 -> :sswitch_57
        -0x44bbba68 -> :sswitch_4c
        0xd1b -> :sswitch_41
    .end sparse-switch

    #@110
    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_de
        :pswitch_7f
        :pswitch_66
    .end packed-switch

    #@11a
    :sswitch_data_11a
    .sparse-switch
        -0x2dcd1c92 -> :sswitch_c1
        0x32a007 -> :sswitch_b6
        0x33af38 -> :sswitch_ab
        0x677c21c -> :sswitch_a0
        0x747feb95 -> :sswitch_95
    .end sparse-switch

    #@130
    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
    .end packed-switch
.end method

.method private parseInclude(Landroid/content/Context;I)I
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceId"
        }
    .end annotation

    #@0
    .line 1220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    .line 1221
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@7
    move-result-object p2

    #@8
    .line 1223
    :try_start_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@b
    move-result v0

    #@c
    :goto_c
    const/4 v1, 0x1

    #@d
    if-eq v0, v1, :cond_31

    #@f
    .line 1226
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x2

    #@14
    if-ne v2, v0, :cond_23

    #@16
    const-string v0, "ConstraintSet"

    #@18
    .line 1228
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_23

    #@1e
    .line 1229
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I

    #@21
    move-result p1

    #@22
    return p1

    #@23
    .line 1225
    :cond_23
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@26
    move-result v0
    :try_end_27
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_27} :catch_2d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_27} :catch_28

    #@27
    goto :goto_c

    #@28
    :catch_28
    move-exception p1

    #@29
    .line 1241
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    #@2c
    goto :goto_31

    #@2d
    :catch_2d
    move-exception p1

    #@2e
    .line 1236
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    #@31
    :cond_31
    :goto_31
    const/4 p1, -0x1

    #@32
    return p1
.end method

.method private parseInclude(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "mainParser"
        }
    .end annotation

    #@0
    .line 1207
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3
    move-result-object p2

    #@4
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->include:[I

    #@6
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object p2

    #@a
    .line 1208
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x0

    #@f
    :goto_f
    if-ge v1, v0, :cond_24

    #@11
    .line 1210
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@14
    move-result v2

    #@15
    .line 1211
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->include_constraintSet:I

    #@17
    if-ne v2, v3, :cond_21

    #@19
    const/4 v3, -0x1

    #@1a
    .line 1212
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1d
    move-result v2

    #@1e
    .line 1213
    invoke-direct {p0, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionScene;->parseInclude(Landroid/content/Context;I)I

    #@21
    :cond_21
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_f

    #@24
    .line 1216
    :cond_24
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@27
    return-void
.end method

.method private parseMotionSceneTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    #@0
    .line 1170
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@3
    move-result-object p2

    #@4
    .line 1171
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->MotionScene:[I

    #@6
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object p1

    #@a
    .line 1172
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@d
    move-result p2

    #@e
    const/4 v0, 0x0

    #@f
    move v1, v0

    #@10
    :goto_10
    if-ge v1, p2, :cond_36

    #@12
    .line 1174
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@15
    move-result v2

    #@16
    .line 1175
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionScene_defaultDuration:I

    #@18
    if-ne v2, v3, :cond_29

    #@1a
    .line 1176
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    #@1c
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1f
    move-result v2

    #@20
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    #@22
    const/16 v3, 0x8

    #@24
    if-ge v2, v3, :cond_33

    #@26
    .line 1178
    iput v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    #@28
    goto :goto_33

    #@29
    .line 1180
    :cond_29
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->MotionScene_layoutDuringTransition:I

    #@2b
    if-ne v2, v3, :cond_33

    #@2d
    .line 1181
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    #@30
    move-result v2

    #@31
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLayoutDuringTransition:I

    #@33
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_10

    #@36
    .line 1184
    :cond_36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@39
    return-void
.end method

.method private readConstraintChain(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "motionLayout"
        }
    .end annotation

    #@0
    .line 1829
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintSet;

    #@8
    .line 1830
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->mIdString:Ljava/lang/String;

    #@a
    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    #@c
    .line 1831
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDeriveMap:Landroid/util/SparseIntArray;

    #@e
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    #@11
    move-result p1

    #@12
    if-lez p1, :cond_61

    #@14
    .line 1833
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene;->readConstraintChain(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@17
    .line 1834
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@19
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object p2

    #@1d
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintSet;

    #@1f
    if-nez p2, :cond_40

    #@21
    .line 1836
    new-instance p2, Ljava/lang/StringBuilder;

    #@23
    const-string v0, "ERROR! invalid deriveConstraintsFrom: @id/"

    #@25
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@28
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2a
    .line 1837
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@2d
    move-result-object v0

    #@2e
    invoke-static {v0, p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    #@31
    move-result-object p1

    #@32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object p1

    #@36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object p1

    #@3a
    const-string p2, "MotionScene"

    #@3c
    .line 1836
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    return-void

    #@40
    .line 1840
    :cond_40
    new-instance p1, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    #@47
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object p1

    #@4b
    const-string v1, "/"

    #@4d
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object p1

    #@51
    iget-object v1, p2, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    #@53
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object p1

    #@57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object p1

    #@5b
    iput-object p1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    #@5d
    .line 1841
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->readFallback(Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@60
    goto :goto_7b

    #@61
    .line 1843
    :cond_61
    new-instance p1, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    #@68
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object p1

    #@6c
    const-string v1, "  layout"

    #@6e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object p1

    #@72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object p1

    #@76
    iput-object p1, v0, Landroidx/constraintlayout/widget/ConstraintSet;->derivedState:Ljava/lang/String;

    #@78
    .line 1844
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->readFallback(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    #@7b
    .line 1846
    :goto_7b
    invoke-virtual {v0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyDeltaFrom(Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@7e
    return-void
.end method

.method public static stripID(Ljava/lang/String;)Ljava/lang/String;
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
    if-nez p0, :cond_5

    #@2
    const-string p0, ""

    #@4
    return-object p0

    #@5
    :cond_5
    const/16 v0, 0x2f

    #@7
    .line 1853
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v0

    #@b
    if-gez v0, :cond_e

    #@d
    return-object p0

    #@e
    :cond_e
    add-int/lit8 v0, v0, 0x1

    #@10
    .line 1857
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@13
    move-result-object p0

    #@14
    return-object p0
.end method


# virtual methods
.method public addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "currentState"
        }
    .end annotation

    #@0
    .line 262
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_34

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@12
    .line 263
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v2

    #@1a
    if-lez v2, :cond_6

    #@1c
    .line 264
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_6

    #@2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    #@30
    .line 265
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->removeOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@33
    goto :goto_24

    #@34
    .line 269
    :cond_34
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    #@36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v0

    #@3a
    :cond_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_68

    #@40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@46
    .line 270
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@4d
    move-result v2

    #@4e
    if-lez v2, :cond_3a

    #@50
    .line 271
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v1

    #@58
    :goto_58
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v2

    #@5c
    if-eqz v2, :cond_3a

    #@5e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v2

    #@62
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    #@64
    .line 272
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->removeOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@67
    goto :goto_58

    #@68
    .line 277
    :cond_68
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@6a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@6d
    move-result-object v0

    #@6e
    :cond_6e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@71
    move-result v1

    #@72
    if-eqz v1, :cond_9c

    #@74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@77
    move-result-object v1

    #@78
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@7a
    .line 278
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;

    #@7d
    move-result-object v2

    #@7e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@81
    move-result v2

    #@82
    if-lez v2, :cond_6e

    #@84
    .line 279
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8b
    move-result-object v2

    #@8c
    :goto_8c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@8f
    move-result v3

    #@90
    if-eqz v3, :cond_6e

    #@92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@95
    move-result-object v3

    #@96
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    #@98
    .line 280
    invoke-virtual {v3, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@9b
    goto :goto_8c

    #@9c
    .line 284
    :cond_9c
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    #@9e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@a1
    move-result-object v0

    #@a2
    :cond_a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@a5
    move-result v1

    #@a6
    if-eqz v1, :cond_d0

    #@a8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ab
    move-result-object v1

    #@ac
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@ae
    .line 285
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;

    #@b1
    move-result-object v2

    #@b2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@b5
    move-result v2

    #@b6
    if-lez v2, :cond_a2

    #@b8
    .line 286
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mOnClicks:Ljava/util/ArrayList;
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;

    #@bb
    move-result-object v2

    #@bc
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@bf
    move-result-object v2

    #@c0
    :goto_c0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c3
    move-result v3

    #@c4
    if-eqz v3, :cond_a2

    #@c6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c9
    move-result-object v3

    #@ca
    check-cast v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;

    #@cc
    .line 287
    invoke-virtual {v3, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@cf
    goto :goto_c0

    #@d0
    :cond_d0
    return-void
.end method

.method public addTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transition"
        }
    .end annotation

    #@0
    .line 177
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getIndex(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_d

    #@7
    .line 179
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c
    goto :goto_12

    #@d
    .line 181
    :cond_d
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@12
    :goto_12
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
    .line 462
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->applyViewTransition(ILandroidx/constraintlayout/motion/widget/MotionController;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method autoTransition(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "currentState"
        }
    .end annotation

    #@0
    .line 381
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionScene;->isProcessingTouch()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    .line 384
    :cond_8
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDisableAutoTransition:Z

    #@a
    if-eqz v0, :cond_d

    #@c
    return v1

    #@d
    .line 388
    :cond_d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v0

    #@13
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_c6

    #@19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@1f
    .line 389
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$600(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@22
    move-result v3

    #@23
    if-nez v3, :cond_26

    #@25
    goto :goto_13

    #@26
    .line 392
    :cond_26
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@28
    const/4 v4, 0x2

    #@29
    if-ne v3, v2, :cond_32

    #@2b
    .line 393
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isTransitionFlag(I)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_32

    #@31
    goto :goto_13

    #@32
    .line 396
    :cond_32
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@35
    move-result v3

    #@36
    const/4 v5, 0x1

    #@37
    if-ne p2, v3, :cond_7d

    #@39
    .line 397
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$600(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@3c
    move-result v3

    #@3d
    const/4 v6, 0x4

    #@3e
    if-eq v3, v6, :cond_46

    #@40
    .line 398
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$600(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@43
    move-result v3

    #@44
    if-ne v3, v4, :cond_7d

    #@46
    .line 399
    :cond_46
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@48
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@4b
    .line 400
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@4e
    .line 401
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$600(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@51
    move-result p2

    #@52
    if-ne p2, v6, :cond_62

    #@54
    .line 402
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    #@57
    .line 403
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@59
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@5c
    .line 404
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@5e
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@61
    goto :goto_7c

    #@62
    :cond_62
    const/high16 p2, 0x3f800000    # 1.0f

    #@64
    .line 406
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@67
    .line 407
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    #@6a
    .line 408
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@6c
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@6f
    .line 409
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@71
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@74
    .line 410
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@76
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@79
    .line 411
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    #@7c
    :goto_7c
    return v5

    #@7d
    .line 415
    :cond_7d
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@80
    move-result v3

    #@81
    if-ne p2, v3, :cond_13

    #@83
    .line 416
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$600(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@86
    move-result v3

    #@87
    const/4 v4, 0x3

    #@88
    if-eq v3, v4, :cond_90

    #@8a
    .line 417
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$600(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@8d
    move-result v3

    #@8e
    if-ne v3, v5, :cond_13

    #@90
    .line 418
    :cond_90
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@92
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@95
    .line 419
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@98
    .line 420
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mAutoTransition:I
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$600(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@9b
    move-result p2

    #@9c
    if-ne p2, v4, :cond_ac

    #@9e
    .line 421
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    #@a1
    .line 422
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@a3
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@a6
    .line 423
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@a8
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@ab
    goto :goto_c5

    #@ac
    :cond_ac
    const/4 p2, 0x0

    #@ad
    .line 425
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@b0
    .line 426
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->evaluate(Z)V

    #@b3
    .line 427
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@b5
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@b8
    .line 428
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@ba
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@bd
    .line 429
    sget-object p2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    #@bf
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    #@c2
    .line 430
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onNewStateAttachHandlers()V

    #@c5
    :goto_c5
    return v5

    #@c6
    :cond_c6
    return v1
.end method

.method public bestTransitionFor(IFFLandroid/view/MotionEvent;)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentState",
            "dx",
            "dy",
            "lastTouchDown"
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p1

    #@4
    move/from16 v2, p2

    #@6
    move/from16 v3, p3

    #@8
    const/4 v4, -0x1

    #@9
    if-eq v1, v4, :cond_c9

    #@b
    .line 296
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getTransitionsWithState(I)Ljava/util/List;

    #@e
    move-result-object v4

    #@f
    .line 299
    new-instance v5, Landroid/graphics/RectF;

    #@11
    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    #@14
    .line 300
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v4

    #@18
    const/4 v6, 0x0

    #@19
    const/4 v7, 0x0

    #@1a
    :cond_1a
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v8

    #@1e
    if-eqz v8, :cond_c8

    #@20
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v8

    #@24
    check-cast v8, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@26
    .line 301
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDisable:Z
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$500(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Z

    #@29
    move-result v9

    #@2a
    if-eqz v9, :cond_2d

    #@2c
    goto :goto_1a

    #@2d
    .line 304
    :cond_2d
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@30
    move-result-object v9

    #@31
    if-eqz v9, :cond_1a

    #@33
    .line 305
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@36
    move-result-object v9

    #@37
    iget-boolean v10, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    #@39
    invoke-virtual {v9, v10}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    #@3c
    .line 306
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@3f
    move-result-object v9

    #@40
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@42
    invoke-virtual {v9, v10, v5}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    #@45
    move-result-object v9

    #@46
    if-eqz v9, :cond_59

    #@48
    if-eqz p4, :cond_59

    #@4a
    .line 307
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    #@4d
    move-result v10

    #@4e
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getY()F

    #@51
    move-result v11

    #@52
    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->contains(FF)Z

    #@55
    move-result v9

    #@56
    if-nez v9, :cond_59

    #@58
    goto :goto_1a

    #@59
    .line 310
    :cond_59
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@5c
    move-result-object v9

    #@5d
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@5f
    invoke-virtual {v9, v10, v5}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    #@62
    move-result-object v9

    #@63
    if-eqz v9, :cond_76

    #@65
    if-eqz p4, :cond_76

    #@67
    .line 311
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    #@6a
    move-result v10

    #@6b
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getY()F

    #@6e
    move-result v11

    #@6f
    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->contains(FF)Z

    #@72
    move-result v9

    #@73
    if-nez v9, :cond_76

    #@75
    goto :goto_1a

    #@76
    .line 315
    :cond_76
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@79
    move-result-object v9

    #@7a
    invoke-virtual {v9, v2, v3}, Landroidx/constraintlayout/motion/widget/TouchResponse;->dot(FF)F

    #@7d
    move-result v9

    #@7e
    .line 316
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@81
    move-result-object v10

    #@82
    iget-boolean v10, v10, Landroidx/constraintlayout/motion/widget/TouchResponse;->mIsRotateMode:Z

    #@84
    if-eqz v10, :cond_b3

    #@86
    if-eqz p4, :cond_b3

    #@88
    .line 317
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    #@8b
    move-result v9

    #@8c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@8f
    move-result-object v10

    #@90
    iget v10, v10, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotateCenterX:F

    #@92
    sub-float/2addr v9, v10

    #@93
    .line 318
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getY()F

    #@96
    move-result v10

    #@97
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@9a
    move-result-object v11

    #@9b
    iget v11, v11, Landroidx/constraintlayout/motion/widget/TouchResponse;->mRotateCenterY:F

    #@9d
    sub-float/2addr v10, v11

    #@9e
    add-float v11, v2, v9

    #@a0
    add-float v12, v3, v10

    #@a2
    float-to-double v12, v12

    #@a3
    float-to-double v14, v11

    #@a4
    .line 321
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    #@a7
    move-result-wide v11

    #@a8
    float-to-double v13, v9

    #@a9
    float-to-double v9, v10

    #@aa
    .line 322
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    #@ad
    move-result-wide v9

    #@ae
    sub-double/2addr v11, v9

    #@af
    double-to-float v9, v11

    #@b0
    const/high16 v10, 0x41200000    # 10.0f

    #@b2
    mul-float/2addr v9, v10

    #@b3
    .line 325
    :cond_b3
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@b6
    move-result v10

    #@b7
    if-ne v10, v1, :cond_bc

    #@b9
    const/high16 v10, -0x40800000    # -1.0f

    #@bb
    goto :goto_bf

    #@bc
    :cond_bc
    const v10, 0x3f8ccccd    # 1.1f

    #@bf
    :goto_bf
    mul-float/2addr v9, v10

    #@c0
    cmpl-float v10, v9, v6

    #@c2
    if-lez v10, :cond_1a

    #@c4
    move-object v7, v8

    #@c5
    move v6, v9

    #@c6
    goto/16 :goto_1a

    #@c8
    :cond_c8
    return-object v7

    #@c9
    .line 347
    :cond_c9
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@cb
    return-object v1
.end method

.method public disableAutoTransition(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disable"
        }
    .end annotation

    #@0
    .line 1900
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDisableAutoTransition:Z

    #@2
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
            "id",
            "enable"
        }
    .end annotation

    #@0
    .line 454
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->enableViewTransition(IZ)V

    #@5
    return-void
.end method

.method public gatPathMotionArc()I
    .registers 2

    #@0
    .line 1701
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_9

    #@4
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$1900(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@7
    move-result v0

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 v0, -0x1

    #@a
    :goto_a
    return v0
.end method

.method getAutoCompleteMode()I
    .registers 2

    #@0
    .line 1765
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_15

    #@4
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_15

    #@a
    .line 1766
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getAutoCompleteMode()I

    #@13
    move-result v0

    #@14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;
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
    const/4 v0, -0x1

    #@1
    .line 1329
    invoke-virtual {p0, p1, v0, v0}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(III)Landroidx/constraintlayout/widget/ConstraintSet;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method getConstraintSet(III)Landroidx/constraintlayout/widget/ConstraintSet;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "width",
            "height"
        }
    .end annotation

    #@0
    .line 1333
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->DEBUG_DESKTOP:Z

    #@2
    if-eqz v0, :cond_32

    #@4
    .line 1334
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    const-string v2, "id "

    #@a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 1335
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    const-string v2, "size "

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@21
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@23
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@26
    move-result v2

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32
    .line 1337
    :cond_32
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    #@34
    if-eqz v0, :cond_3e

    #@36
    .line 1338
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/widget/StateSet;->stateGetConstraintID(III)I

    #@39
    move-result p2

    #@3a
    const/4 p3, -0x1

    #@3b
    if-eq p2, p3, :cond_3e

    #@3d
    move p1, p2

    #@3e
    .line 1343
    :cond_3e
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@40
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@43
    move-result-object p2

    #@44
    if-nez p2, :cond_78

    #@46
    .line 1344
    new-instance p2, Ljava/lang/StringBuilder;

    #@48
    const-string p3, "Warning could not find ConstraintSet id/"

    #@4a
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4d
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@4f
    invoke-virtual {p3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@52
    move-result-object p3

    #@53
    invoke-static {p3, p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    #@56
    move-result-object p1

    #@57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object p1

    #@5b
    const-string p2, " In MotionScene"

    #@5d
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object p1

    #@61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object p1

    #@65
    const-string p2, "MotionScene"

    #@67
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    .line 1345
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@6c
    const/4 p2, 0x0

    #@6d
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    #@70
    move-result p2

    #@71
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@74
    move-result-object p1

    #@75
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintSet;

    #@77
    return-object p1

    #@78
    .line 1347
    :cond_78
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@7a
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7d
    move-result-object p1

    #@7e
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintSet;

    #@80
    return-object p1
.end method

.method public getConstraintSet(Landroid/content/Context;Ljava/lang/String;)Landroidx/constraintlayout/widget/ConstraintSet;
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    #@0
    .line 1311
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->DEBUG_DESKTOP:Z

    #@2
    if-eqz v0, :cond_32

    #@4
    .line 1312
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    const-string v2, "id "

    #@a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 1313
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    const-string v2, "size "

    #@1e
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@21
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@23
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@26
    move-result v2

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32
    :cond_32
    const/4 v0, 0x0

    #@33
    .line 1315
    :goto_33
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@35
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@38
    move-result v1

    #@39
    if-ge v0, v1, :cond_8d

    #@3b
    .line 1316
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@3d
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@40
    move-result v1

    #@41
    .line 1317
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    .line 1318
    iget-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->DEBUG_DESKTOP:Z

    #@4b
    if-eqz v3, :cond_7b

    #@4d
    .line 1319
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4f
    new-instance v4, Ljava/lang/StringBuilder;

    #@51
    const-string v5, "Id for <"

    #@53
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@56
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    const-string v5, "> is <"

    #@5c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v4

    #@60
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    const-string v5, "> looking for <"

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    const-string v5, ">"

    #@70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7b
    .line 1321
    :cond_7b
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v2

    #@7f
    if-eqz v2, :cond_8a

    #@81
    .line 1322
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@83
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@86
    move-result-object p1

    #@87
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintSet;

    #@89
    return-object p1

    #@8a
    :cond_8a
    add-int/lit8 v0, v0, 0x1

    #@8c
    goto :goto_33

    #@8d
    :cond_8d
    const/4 p1, 0x0

    #@8e
    return-object p1
.end method

.method public getConstraintSetIds()[I
    .registers 5

    #@0
    .line 364
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v0

    #@6
    new-array v1, v0, [I

    #@8
    const/4 v2, 0x0

    #@9
    :goto_9
    if-ge v2, v0, :cond_16

    #@b
    .line 366
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@d
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    #@10
    move-result v3

    #@11
    aput v3, v1, v2

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_9

    #@16
    :cond_16
    return-object v1
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
    .line 351
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getDuration()I
    .registers 2

    #@0
    .line 1681
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1682
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$1800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 1684
    :cond_9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    #@b
    return v0
.end method

.method getEndId()I
    .registers 2

    #@0
    .line 1630
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 1633
    :cond_6
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 3

    #@0
    .line 1645
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$1500(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x2

    #@7
    if-eq v0, v1, :cond_53

    #@9
    const/4 v1, -0x1

    #@a
    if-eq v0, v1, :cond_43

    #@c
    if-eqz v0, :cond_3d

    #@e
    const/4 v1, 0x1

    #@f
    if-eq v0, v1, :cond_37

    #@11
    const/4 v1, 0x2

    #@12
    if-eq v0, v1, :cond_31

    #@14
    const/4 v1, 0x4

    #@15
    if-eq v0, v1, :cond_2b

    #@17
    const/4 v1, 0x5

    #@18
    if-eq v0, v1, :cond_25

    #@1a
    const/4 v1, 0x6

    #@1b
    if-eq v0, v1, :cond_1f

    #@1d
    const/4 v0, 0x0

    #@1e
    return-object v0

    #@1f
    .line 1666
    :cond_1f
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    #@21
    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    #@24
    return-object v0

    #@25
    .line 1668
    :cond_25
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    #@27
    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    #@2a
    return-object v0

    #@2b
    .line 1670
    :cond_2b
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    #@2d
    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    #@30
    return-object v0

    #@31
    .line 1662
    :cond_31
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@33
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    #@36
    return-object v0

    #@37
    .line 1660
    :cond_37
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #@39
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    #@3c
    return-object v0

    #@3d
    .line 1658
    :cond_3d
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    #@3f
    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    #@42
    return-object v0

    #@43
    .line 1647
    :cond_43
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@45
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$1600(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    #@4c
    move-result-object v0

    #@4d
    .line 1648
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionScene$1;

    #@4f
    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$1;-><init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroidx/constraintlayout/core/motion/utils/Easing;)V

    #@52
    return-object v1

    #@53
    .line 1655
    :cond_53
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@55
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@58
    move-result-object v0

    #@59
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@5b
    .line 1656
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$1700(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@5e
    move-result v1

    #@5f
    .line 1655
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@62
    move-result-object v0

    #@63
    return-object v0
.end method

.method getKeyFrame(Landroid/content/Context;III)Landroidx/constraintlayout/motion/widget/Key;
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "type",
            "target",
            "position"
        }
    .end annotation

    #@0
    .line 1389
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    const/4 v0, 0x0

    #@3
    if-nez p1, :cond_6

    #@5
    return-object v0

    #@6
    .line 1392
    :cond_6
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$1400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object p1

    #@e
    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_55

    #@14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyFrames;

    #@1a
    .line 1393
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/KeyFrames;->getKeys()Ljava/util/Set;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v2

    #@22
    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_e

    #@28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Ljava/lang/Integer;

    #@2e
    .line 1394
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@31
    move-result v4

    #@32
    if-ne p3, v4, :cond_22

    #@34
    .line 1395
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@37
    move-result v3

    #@38
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/KeyFrames;->getKeyFramesForView(I)Ljava/util/ArrayList;

    #@3b
    move-result-object v3

    #@3c
    .line 1396
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object v3

    #@40
    :cond_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v4

    #@44
    if-eqz v4, :cond_22

    #@46
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v4

    #@4a
    check-cast v4, Landroidx/constraintlayout/motion/widget/Key;

    #@4c
    .line 1397
    iget v5, v4, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    #@4e
    if-ne v5, p4, :cond_40

    #@50
    .line 1398
    iget v5, v4, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    #@52
    if-ne v5, p2, :cond_40

    #@54
    return-object v4

    #@55
    :cond_55
    return-object v0
.end method

.method public getKeyFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionController"
        }
    .end annotation

    #@0
    .line 1366
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-nez v0, :cond_21

    #@4
    .line 1367
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@6
    if-eqz v0, :cond_20

    #@8
    .line 1368
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$1400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v0

    #@10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_20

    #@16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyFrames;

    #@1c
    .line 1369
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    #@1f
    goto :goto_10

    #@20
    :cond_20
    return-void

    #@21
    .line 1374
    :cond_21
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$1400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v0

    #@29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_39

    #@2f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyFrames;

    #@35
    .line 1375
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    #@38
    goto :goto_29

    #@39
    :cond_39
    return-void
.end method

.method getMaxAcceleration()F
    .registers 2

    #@0
    .line 1718
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_15

    #@4
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_15

    #@a
    .line 1719
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getMaxAcceleration()F

    #@13
    move-result v0

    #@14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method getMaxVelocity()F
    .registers 2

    #@0
    .line 1725
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_15

    #@4
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_15

    #@a
    .line 1726
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getMaxVelocity()F

    #@13
    move-result v0

    #@14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method getMoveWhenScrollAtTop()Z
    .registers 2

    #@0
    .line 1777
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_15

    #@4
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_15

    #@a
    .line 1778
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getMoveWhenScrollAtTop()Z

    #@13
    move-result v0

    #@14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method public getPathPercent(Landroid/view/View;I)F
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "position"
        }
    .end annotation

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method getProgressDirection(FF)F
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
    .line 1614
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_15

    #@4
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_15

    #@a
    .line 1615
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getProgressDirection(FF)F

    #@13
    move-result p1

    #@14
    return p1

    #@15
    :cond_15
    const/4 p1, 0x0

    #@16
    return p1
.end method

.method getSpringBoundary()I
    .registers 2

    #@0
    .line 1759
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_15

    #@4
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_15

    #@a
    .line 1760
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getSpringBoundary()I

    #@13
    move-result v0

    #@14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method getSpringDamping()F
    .registers 2

    #@0
    .line 1746
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_15

    #@4
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_15

    #@a
    .line 1747
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getSpringDamping()F

    #@13
    move-result v0

    #@14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method getSpringMass()F
    .registers 2

    #@0
    .line 1739
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_15

    #@4
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_15

    #@a
    .line 1740
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getSpringMass()F

    #@13
    move-result v0

    #@14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method getSpringStiffiness()F
    .registers 2

    #@0
    .line 1732
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_15

    #@4
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_15

    #@a
    .line 1733
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getSpringStiffness()F

    #@13
    move-result v0

    #@14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method getSpringStopThreshold()F
    .registers 2

    #@0
    .line 1753
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_15

    #@4
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_15

    #@a
    .line 1754
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getSpringStopThreshold()F

    #@13
    move-result v0

    #@14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    return v0
.end method

.method public getStaggered()F
    .registers 2

    #@0
    .line 1711
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1712
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mStagger:F
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$2000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)F

    #@7
    move-result v0

    #@8
    return v0

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method getStartId()I
    .registers 2

    #@0
    .line 1623
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, -0x1

    #@5
    return v0

    #@6
    .line 1626
    :cond_6
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getTransitionById(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
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
    .line 355
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_19

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@12
    .line 356
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mId:I
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$300(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@15
    move-result v2

    #@16
    if-ne v2, p1, :cond_6

    #@18
    return-object v1

    #@19
    :cond_19
    const/4 p1, 0x0

    #@1a
    return-object p1
.end method

.method getTransitionDirection(I)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateId"
        }
    .end annotation

    #@0
    .line 1411
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_1a

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@12
    .line 1412
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@15
    move-result v1

    #@16
    if-ne v1, p1, :cond_6

    #@18
    const/4 p1, 0x0

    #@19
    return p1

    #@1a
    :cond_1a
    const/4 p1, 0x1

    #@1b
    return p1
.end method

.method public getTransitionsWithState(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/constraintlayout/motion/widget/MotionScene$Transition;",
            ">;"
        }
    .end annotation

    #@0
    .line 249
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getRealID(I)I

    #@3
    move-result p1

    #@4
    .line 250
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 251
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2b

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@1b
    .line 252
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@1e
    move-result v3

    #@1f
    if-eq v3, p1, :cond_27

    #@21
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@24
    move-result v3

    #@25
    if-ne v3, p1, :cond_f

    #@27
    .line 253
    :cond_27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_f

    #@2b
    :cond_2b
    return-object v0
.end method

.method hasKeyFramePosition(Landroid/view/View;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "position"
        }
    .end annotation

    #@0
    .line 1427
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 1430
    :cond_6
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$1400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_38

    #@14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroidx/constraintlayout/motion/widget/KeyFrames;

    #@1a
    .line 1431
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@1d
    move-result v3

    #@1e
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/motion/widget/KeyFrames;->getKeyFramesForView(I)Ljava/util/ArrayList;

    #@21
    move-result-object v2

    #@22
    .line 1432
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v2

    #@26
    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_e

    #@2c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Landroidx/constraintlayout/motion/widget/Key;

    #@32
    .line 1433
    iget v3, v3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    #@34
    if-ne v3, p2, :cond_26

    #@36
    const/4 p1, 0x1

    #@37
    return p1

    #@38
    :cond_38
    return v1
.end method

.method public isViewTransitionEnabled(I)Z
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
    .line 458
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->isViewTransitionEnabled(I)Z

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public lookUpConstraintId(Ljava/lang/String;)I
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
    .line 1867
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p1

    #@6
    check-cast p1, Ljava/lang/Integer;

    #@8
    if-nez p1, :cond_c

    #@a
    const/4 p1, 0x0

    #@b
    return p1

    #@c
    .line 1871
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@f
    move-result p1

    #@10
    return p1
.end method

.method public lookUpConstraintName(I)Ljava/lang/String;
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
    .line 1881
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetIdMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_2c

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Ljava/util/Map$Entry;

    #@16
    .line 1882
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@19
    move-result-object v2

    #@1a
    check-cast v2, Ljava/lang/Integer;

    #@1c
    if-nez v2, :cond_1f

    #@1e
    goto :goto_a

    #@1f
    .line 1887
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@22
    move-result v2

    #@23
    if-ne v2, p1, :cond_a

    #@25
    .line 1888
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@28
    move-result-object p1

    #@29
    check-cast p1, Ljava/lang/String;

    #@2b
    return-object p1

    #@2c
    :cond_2c
    const/4 p1, 0x0

    #@2d
    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .registers 6
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
    return-void
.end method

.method processScrollMove(FF)V
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
    .line 1595
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_13

    #@4
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_13

    #@a
    .line 1596
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->scrollMove(FF)V

    #@13
    :cond_13
    return-void
.end method

.method processScrollUp(FF)V
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
    .line 1601
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_13

    #@4
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_13

    #@a
    .line 1602
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->scrollUp(FF)V

    #@13
    :cond_13
    return-void
.end method

.method processTouchEvent(Landroid/view/MotionEvent;ILandroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "currentState",
            "motionLayout"
        }
    .end annotation

    #@0
    .line 1504
    new-instance v0, Landroid/graphics/RectF;

    #@2
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@5
    .line 1505
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

    #@7
    if-nez v1, :cond_11

    #@9
    .line 1506
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@b
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->obtainVelocityTracker()Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

    #@11
    .line 1508
    :cond_11
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

    #@13
    invoke-interface {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    #@16
    const/4 v1, 0x0

    #@17
    const/4 v2, -0x1

    #@18
    const/4 v3, 0x1

    #@19
    if-eq p2, v2, :cond_f6

    #@1b
    .line 1520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@1e
    move-result v4

    #@1f
    const/4 v5, 0x0

    #@20
    if-eqz v4, :cond_86

    #@22
    const/4 v6, 0x2

    #@23
    if-eq v4, v6, :cond_27

    #@25
    goto/16 :goto_f6

    #@27
    .line 1546
    :cond_27
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    #@29
    if-eqz v4, :cond_2d

    #@2b
    goto/16 :goto_f6

    #@2d
    .line 1549
    :cond_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@30
    move-result v4

    #@31
    iget v6, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    #@33
    sub-float/2addr v4, v6

    #@34
    .line 1550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@37
    move-result v6

    #@38
    iget v7, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    #@3a
    sub-float/2addr v6, v7

    #@3b
    float-to-double v7, v6

    #@3c
    const-wide/16 v9, 0x0

    #@3e
    cmpl-double v7, v7, v9

    #@40
    if-nez v7, :cond_47

    #@42
    float-to-double v7, v4

    #@43
    cmpl-double v7, v7, v9

    #@45
    if-eqz v7, :cond_4b

    #@47
    .line 1554
    :cond_47
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    #@49
    if-nez v7, :cond_4c

    #@4b
    :cond_4b
    return-void

    #@4c
    .line 1558
    :cond_4c
    invoke-virtual {p0, p2, v6, v4, v7}, Landroidx/constraintlayout/motion/widget/MotionScene;->bestTransitionFor(IFFLandroid/view/MotionEvent;)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@4f
    move-result-object v4

    #@50
    if-eqz v4, :cond_f6

    #@52
    .line 1565
    invoke-virtual {p3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@55
    .line 1566
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@57
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@5a
    move-result-object v4

    #@5b
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@5d
    invoke-virtual {v4, v6, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    #@60
    move-result-object v0

    #@61
    if-eqz v0, :cond_76

    #@63
    .line 1567
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    #@65
    .line 1568
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    #@68
    move-result v4

    #@69
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    #@6b
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    #@6e
    move-result v6

    #@6f
    invoke-virtual {v0, v4, v6}, Landroid/graphics/RectF;->contains(FF)Z

    #@72
    move-result v0

    #@73
    if-nez v0, :cond_76

    #@75
    move v5, v3

    #@76
    :cond_76
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    #@78
    .line 1569
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@7a
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7d
    move-result-object v0

    #@7e
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    #@80
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    #@82
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setUpTouchEvent(FF)V

    #@85
    goto :goto_f6

    #@86
    .line 1522
    :cond_86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@89
    move-result p2

    #@8a
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    #@8c
    .line 1523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@8f
    move-result p2

    #@90
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    #@92
    .line 1524
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    #@94
    .line 1525
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    #@96
    .line 1526
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@98
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@9b
    move-result-object p1

    #@9c
    if-eqz p1, :cond_f5

    #@9e
    .line 1527
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@a0
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@a3
    move-result-object p1

    #@a4
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@a6
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    #@a9
    move-result-object p1

    #@aa
    if-eqz p1, :cond_c3

    #@ac
    .line 1528
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    #@ae
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@b1
    move-result p2

    #@b2
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    #@b4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@b7
    move-result p3

    #@b8
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    #@bb
    move-result p1

    #@bc
    if-nez p1, :cond_c3

    #@be
    .line 1529
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    #@c0
    .line 1530
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    #@c2
    return-void

    #@c3
    .line 1533
    :cond_c3
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c5
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@c8
    move-result-object p1

    #@c9
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@cb
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    #@ce
    move-result-object p1

    #@cf
    if-eqz p1, :cond_e6

    #@d1
    .line 1534
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    #@d3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@d6
    move-result p2

    #@d7
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchDown:Landroid/view/MotionEvent;

    #@d9
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    #@dc
    move-result p3

    #@dd
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    #@e0
    move-result p1

    #@e1
    if-nez p1, :cond_e6

    #@e3
    .line 1535
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    #@e5
    goto :goto_e8

    #@e6
    .line 1537
    :cond_e6
    iput-boolean v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    #@e8
    .line 1539
    :goto_e8
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@ea
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@ed
    move-result-object p1

    #@ee
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    #@f0
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    #@f2
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setDown(FF)V

    #@f5
    :cond_f5
    return-void

    #@f6
    .line 1573
    :cond_f6
    :goto_f6
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mIgnoreTouch:Z

    #@f8
    if-eqz v0, :cond_fb

    #@fa
    return-void

    #@fb
    .line 1576
    :cond_fb
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@fd
    if-eqz v0, :cond_114

    #@ff
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@102
    move-result-object v0

    #@103
    if-eqz v0, :cond_114

    #@105
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionOutsideRegion:Z

    #@107
    if-nez v0, :cond_114

    #@109
    .line 1577
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@10b
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@10e
    move-result-object v0

    #@10f
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

    #@111
    invoke-virtual {v0, p1, v4, p2, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->processTouchEvent(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;ILandroidx/constraintlayout/motion/widget/MotionScene;)V

    #@114
    .line 1580
    :cond_114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@117
    move-result p2

    #@118
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchX:F

    #@11a
    .line 1581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@11d
    move-result p2

    #@11e
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mLastTouchY:F

    #@120
    .line 1583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@123
    move-result p1

    #@124
    if-ne p1, v3, :cond_138

    #@126
    .line 1584
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

    #@128
    if-eqz p1, :cond_138

    #@12a
    .line 1585
    invoke-interface {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->recycle()V

    #@12d
    .line 1586
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mVelocityTracker:Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;

    #@12f
    .line 1587
    iget p1, p3, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@131
    if-eq p1, v2, :cond_138

    #@133
    .line 1588
    iget p1, p3, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@135
    invoke-virtual {p0, p3, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->autoTransition(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Z

    #@138
    :cond_138
    return-void
.end method

.method readFallback(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionLayout"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 1791
    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_23

    #@9
    .line 1792
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@e
    move-result v1

    #@f
    .line 1793
    invoke-direct {p0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene;->hasCycleDependency(I)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1d

    #@15
    const-string p1, "MotionScene"

    #@17
    const-string v0, "Cannot be derived from yourself"

    #@19
    .line 1794
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    return-void

    #@1d
    .line 1797
    :cond_1d
    invoke-direct {p0, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->readConstraintChain(ILandroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@20
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_1

    #@23
    :cond_23
    return-void
.end method

.method public removeTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
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
    .line 192
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->getIndex(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@3
    move-result p1

    #@4
    const/4 v0, -0x1

    #@5
    if-eq p1, v0, :cond_c

    #@7
    .line 194
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@c
    :cond_c
    return-void
.end method

.method public setConstraintSet(ILandroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "set"
        }
    .end annotation

    #@0
    .line 1357
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mConstraintSetMap:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@5
    return-void
.end method

.method public setDuration(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    #@0
    .line 1693
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 1694
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setDuration(I)V

    #@7
    goto :goto_a

    #@8
    .line 1696
    :cond_8
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultDuration:I

    #@a
    :goto_a
    return-void
.end method

.method public setKeyframe(Landroid/view/View;ILjava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "position",
            "name",
            "value"
        }
    .end annotation

    #@0
    .line 1445
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 1448
    :cond_5
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$1400(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Ljava/util/ArrayList;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v0

    #@d
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_43

    #@13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyFrames;

    #@19
    .line 1452
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/KeyFrames;->getKeyFramesForView(I)Ljava/util/ArrayList;

    #@20
    move-result-object v1

    #@21
    .line 1456
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v1

    #@25
    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_d

    #@2b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroidx/constraintlayout/motion/widget/Key;

    #@31
    .line 1460
    iget v2, v2, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    #@33
    if-ne v2, p2, :cond_25

    #@35
    if-eqz p4, :cond_3d

    #@37
    .line 1463
    move-object v2, p4

    #@38
    check-cast v2, Ljava/lang/Float;

    #@3a
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@3d
    :cond_3d
    const-string v2, "app:PerpendicularPath_percent"

    #@3f
    .line 1475
    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@42
    goto :goto_25

    #@43
    :cond_43
    return-void
.end method

.method public setRtl(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtl"
        }
    .end annotation

    #@0
    .line 443
    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    #@2
    .line 444
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@4
    if-eqz p1, :cond_17

    #@6
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@9
    move-result-object p1

    #@a
    if-eqz p1, :cond_17

    #@c
    .line 445
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@e
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@11
    move-result-object p1

    #@12
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    #@14
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    #@17
    :cond_17
    return-void
.end method

.method setTransition(II)V
    .registers 9
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
    .line 115
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    #@2
    const/4 v1, -0x1

    #@3
    if-eqz v0, :cond_16

    #@5
    .line 116
    invoke-virtual {v0, p1, v1, v1}, Landroidx/constraintlayout/widget/StateSet;->stateGetConstraintID(III)I

    #@8
    move-result v0

    #@9
    if-eq v0, v1, :cond_c

    #@b
    goto :goto_d

    #@c
    :cond_c
    move v0, p1

    #@d
    .line 120
    :goto_d
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mStateSet:Landroidx/constraintlayout/widget/StateSet;

    #@f
    invoke-virtual {v2, p2, v1, v1}, Landroidx/constraintlayout/widget/StateSet;->stateGetConstraintID(III)I

    #@12
    move-result v2

    #@13
    if-eq v2, v1, :cond_17

    #@15
    goto :goto_18

    #@16
    :cond_16
    move v0, p1

    #@17
    :cond_17
    move v2, p2

    #@18
    .line 130
    :goto_18
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@1a
    if-eqz v3, :cond_2b

    #@1c
    .line 131
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@1f
    move-result v3

    #@20
    if-ne v3, p2, :cond_2b

    #@22
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@24
    .line 132
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I
    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@27
    move-result v3

    #@28
    if-ne v3, p1, :cond_2b

    #@2a
    return-void

    #@2b
    .line 136
    :cond_2b
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@30
    move-result-object v3

    #@31
    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_6b

    #@37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3a
    move-result-object v4

    #@3b
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@3d
    .line 137
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@40
    move-result v5

    #@41
    if-ne v5, v2, :cond_49

    #@43
    .line 138
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@46
    move-result v5

    #@47
    if-eq v5, v0, :cond_55

    #@49
    .line 139
    :cond_49
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@4c
    move-result v5

    #@4d
    if-ne v5, p2, :cond_31

    #@4f
    .line 140
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@52
    move-result v5

    #@53
    if-ne v5, p1, :cond_31

    #@55
    .line 146
    :cond_55
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@57
    if-eqz v4, :cond_6a

    #@59
    .line 147
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@5c
    move-result-object p1

    #@5d
    if-eqz p1, :cond_6a

    #@5f
    .line 148
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@61
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@64
    move-result-object p1

    #@65
    iget-boolean p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    #@67
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    #@6a
    :cond_6a
    return-void

    #@6b
    .line 154
    :cond_6b
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mDefaultTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@6d
    .line 155
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mAbstractTransitionList:Ljava/util/ArrayList;

    #@6f
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@72
    move-result-object v3

    #@73
    :cond_73
    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@76
    move-result v4

    #@77
    if-eqz v4, :cond_87

    #@79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7c
    move-result-object v4

    #@7d
    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@7f
    .line 156
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {v4}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@82
    move-result v5

    #@83
    if-ne v5, p2, :cond_73

    #@85
    move-object p1, v4

    #@86
    goto :goto_73

    #@87
    .line 160
    :cond_87
    new-instance p2, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@89
    invoke-direct {p2, p0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@8c
    .line 162
    # setter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I
    invoke-static {p2, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$102(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I

    #@8f
    .line 163
    # setter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {p2, v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$002(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I

    #@92
    if-eq v0, v1, :cond_99

    #@94
    .line 165
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@96
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@99
    .line 167
    :cond_99
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@9b
    return-void
.end method

.method public setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
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
    .line 232
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz p1, :cond_15

    #@4
    .line 233
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7
    move-result-object p1

    #@8
    if-eqz p1, :cond_15

    #@a
    .line 234
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object p1

    #@10
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mRtl:Z

    #@12
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setRTL(Z)V

    #@15
    :cond_15
    return-void
.end method

.method setupTouch()V
    .registers 2

    #@0
    .line 1771
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    if-eqz v0, :cond_13

    #@4
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_13

    #@a
    .line 1772
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/TouchResponse;->setupTouch()V

    #@13
    :cond_13
    return-void
.end method

.method supportTouch()Z
    .registers 4

    #@0
    .line 1490
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mTransitionList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v1

    #@a
    const/4 v2, 0x1

    #@b
    if-eqz v1, :cond_1a

    #@d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@13
    .line 1491
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_6

    #@19
    return v2

    #@1a
    .line 1495
    :cond_1a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@1c
    if-eqz v0, :cond_25

    #@1e
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mTouchResponse:Landroidx/constraintlayout/motion/widget/TouchResponse;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$200(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/TouchResponse;

    #@21
    move-result-object v0

    #@22
    if-eqz v0, :cond_25

    #@24
    goto :goto_26

    #@25
    :cond_25
    const/4 v2, 0x0

    #@26
    :goto_26
    return v2
.end method

.method public validateLayout(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layout"
        }
    .end annotation

    #@0
    .line 222
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    if-ne p1, v0, :cond_a

    #@4
    iget-object p1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    #@6
    if-ne p1, p0, :cond_a

    #@8
    const/4 p1, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p1, 0x0

    #@b
    :goto_b
    return p1
.end method

.method public varargs viewTransition(I[Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "view"
        }
    .end annotation

    #@0
    .line 450
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene;->mViewTransitionController:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransition(I[Landroid/view/View;)V

    #@5
    return-void
.end method
