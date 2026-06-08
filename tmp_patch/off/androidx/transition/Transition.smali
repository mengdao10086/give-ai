.class public abstract Landroidx/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Transition$EpicenterCallback;,
        Landroidx/transition/Transition$ArrayListManager;,
        Landroidx/transition/Transition$AnimationInfo;,
        Landroidx/transition/Transition$TransitionListener;,
        Landroidx/transition/Transition$MatchOrder;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroidx/transition/TransitionValuesMaps;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field private mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInstances:I

.field mParent:Landroidx/transition/TransitionSet;

.field private mPathMotion:Landroidx/transition/PathMotion;

.field private mPaused:Z

.field mPropagation:Landroidx/transition/TransitionPropagation;

.field private mSceneRoot:Landroid/view/ViewGroup;

.field private mStartDelay:J

.field private mStartValues:Landroidx/transition/TransitionValuesMaps;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [I

    #@3
    .line 164
    fill-array-data v0, :array_18

    #@6
    sput-object v0, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    #@8
    .line 171
    new-instance v0, Landroidx/transition/Transition$1;

    #@a
    invoke-direct {v0}, Landroidx/transition/Transition$1;-><init>()V

    #@d
    sput-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    #@f
    .line 205
    new-instance v0, Ljava/lang/ThreadLocal;

    #@11
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@14
    sput-object v0, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    #@16
    return-void

    #@17
    nop

    #@18
    :array_18
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    #@d
    const-wide/16 v0, -0x1

    #@f
    .line 183
    iput-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    #@11
    .line 184
    iput-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    #@13
    const/4 v0, 0x0

    #@14
    .line 185
    iput-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@16
    .line 186
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@1d
    .line 187
    new-instance v1, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@24
    .line 188
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@26
    .line 189
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@28
    .line 190
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    #@2a
    .line 191
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    #@2c
    .line 192
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@2e
    .line 193
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    #@30
    .line 194
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    #@32
    .line 195
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    #@34
    .line 196
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    #@36
    .line 197
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    #@38
    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    #@3b
    iput-object v1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@3d
    .line 198
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    #@3f
    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    #@42
    iput-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@44
    .line 199
    iput-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    #@46
    .line 200
    sget-object v1, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    #@48
    iput-object v1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    #@4a
    .line 209
    iput-object v0, p0, Landroidx/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    #@4c
    const/4 v1, 0x0

    #@4d
    .line 217
    iput-boolean v1, p0, Landroidx/transition/Transition;->mCanRemoveViews:Z

    #@4f
    .line 221
    new-instance v2, Ljava/util/ArrayList;

    #@51
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@54
    iput-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    #@56
    .line 226
    iput v1, p0, Landroidx/transition/Transition;->mNumInstances:I

    #@58
    .line 229
    iput-boolean v1, p0, Landroidx/transition/Transition;->mPaused:Z

    #@5a
    .line 233
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    #@5c
    .line 236
    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@5e
    .line 240
    new-instance v0, Ljava/util/ArrayList;

    #@60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@63
    iput-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@65
    .line 255
    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    #@67
    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    #@69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11

    #@0
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    #@d
    const-wide/16 v0, -0x1

    #@f
    .line 183
    iput-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    #@11
    .line 184
    iput-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    #@13
    const/4 v0, 0x0

    #@14
    .line 185
    iput-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@16
    .line 186
    new-instance v1, Ljava/util/ArrayList;

    #@18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@1b
    iput-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@1d
    .line 187
    new-instance v1, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@24
    .line 188
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@26
    .line 189
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@28
    .line 190
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    #@2a
    .line 191
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    #@2c
    .line 192
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@2e
    .line 193
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    #@30
    .line 194
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    #@32
    .line 195
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    #@34
    .line 196
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    #@36
    .line 197
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    #@38
    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    #@3b
    iput-object v1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@3d
    .line 198
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    #@3f
    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    #@42
    iput-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@44
    .line 199
    iput-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    #@46
    .line 200
    sget-object v1, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    #@48
    iput-object v1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    #@4a
    .line 209
    iput-object v0, p0, Landroidx/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    #@4c
    const/4 v1, 0x0

    #@4d
    .line 217
    iput-boolean v1, p0, Landroidx/transition/Transition;->mCanRemoveViews:Z

    #@4f
    .line 221
    new-instance v2, Ljava/util/ArrayList;

    #@51
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@54
    iput-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    #@56
    .line 226
    iput v1, p0, Landroidx/transition/Transition;->mNumInstances:I

    #@58
    .line 229
    iput-boolean v1, p0, Landroidx/transition/Transition;->mPaused:Z

    #@5a
    .line 233
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    #@5c
    .line 236
    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@5e
    .line 240
    new-instance v0, Ljava/util/ArrayList;

    #@60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@63
    iput-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@65
    .line 255
    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    #@67
    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    #@69
    .line 278
    sget-object v0, Landroidx/transition/Styleable;->TRANSITION:[I

    #@6b
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6e
    move-result-object v0

    #@6f
    .line 279
    check-cast p2, Landroid/content/res/XmlResourceParser;

    #@71
    const-string v2, "duration"

    #@73
    const/4 v3, 0x1

    #@74
    const/4 v4, -0x1

    #@75
    .line 280
    invoke-static {v0, p2, v2, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@78
    move-result v2

    #@79
    int-to-long v2, v2

    #@7a
    const-wide/16 v5, 0x0

    #@7c
    cmp-long v7, v2, v5

    #@7e
    if-ltz v7, :cond_83

    #@80
    .line 283
    invoke-virtual {p0, v2, v3}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    #@83
    :cond_83
    const-string v2, "startDelay"

    #@85
    const/4 v3, 0x2

    #@86
    .line 285
    invoke-static {v0, p2, v2, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@89
    move-result v2

    #@8a
    int-to-long v2, v2

    #@8b
    cmp-long v4, v2, v5

    #@8d
    if-lez v4, :cond_92

    #@8f
    .line 288
    invoke-virtual {p0, v2, v3}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    #@92
    :cond_92
    const-string v2, "interpolator"

    #@94
    .line 290
    invoke-static {v0, p2, v2, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@97
    move-result v1

    #@98
    if-lez v1, :cond_a1

    #@9a
    .line 293
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    #@9d
    move-result-object p1

    #@9e
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    #@a1
    :cond_a1
    const-string p1, "matchOrder"

    #@a3
    const/4 v1, 0x3

    #@a4
    .line 295
    invoke-static {v0, p2, p1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    #@a7
    move-result-object p1

    #@a8
    if-eqz p1, :cond_b1

    #@aa
    .line 298
    invoke-static {p1}, Landroidx/transition/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    #@ad
    move-result-object p1

    #@ae
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->setMatchOrder([I)V

    #@b1
    .line 300
    :cond_b1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@b4
    return-void
.end method

.method private addUnmatched(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    .line 647
    :goto_2
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    #@5
    move-result v2

    #@6
    const/4 v3, 0x0

    #@7
    if-ge v1, v2, :cond_24

    #@9
    .line 648
    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Landroidx/transition/TransitionValues;

    #@f
    .line 649
    iget-object v4, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@11
    invoke-virtual {p0, v4}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_21

    #@17
    .line 650
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c
    .line 651
    iget-object v2, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    :cond_21
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_2

    #@24
    .line 656
    :cond_24
    :goto_24
    invoke-virtual {p2}, Landroidx/collection/ArrayMap;->size()I

    #@27
    move-result p1

    #@28
    if-ge v0, p1, :cond_45

    #@2a
    .line 657
    invoke-virtual {p2, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2d
    move-result-object p1

    #@2e
    check-cast p1, Landroidx/transition/TransitionValues;

    #@30
    .line 658
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@32
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_42

    #@38
    .line 659
    iget-object v1, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3d
    .line 660
    iget-object p1, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@42
    :cond_42
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_24

    #@45
    :cond_45
    return-void
.end method

.method private static addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V
    .registers 6

    #@0
    .line 1532
    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 1533
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@8
    move-result p2

    #@9
    const/4 v0, 0x0

    #@a
    if-ltz p2, :cond_1f

    #@c
    .line 1535
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    #@e
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    #@11
    move-result v1

    #@12
    if-ltz v1, :cond_1a

    #@14
    .line 1537
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    #@16
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@19
    goto :goto_1f

    #@1a
    .line 1539
    :cond_1a
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    #@1c
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1f
    .line 1542
    :cond_1f
    :goto_1f
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@22
    move-result-object p2

    #@23
    if-eqz p2, :cond_38

    #@25
    .line 1544
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    #@27
    invoke-virtual {v1, p2}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_33

    #@2d
    .line 1546
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    #@2f
    invoke-virtual {v1, p2, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    goto :goto_38

    #@33
    .line 1548
    :cond_33
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    #@35
    invoke-virtual {v1, p2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 1551
    :cond_38
    :goto_38
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3b
    move-result-object p2

    #@3c
    instance-of p2, p2, Landroid/widget/ListView;

    #@3e
    if-eqz p2, :cond_7d

    #@40
    .line 1552
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@43
    move-result-object p2

    #@44
    check-cast p2, Landroid/widget/ListView;

    #@46
    .line 1553
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    #@49
    move-result-object v1

    #@4a
    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_7d

    #@50
    .line 1554
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    #@53
    move-result v1

    #@54
    .line 1555
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    #@57
    move-result-wide v1

    #@58
    .line 1556
    iget-object p2, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    #@5a
    invoke-virtual {p2, v1, v2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    #@5d
    move-result p2

    #@5e
    if-ltz p2, :cond_74

    #@60
    .line 1558
    iget-object p1, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    #@62
    invoke-virtual {p1, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    #@65
    move-result-object p1

    #@66
    check-cast p1, Landroid/view/View;

    #@68
    if-eqz p1, :cond_7d

    #@6a
    const/4 p2, 0x0

    #@6b
    .line 1560
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    #@6e
    .line 1561
    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    #@70
    invoke-virtual {p0, v1, v2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    #@73
    goto :goto_7d

    #@74
    :cond_74
    const/4 p2, 0x1

    #@75
    .line 1564
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    #@78
    .line 1565
    iget-object p0, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    #@7a
    invoke-virtual {p0, v1, v2, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    #@7d
    :cond_7d
    :goto_7d
    return-void
.end method

.method private static alreadyContains([II)Z
    .registers 6

    #@0
    .line 531
    aget v0, p0, p1

    #@2
    const/4 v1, 0x0

    #@3
    move v2, v1

    #@4
    :goto_4
    if-ge v2, p1, :cond_f

    #@6
    .line 533
    aget v3, p0, v2

    #@8
    if-ne v3, v0, :cond_c

    #@a
    const/4 p0, 0x1

    #@b
    return p0

    #@c
    :cond_c
    add-int/lit8 v2, v2, 0x1

    #@e
    goto :goto_4

    #@f
    :cond_f
    return v1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .registers 8

    #@0
    if-nez p1, :cond_3

    #@2
    return-void

    #@3
    .line 1602
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@6
    move-result v0

    #@7
    .line 1603
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    #@9
    if-eqz v1, :cond_16

    #@b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_16

    #@15
    return-void

    #@16
    .line 1606
    :cond_16
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    #@18
    if-eqz v1, :cond_21

    #@1a
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_21

    #@20
    return-void

    #@21
    .line 1609
    :cond_21
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@23
    const/4 v2, 0x0

    #@24
    if-eqz v1, :cond_3f

    #@26
    .line 1610
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v1

    #@2a
    move v3, v2

    #@2b
    :goto_2b
    if-ge v3, v1, :cond_3f

    #@2d
    .line 1612
    iget-object v4, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, Ljava/lang/Class;

    #@35
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_3c

    #@3b
    return-void

    #@3c
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    #@3e
    goto :goto_2b

    #@3f
    .line 1617
    :cond_3f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@42
    move-result-object v1

    #@43
    instance-of v1, v1, Landroid/view/ViewGroup;

    #@45
    if-eqz v1, :cond_6a

    #@47
    .line 1618
    new-instance v1, Landroidx/transition/TransitionValues;

    #@49
    invoke-direct {v1, p1}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    #@4c
    if-eqz p2, :cond_52

    #@4e
    .line 1620
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    #@51
    goto :goto_55

    #@52
    .line 1622
    :cond_52
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    #@55
    .line 1624
    :goto_55
    iget-object v3, v1, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    #@57
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    .line 1625
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    #@5d
    if-eqz p2, :cond_65

    #@5f
    .line 1627
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@61
    invoke-static {v3, p1, v1}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    #@64
    goto :goto_6a

    #@65
    .line 1629
    :cond_65
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@67
    invoke-static {v3, p1, v1}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    #@6a
    .line 1632
    :cond_6a
    :goto_6a
    instance-of v1, p1, Landroid/view/ViewGroup;

    #@6c
    if-eqz v1, :cond_b7

    #@6e
    .line 1634
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    #@70
    if-eqz v1, :cond_7d

    #@72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@75
    move-result-object v0

    #@76
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@79
    move-result v0

    #@7a
    if-eqz v0, :cond_7d

    #@7c
    return-void

    #@7d
    .line 1637
    :cond_7d
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    #@7f
    if-eqz v0, :cond_88

    #@81
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@84
    move-result v0

    #@85
    if-eqz v0, :cond_88

    #@87
    return-void

    #@88
    .line 1640
    :cond_88
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    #@8a
    if-eqz v0, :cond_a5

    #@8c
    .line 1641
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8f
    move-result v0

    #@90
    move v1, v2

    #@91
    :goto_91
    if-ge v1, v0, :cond_a5

    #@93
    .line 1643
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    #@95
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@98
    move-result-object v3

    #@99
    check-cast v3, Ljava/lang/Class;

    #@9b
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@9e
    move-result v3

    #@9f
    if-eqz v3, :cond_a2

    #@a1
    return-void

    #@a2
    :cond_a2
    add-int/lit8 v1, v1, 0x1

    #@a4
    goto :goto_91

    #@a5
    .line 1648
    :cond_a5
    check-cast p1, Landroid/view/ViewGroup;

    #@a7
    .line 1649
    :goto_a7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    #@aa
    move-result v0

    #@ab
    if-ge v2, v0, :cond_b7

    #@ad
    .line 1650
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@b0
    move-result-object v0

    #@b1
    invoke-direct {p0, v0, p2}, Landroidx/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    #@b4
    add-int/lit8 v2, v2, 0x1

    #@b6
    goto :goto_a7

    #@b7
    :cond_b7
    return-void
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    if-lez p2, :cond_15

    #@2
    if-eqz p3, :cond_d

    #@4
    .line 1312
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object p2

    #@8
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@b
    move-result-object p1

    #@c
    goto :goto_15

    #@d
    .line 1314
    :cond_d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object p2

    #@11
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@14
    move-result-object p1

    #@15
    :cond_15
    :goto_15
    return-object p1
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_d

    #@2
    if-eqz p2, :cond_9

    #@4
    .line 1163
    invoke-static {p0, p1}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@7
    move-result-object p0

    #@8
    goto :goto_d

    #@9
    .line 1165
    :cond_9
    invoke-static {p0, p1}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@c
    move-result-object p0

    #@d
    :cond_d
    :goto_d
    return-object p0
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_d

    #@2
    if-eqz p3, :cond_9

    #@4
    .line 1396
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@7
    move-result-object p1

    #@8
    goto :goto_d

    #@9
    .line 1398
    :cond_9
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@c
    move-result-object p1

    #@d
    :cond_d
    :goto_d
    return-object p1
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_d

    #@2
    if-eqz p3, :cond_9

    #@4
    .line 1327
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@7
    move-result-object p1

    #@8
    goto :goto_d

    #@9
    .line 1329
    :cond_9
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    #@c
    move-result-object p1

    #@d
    :cond_d
    :goto_d
    return-object p1
.end method

.method private static getRunningAnimators()Landroidx/collection/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .line 859
    sget-object v0, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroidx/collection/ArrayMap;

    #@8
    if-nez v0, :cond_14

    #@a
    .line 861
    new-instance v0, Landroidx/collection/ArrayMap;

    #@c
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    #@f
    .line 862
    sget-object v1, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@14
    :cond_14
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-lt p0, v0, :cond_7

    #@3
    const/4 v1, 0x4

    #@4
    if-gt p0, v1, :cond_7

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    :goto_8
    return v0
.end method

.method private static isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z
    .registers 3

    #@0
    .line 1866
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@2
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    .line 1867
    iget-object p1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@8
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object p1

    #@c
    if-nez p0, :cond_12

    #@e
    if-nez p1, :cond_12

    #@10
    const/4 p0, 0x0

    #@11
    goto :goto_1f

    #@12
    :cond_12
    const/4 p2, 0x1

    #@13
    if-eqz p0, :cond_1e

    #@15
    if-nez p1, :cond_18

    #@17
    goto :goto_1e

    #@18
    .line 1877
    :cond_18
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result p0

    #@1c
    xor-int/2addr p0, p2

    #@1d
    goto :goto_1f

    #@1e
    :cond_1e
    :goto_1e
    move p0, p2

    #@1f
    :goto_1f
    return p0
.end method

.method private matchIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 594
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_4a

    #@7
    .line 596
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/view/View;

    #@d
    if-eqz v2, :cond_47

    #@f
    .line 597
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_47

    #@15
    .line 598
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@18
    move-result v3

    #@19
    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroid/view/View;

    #@1f
    if-eqz v3, :cond_47

    #@21
    .line 599
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_47

    #@27
    .line 600
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Landroidx/transition/TransitionValues;

    #@2d
    .line 601
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Landroidx/transition/TransitionValues;

    #@33
    if-eqz v4, :cond_47

    #@35
    if-eqz v5, :cond_47

    #@37
    .line 603
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c
    .line 604
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 605
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 606
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    :cond_47
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_5

    #@4a
    :cond_4a
    return-void
.end method

.method private matchInstances(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 546
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    :goto_6
    if-ltz v0, :cond_39

    #@8
    .line 547
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/view/View;

    #@e
    if-eqz v1, :cond_36

    #@10
    .line 548
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_36

    #@16
    .line 549
    invoke-virtual {p2, v1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroidx/transition/TransitionValues;

    #@1c
    if-eqz v1, :cond_36

    #@1e
    .line 550
    iget-object v2, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@20
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_36

    #@26
    .line 551
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroidx/transition/TransitionValues;

    #@2c
    .line 552
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31
    .line 553
    iget-object v2, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@36
    :cond_36
    add-int/lit8 v0, v0, -0x1

    #@38
    goto :goto_6

    #@39
    :cond_39
    return-void
.end method

.method private matchItemIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 567
    invoke-virtual {p3}, Landroidx/collection/LongSparseArray;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_4a

    #@7
    .line 569
    invoke-virtual {p3, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/view/View;

    #@d
    if-eqz v2, :cond_47

    #@f
    .line 570
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_47

    #@15
    .line 571
    invoke-virtual {p3, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    #@18
    move-result-wide v3

    #@19
    invoke-virtual {p4, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroid/view/View;

    #@1f
    if-eqz v3, :cond_47

    #@21
    .line 572
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_47

    #@27
    .line 573
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Landroidx/transition/TransitionValues;

    #@2d
    .line 574
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Landroidx/transition/TransitionValues;

    #@33
    if-eqz v4, :cond_47

    #@35
    if-eqz v5, :cond_47

    #@37
    .line 576
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c
    .line 577
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 578
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 579
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    :cond_47
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_5

    #@4a
    :cond_4a
    return-void
.end method

.method private matchNames(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 621
    invoke-virtual {p3}, Landroidx/collection/ArrayMap;->size()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_4a

    #@7
    .line 623
    invoke-virtual {p3, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Landroid/view/View;

    #@d
    if-eqz v2, :cond_47

    #@f
    .line 624
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_47

    #@15
    .line 625
    invoke-virtual {p3, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {p4, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroid/view/View;

    #@1f
    if-eqz v3, :cond_47

    #@21
    .line 626
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_47

    #@27
    .line 627
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    check-cast v4, Landroidx/transition/TransitionValues;

    #@2d
    .line 628
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Landroidx/transition/TransitionValues;

    #@33
    if-eqz v4, :cond_47

    #@35
    if-eqz v5, :cond_47

    #@37
    .line 630
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3c
    .line 631
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@41
    .line 632
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 633
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    :cond_47
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_5

    #@4a
    :cond_4a
    return-void
.end method

.method private matchStartAndEnd(Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;)V
    .registers 8

    #@0
    .line 667
    new-instance v0, Landroidx/collection/ArrayMap;

    #@2
    iget-object v1, p1, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    #@4
    invoke-direct {v0, v1}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    #@7
    .line 668
    new-instance v1, Landroidx/collection/ArrayMap;

    #@9
    iget-object v2, p2, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    #@b
    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    #@e
    const/4 v2, 0x0

    #@f
    .line 670
    :goto_f
    iget-object v3, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    #@11
    array-length v4, v3

    #@12
    if-ge v2, v4, :cond_41

    #@14
    .line 671
    aget v3, v3, v2

    #@16
    const/4 v4, 0x1

    #@17
    if-eq v3, v4, :cond_3b

    #@19
    const/4 v4, 0x2

    #@1a
    if-eq v3, v4, :cond_33

    #@1c
    const/4 v4, 0x3

    #@1d
    if-eq v3, v4, :cond_2b

    #@1f
    const/4 v4, 0x4

    #@20
    if-eq v3, v4, :cond_23

    #@22
    goto :goto_3e

    #@23
    .line 684
    :cond_23
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    #@25
    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    #@27
    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->matchItemIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V

    #@2a
    goto :goto_3e

    #@2b
    .line 680
    :cond_2b
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    #@2d
    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    #@2f
    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->matchIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    #@32
    goto :goto_3e

    #@33
    .line 676
    :cond_33
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    #@35
    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    #@37
    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->matchNames(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    #@3a
    goto :goto_3e

    #@3b
    .line 673
    :cond_3b
    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->matchInstances(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    #@3e
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_f

    #@41
    .line 689
    :cond_41
    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->addUnmatched(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    #@44
    return-void
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .registers 7

    #@0
    .line 305
    new-instance v0, Ljava/util/StringTokenizer;

    #@2
    const-string v1, ","

    #@4
    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 307
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    #@a
    move-result p0

    #@b
    new-array p0, p0, [I

    #@d
    const/4 v1, 0x0

    #@e
    move v2, v1

    #@f
    .line 309
    :goto_f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_7a

    #@15
    .line 310
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    const-string v4, "id"

    #@1f
    .line 311
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@22
    move-result v4

    #@23
    const/4 v5, 0x1

    #@24
    if-eqz v4, :cond_2a

    #@26
    const/4 v3, 0x3

    #@27
    .line 312
    aput v3, p0, v2

    #@29
    goto :goto_5d

    #@2a
    :cond_2a
    const-string v4, "instance"

    #@2c
    .line 313
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2f
    move-result v4

    #@30
    if-eqz v4, :cond_35

    #@32
    .line 314
    aput v5, p0, v2

    #@34
    goto :goto_5d

    #@35
    :cond_35
    const-string v4, "name"

    #@37
    .line 315
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3a
    move-result v4

    #@3b
    if-eqz v4, :cond_41

    #@3d
    const/4 v3, 0x2

    #@3e
    .line 316
    aput v3, p0, v2

    #@40
    goto :goto_5d

    #@41
    :cond_41
    const-string v4, "itemId"

    #@43
    .line 317
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_4d

    #@49
    const/4 v3, 0x4

    #@4a
    .line 318
    aput v3, p0, v2

    #@4c
    goto :goto_5d

    #@4d
    .line 319
    :cond_4d
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@50
    move-result v4

    #@51
    if-eqz v4, :cond_5f

    #@53
    .line 321
    array-length v3, p0

    #@54
    sub-int/2addr v3, v5

    #@55
    new-array v3, v3, [I

    #@57
    .line 322
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5a
    add-int/lit8 v2, v2, -0x1

    #@5c
    move-object p0, v3

    #@5d
    :goto_5d
    add-int/2addr v2, v5

    #@5e
    goto :goto_f

    #@5f
    .line 326
    :cond_5f
    new-instance p0, Landroid/view/InflateException;

    #@61
    new-instance v0, Ljava/lang/StringBuilder;

    #@63
    const-string v1, "Unknown match type in matchOrder: \'"

    #@65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    const-string v1, "\'"

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    invoke-direct {p0, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@79
    throw p0

    #@7a
    :cond_7a
    return-object p0
.end method

.method private runAnimator(Landroid/animation/Animator;Landroidx/collection/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_d

    #@2
    .line 898
    new-instance v0, Landroidx/transition/Transition$2;

    #@4
    invoke-direct {v0, p0, p2}, Landroidx/transition/Transition$2;-><init>(Landroidx/transition/Transition;Landroidx/collection/ArrayMap;)V

    #@7
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@a
    .line 910
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->animate(Landroid/animation/Animator;)V

    #@d
    :cond_d
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .registers 3

    #@0
    .line 2042
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 2043
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@b
    .line 2045
    :cond_b
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    return-object p0
.end method

.method public addTarget(I)Landroidx/transition/Transition;
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 1025
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b
    :cond_b
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .registers 3

    #@0
    .line 1000
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    #@0
    .line 1079
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 1080
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@b
    .line 1082
    :cond_b
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .registers 3

    #@0
    .line 1049
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@b
    .line 1052
    :cond_b
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .registers 6

    #@0
    if-nez p1, :cond_6

    #@2
    .line 1900
    invoke-virtual {p0}, Landroidx/transition/Transition;->end()V

    #@5
    goto :goto_43

    #@6
    .line 1902
    :cond_6
    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    #@9
    move-result-wide v0

    #@a
    const-wide/16 v2, 0x0

    #@c
    cmp-long v0, v0, v2

    #@e
    if-ltz v0, :cond_17

    #@10
    .line 1903
    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    #@13
    move-result-wide v0

    #@14
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    #@17
    .line 1905
    :cond_17
    invoke-virtual {p0}, Landroidx/transition/Transition;->getStartDelay()J

    #@1a
    move-result-wide v0

    #@1b
    cmp-long v0, v0, v2

    #@1d
    if-ltz v0, :cond_2b

    #@1f
    .line 1906
    invoke-virtual {p0}, Landroidx/transition/Transition;->getStartDelay()J

    #@22
    move-result-wide v0

    #@23
    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    #@26
    move-result-wide v2

    #@27
    add-long/2addr v0, v2

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    #@2b
    .line 1908
    :cond_2b
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@2e
    move-result-object v0

    #@2f
    if-eqz v0, :cond_38

    #@31
    .line 1909
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    #@38
    .line 1911
    :cond_38
    new-instance v0, Landroidx/transition/Transition$3;

    #@3a
    invoke-direct {v0, p0}, Landroidx/transition/Transition$3;-><init>(Landroidx/transition/Transition;)V

    #@3d
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    #@40
    .line 1918
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    #@43
    :goto_43
    return-void
.end method

.method protected cancel()V
    .registers 5

    #@0
    .line 2017
    iget-object v0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    :goto_8
    if-ltz v0, :cond_18

    #@a
    .line 2019
    iget-object v1, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/animation/Animator;

    #@12
    .line 2020
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_8

    #@18
    .line 2022
    :cond_18
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@1a
    if-eqz v0, :cond_3d

    #@1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v0

    #@20
    if-lez v0, :cond_3d

    #@22
    .line 2023
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@24
    .line 2024
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/util/ArrayList;

    #@2a
    .line 2025
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v1

    #@2e
    const/4 v2, 0x0

    #@2f
    :goto_2f
    if-ge v2, v1, :cond_3d

    #@31
    .line 2027
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Landroidx/transition/Transition$TransitionListener;

    #@37
    invoke-interface {v3, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionCancel(Landroidx/transition/Transition;)V

    #@3a
    add-int/lit8 v2, v2, 0x1

    #@3c
    goto :goto_2f

    #@3d
    :cond_3d
    return-void
.end method

.method public abstract captureEndValues(Landroidx/transition/TransitionValues;)V
.end method

.method capturePropagationValues(Landroidx/transition/TransitionValues;)V
    .registers 7

    #@0
    .line 2189
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    #@2
    if-eqz v0, :cond_30

    #@4
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@6
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_30

    #@c
    .line 2190
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    #@e
    invoke-virtual {v0}, Landroidx/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    if-nez v0, :cond_15

    #@14
    return-void

    #@15
    :cond_15
    const/4 v1, 0x0

    #@16
    move v2, v1

    #@17
    .line 2195
    :goto_17
    array-length v3, v0

    #@18
    if-ge v2, v3, :cond_28

    #@1a
    .line 2196
    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@1c
    aget-object v4, v0, v2

    #@1e
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@21
    move-result v3

    #@22
    if-nez v3, :cond_25

    #@24
    goto :goto_29

    #@25
    :cond_25
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_17

    #@28
    :cond_28
    const/4 v1, 0x1

    #@29
    :goto_29
    if-nez v1, :cond_30

    #@2b
    .line 2202
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    #@2d
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionPropagation;->captureValues(Landroidx/transition/TransitionValues;)V

    #@30
    :cond_30
    return-void
.end method

.method public abstract captureStartValues(Landroidx/transition/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .registers 8

    #@0
    .line 1471
    invoke-virtual {p0, p2}, Landroidx/transition/Transition;->clearValues(Z)V

    #@3
    .line 1472
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    const/4 v1, 0x0

    #@a
    if-gtz v0, :cond_14

    #@c
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v0

    #@12
    if-lez v0, :cond_29

    #@14
    :cond_14
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@16
    if-eqz v0, :cond_1e

    #@18
    .line 1473
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_29

    #@1e
    :cond_1e
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@20
    if-eqz v0, :cond_2e

    #@22
    .line 1474
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_29

    #@28
    goto :goto_2e

    #@29
    .line 1511
    :cond_29
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    #@2c
    goto/16 :goto_a6

    #@2e
    :cond_2e
    :goto_2e
    move v0, v1

    #@2f
    .line 1475
    :goto_2f
    iget-object v2, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v2

    #@35
    if-ge v0, v2, :cond_6f

    #@37
    .line 1476
    iget-object v2, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Ljava/lang/Integer;

    #@3f
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@42
    move-result v2

    #@43
    .line 1477
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@46
    move-result-object v2

    #@47
    if-eqz v2, :cond_6c

    #@49
    .line 1479
    new-instance v3, Landroidx/transition/TransitionValues;

    #@4b
    invoke-direct {v3, v2}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    #@4e
    if-eqz p2, :cond_54

    #@50
    .line 1481
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    #@53
    goto :goto_57

    #@54
    .line 1483
    :cond_54
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    #@57
    .line 1485
    :goto_57
    iget-object v4, v3, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    #@59
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c
    .line 1486
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    #@5f
    if-eqz p2, :cond_67

    #@61
    .line 1488
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@63
    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    #@66
    goto :goto_6c

    #@67
    .line 1490
    :cond_67
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@69
    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    #@6c
    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    #@6e
    goto :goto_2f

    #@6f
    :cond_6f
    move p1, v1

    #@70
    .line 1494
    :goto_70
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@75
    move-result v0

    #@76
    if-ge p1, v0, :cond_a6

    #@78
    .line 1495
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@7a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7d
    move-result-object v0

    #@7e
    check-cast v0, Landroid/view/View;

    #@80
    .line 1496
    new-instance v2, Landroidx/transition/TransitionValues;

    #@82
    invoke-direct {v2, v0}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    #@85
    if-eqz p2, :cond_8b

    #@87
    .line 1498
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    #@8a
    goto :goto_8e

    #@8b
    .line 1500
    :cond_8b
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    #@8e
    .line 1502
    :goto_8e
    iget-object v3, v2, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    #@90
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@93
    .line 1503
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    #@96
    if-eqz p2, :cond_9e

    #@98
    .line 1505
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@9a
    invoke-static {v3, v0, v2}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    #@9d
    goto :goto_a3

    #@9e
    .line 1507
    :cond_9e
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@a0
    invoke-static {v3, v0, v2}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    #@a3
    :goto_a3
    add-int/lit8 p1, p1, 0x1

    #@a5
    goto :goto_70

    #@a6
    :cond_a6
    :goto_a6
    if-nez p2, :cond_ea

    #@a8
    .line 1513
    iget-object p1, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    #@aa
    if-eqz p1, :cond_ea

    #@ac
    .line 1514
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    #@af
    move-result p1

    #@b0
    .line 1515
    new-instance p2, Ljava/util/ArrayList;

    #@b2
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    #@b5
    move v0, v1

    #@b6
    :goto_b6
    if-ge v0, p1, :cond_ce

    #@b8
    .line 1517
    iget-object v2, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    #@ba
    invoke-virtual {v2, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@bd
    move-result-object v2

    #@be
    check-cast v2, Ljava/lang/String;

    #@c0
    .line 1518
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@c2
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    #@c4
    invoke-virtual {v3, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@c7
    move-result-object v2

    #@c8
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cb
    add-int/lit8 v0, v0, 0x1

    #@cd
    goto :goto_b6

    #@ce
    :cond_ce
    :goto_ce
    if-ge v1, p1, :cond_ea

    #@d0
    .line 1521
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d3
    move-result-object v0

    #@d4
    check-cast v0, Landroid/view/View;

    #@d6
    if-eqz v0, :cond_e7

    #@d8
    .line 1523
    iget-object v2, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    #@da
    invoke-virtual {v2, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@dd
    move-result-object v2

    #@de
    check-cast v2, Ljava/lang/String;

    #@e0
    .line 1524
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@e2
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    #@e4
    invoke-virtual {v3, v2, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e7
    :cond_e7
    add-int/lit8 v1, v1, 0x1

    #@e9
    goto :goto_ce

    #@ea
    :cond_ea
    return-void
.end method

.method clearValues(Z)V
    .registers 2

    #@0
    if-eqz p1, :cond_18

    #@2
    .line 1578
    iget-object p1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@4
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    #@6
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    #@9
    .line 1579
    iget-object p1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@b
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    #@d
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    #@10
    .line 1580
    iget-object p1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@12
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    #@14
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    #@17
    goto :goto_2d

    #@18
    .line 1582
    :cond_18
    iget-object p1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@1a
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    #@1c
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    #@1f
    .line 1583
    iget-object p1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@21
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    #@23
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    #@26
    .line 1584
    iget-object p1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@28
    iget-object p1, p1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    #@2a
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    #@2d
    :goto_2d
    return-void
.end method

.method public clone()Landroidx/transition/Transition;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 2224
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Landroidx/transition/Transition;

    #@7
    .line 2225
    new-instance v2, Ljava/util/ArrayList;

    #@9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v2, v1, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@e
    .line 2226
    new-instance v2, Landroidx/transition/TransitionValuesMaps;

    #@10
    invoke-direct {v2}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    #@13
    iput-object v2, v1, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@15
    .line 2227
    new-instance v2, Landroidx/transition/TransitionValuesMaps;

    #@17
    invoke-direct {v2}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    #@1a
    iput-object v2, v1, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@1c
    .line 2228
    iput-object v0, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@1e
    .line 2229
    iput-object v0, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_20} :catch_21

    #@20
    return-object v1

    #@21
    :catch_21
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .line 120
    invoke-virtual {p0}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 4

    #@0
    const/4 p1, 0x0

    #@1
    return-object p1
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/TransitionValuesMaps;",
            "Landroidx/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    #@0
    move-object/from16 v6, p0

    #@2
    move-object/from16 v7, p1

    #@4
    .line 710
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    #@7
    move-result-object v8

    #@8
    .line 712
    new-instance v9, Landroid/util/SparseIntArray;

    #@a
    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    #@d
    .line 713
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v10

    #@11
    const-wide v0, 0x7fffffffffffffffL

    #@16
    const/4 v12, 0x0

    #@17
    :goto_17
    if-ge v12, v10, :cond_12b

    #@19
    move-object/from16 v13, p4

    #@1b
    .line 715
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    check-cast v2, Landroidx/transition/TransitionValues;

    #@21
    move-object/from16 v14, p5

    #@23
    .line 716
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Landroidx/transition/TransitionValues;

    #@29
    if-eqz v2, :cond_34

    #@2b
    .line 717
    iget-object v5, v2, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@30
    move-result v5

    #@31
    if-nez v5, :cond_34

    #@33
    const/4 v2, 0x0

    #@34
    :cond_34
    if-eqz v3, :cond_3f

    #@36
    .line 720
    iget-object v5, v3, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@3b
    move-result v5

    #@3c
    if-nez v5, :cond_3f

    #@3e
    const/4 v3, 0x0

    #@3f
    :cond_3f
    if-nez v2, :cond_49

    #@41
    if-nez v3, :cond_49

    #@43
    :cond_43
    move/from16 v16, v10

    #@45
    move/from16 v18, v12

    #@47
    goto/16 :goto_125

    #@49
    :cond_49
    if-eqz v2, :cond_56

    #@4b
    if-eqz v3, :cond_56

    #@4d
    .line 727
    invoke-virtual {v6, v2, v3}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    #@50
    move-result v5

    #@51
    if-eqz v5, :cond_54

    #@53
    goto :goto_56

    #@54
    :cond_54
    const/4 v5, 0x0

    #@55
    goto :goto_57

    #@56
    :cond_56
    :goto_56
    const/4 v5, 0x1

    #@57
    :goto_57
    if-eqz v5, :cond_43

    #@59
    .line 747
    invoke-virtual {v6, v7, v2, v3}, Landroidx/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    #@5c
    move-result-object v5

    #@5d
    if-eqz v5, :cond_43

    #@5f
    if-eqz v3, :cond_e6

    #@61
    .line 753
    iget-object v15, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@63
    .line 754
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    if-eqz v4, :cond_da

    #@69
    .line 755
    array-length v11, v4

    #@6a
    if-lez v11, :cond_da

    #@6c
    .line 756
    new-instance v11, Landroidx/transition/TransitionValues;

    #@6e
    invoke-direct {v11, v15}, Landroidx/transition/TransitionValues;-><init>(Landroid/view/View;)V

    #@71
    move-object/from16 v17, v5

    #@73
    move/from16 v16, v10

    #@75
    move-object/from16 v10, p3

    #@77
    .line 757
    iget-object v5, v10, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    #@79
    invoke-virtual {v5, v15}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    move-result-object v5

    #@7d
    check-cast v5, Landroidx/transition/TransitionValues;

    #@7f
    if-eqz v5, :cond_a1

    #@81
    const/4 v10, 0x0

    #@82
    .line 759
    :goto_82
    array-length v13, v4

    #@83
    if-ge v10, v13, :cond_a1

    #@85
    .line 760
    iget-object v13, v11, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@87
    aget-object v14, v4, v10

    #@89
    move/from16 v18, v12

    #@8b
    iget-object v12, v5, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@8d
    move-object/from16 v19, v5

    #@8f
    aget-object v5, v4, v10

    #@91
    .line 761
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    move-result-object v5

    #@95
    .line 760
    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@98
    add-int/lit8 v10, v10, 0x1

    #@9a
    move-object/from16 v14, p5

    #@9c
    move/from16 v12, v18

    #@9e
    move-object/from16 v5, v19

    #@a0
    goto :goto_82

    #@a1
    :cond_a1
    move/from16 v18, v12

    #@a3
    .line 764
    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->size()I

    #@a6
    move-result v4

    #@a7
    const/4 v5, 0x0

    #@a8
    :goto_a8
    if-ge v5, v4, :cond_d7

    #@aa
    .line 766
    invoke-virtual {v8, v5}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@ad
    move-result-object v10

    #@ae
    check-cast v10, Landroid/animation/Animator;

    #@b0
    .line 767
    invoke-virtual {v8, v10}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b3
    move-result-object v10

    #@b4
    check-cast v10, Landroidx/transition/Transition$AnimationInfo;

    #@b6
    .line 768
    iget-object v12, v10, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    #@b8
    if-eqz v12, :cond_d4

    #@ba
    iget-object v12, v10, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    #@bc
    if-ne v12, v15, :cond_d4

    #@be
    iget-object v12, v10, Landroidx/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    #@c0
    .line 769
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getName()Ljava/lang/String;

    #@c3
    move-result-object v13

    #@c4
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c7
    move-result v12

    #@c8
    if-eqz v12, :cond_d4

    #@ca
    .line 770
    iget-object v10, v10, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    #@cc
    invoke-virtual {v10, v11}, Landroidx/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    #@cf
    move-result v10

    #@d0
    if-eqz v10, :cond_d4

    #@d2
    const/4 v4, 0x0

    #@d3
    goto :goto_e3

    #@d4
    :cond_d4
    add-int/lit8 v5, v5, 0x1

    #@d6
    goto :goto_a8

    #@d7
    :cond_d7
    move-object/from16 v4, v17

    #@d9
    goto :goto_e3

    #@da
    :cond_da
    move-object/from16 v17, v5

    #@dc
    move/from16 v16, v10

    #@de
    move/from16 v18, v12

    #@e0
    move-object/from16 v4, v17

    #@e2
    const/4 v11, 0x0

    #@e3
    :goto_e3
    move-object v10, v4

    #@e4
    move-object v5, v11

    #@e5
    goto :goto_f2

    #@e6
    :cond_e6
    move-object/from16 v17, v5

    #@e8
    move/from16 v16, v10

    #@ea
    move/from16 v18, v12

    #@ec
    .line 779
    iget-object v4, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@ee
    move-object v15, v4

    #@ef
    move-object/from16 v10, v17

    #@f1
    const/4 v5, 0x0

    #@f2
    :goto_f2
    if-eqz v10, :cond_125

    #@f4
    .line 782
    iget-object v4, v6, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    #@f6
    if-eqz v4, :cond_10a

    #@f8
    .line 783
    invoke-virtual {v4, v7, v6, v2, v3}, Landroidx/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J

    #@fb
    move-result-wide v2

    #@fc
    .line 784
    iget-object v4, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@fe
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@101
    move-result v4

    #@102
    long-to-int v11, v2

    #@103
    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    #@106
    .line 785
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@109
    move-result-wide v0

    #@10a
    :cond_10a
    move-wide v11, v0

    #@10b
    .line 787
    new-instance v13, Landroidx/transition/Transition$AnimationInfo;

    #@10d
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getName()Ljava/lang/String;

    #@110
    move-result-object v2

    #@111
    .line 788
    invoke-static/range {p1 .. p1}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    #@114
    move-result-object v4

    #@115
    move-object v0, v13

    #@116
    move-object v1, v15

    #@117
    move-object/from16 v3, p0

    #@119
    invoke-direct/range {v0 .. v5}, Landroidx/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/Transition;Landroidx/transition/WindowIdImpl;Landroidx/transition/TransitionValues;)V

    #@11c
    .line 789
    invoke-virtual {v8, v10, v13}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11f
    .line 790
    iget-object v0, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@121
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@124
    move-wide v0, v11

    #@125
    :cond_125
    :goto_125
    add-int/lit8 v12, v18, 0x1

    #@127
    move/from16 v10, v16

    #@129
    goto/16 :goto_17

    #@12b
    .line 795
    :cond_12b
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    #@12e
    move-result v2

    #@12f
    if-eqz v2, :cond_155

    #@131
    const/4 v11, 0x0

    #@132
    .line 796
    :goto_132
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    #@135
    move-result v2

    #@136
    if-ge v11, v2, :cond_155

    #@138
    .line 797
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    #@13b
    move-result v2

    #@13c
    .line 798
    iget-object v3, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@13e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@141
    move-result-object v2

    #@142
    check-cast v2, Landroid/animation/Animator;

    #@144
    .line 799
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    #@147
    move-result v3

    #@148
    int-to-long v3, v3

    #@149
    sub-long/2addr v3, v0

    #@14a
    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    #@14d
    move-result-wide v7

    #@14e
    add-long/2addr v3, v7

    #@14f
    .line 800
    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setStartDelay(J)V

    #@152
    add-int/lit8 v11, v11, 0x1

    #@154
    goto :goto_132

    #@155
    :cond_155
    return-void
.end method

.method protected end()V
    .registers 7

    #@0
    .line 1958
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    #@2
    const/4 v1, 0x1

    #@3
    sub-int/2addr v0, v1

    #@4
    iput v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    #@6
    if-nez v0, :cond_6a

    #@8
    .line 1960
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@a
    const/4 v2, 0x0

    #@b
    if-eqz v0, :cond_2e

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    if-lez v0, :cond_2e

    #@13
    .line 1961
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@15
    .line 1962
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/ArrayList;

    #@1b
    .line 1963
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v3

    #@1f
    move v4, v2

    #@20
    :goto_20
    if-ge v4, v3, :cond_2e

    #@22
    .line 1965
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@25
    move-result-object v5

    #@26
    check-cast v5, Landroidx/transition/Transition$TransitionListener;

    #@28
    invoke-interface {v5, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionEnd(Landroidx/transition/Transition;)V

    #@2b
    add-int/lit8 v4, v4, 0x1

    #@2d
    goto :goto_20

    #@2e
    :cond_2e
    move v0, v2

    #@2f
    .line 1968
    :goto_2f
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@31
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    #@33
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    #@36
    move-result v3

    #@37
    if-ge v0, v3, :cond_4b

    #@39
    .line 1969
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@3b
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    #@3d
    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@40
    move-result-object v3

    #@41
    check-cast v3, Landroid/view/View;

    #@43
    if-eqz v3, :cond_48

    #@45
    .line 1971
    invoke-static {v3, v2}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    #@48
    :cond_48
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_2f

    #@4b
    :cond_4b
    move v0, v2

    #@4c
    .line 1974
    :goto_4c
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@4e
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    #@50
    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    #@53
    move-result v3

    #@54
    if-ge v0, v3, :cond_68

    #@56
    .line 1975
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@58
    iget-object v3, v3, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    #@5a
    invoke-virtual {v3, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    #@5d
    move-result-object v3

    #@5e
    check-cast v3, Landroid/view/View;

    #@60
    if-eqz v3, :cond_65

    #@62
    .line 1977
    invoke-static {v3, v2}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    #@65
    :cond_65
    add-int/lit8 v0, v0, 0x1

    #@67
    goto :goto_4c

    #@68
    .line 1980
    :cond_68
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    #@6a
    :cond_6a
    return-void
.end method

.method public excludeChildren(IZ)Landroidx/transition/Transition;
    .registers 4

    #@0
    .line 1301
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    #@8
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroidx/transition/Transition;
    .registers 4

    #@0
    .line 1271
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    #@8
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    #@0
    .line 1384
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    #@8
    return-object p0
.end method

.method public excludeTarget(IZ)Landroidx/transition/Transition;
    .registers 4

    #@0
    .line 1219
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    #@8
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroidx/transition/Transition;
    .registers 4

    #@0
    .line 1193
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    #@8
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    #@0
    .line 1357
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@8
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;
    .registers 4

    #@0
    .line 1245
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    #@2
    invoke-static {v0, p1, p2}, Landroidx/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    #@5
    move-result-object p1

    #@6
    iput-object p1, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    #@8
    return-object p0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .registers 6

    #@0
    .line 1991
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    #@3
    move-result-object v0

    #@4
    .line 1992
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    #@7
    move-result v1

    #@8
    if-eqz p1, :cond_3d

    #@a
    if-nez v1, :cond_d

    #@c
    goto :goto_3d

    #@d
    .line 1997
    :cond_d
    invoke-static {p1}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    #@10
    move-result-object p1

    #@11
    .line 1998
    new-instance v2, Landroidx/collection/ArrayMap;

    #@13
    invoke-direct {v2, v0}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    #@16
    .line 1999
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    #@19
    add-int/lit8 v1, v1, -0x1

    #@1b
    :goto_1b
    if-ltz v1, :cond_3d

    #@1d
    .line 2002
    invoke-virtual {v2, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroidx/transition/Transition$AnimationInfo;

    #@23
    .line 2003
    iget-object v3, v0, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    #@25
    if-eqz v3, :cond_3a

    #@27
    if-eqz p1, :cond_3a

    #@29
    iget-object v0, v0, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    #@2b
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_3a

    #@31
    .line 2004
    invoke-virtual {v2, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/animation/Animator;

    #@37
    .line 2005
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    #@3a
    :cond_3a
    add-int/lit8 v1, v1, -0x1

    #@3c
    goto :goto_1b

    #@3d
    :cond_3d
    :goto_3d
    return-void
.end method

.method public getDuration()J
    .registers 3

    #@0
    .line 357
    iget-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    #@2
    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .registers 2

    #@0
    .line 2146
    iget-object v0, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 2149
    :cond_6
    invoke-virtual {v0, p0}, Landroidx/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroidx/transition/Transition;)Landroid/graphics/Rect;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getEpicenterCallback()Landroidx/transition/Transition$EpicenterCallback;
    .registers 2

    #@0
    .line 2133
    iget-object v0, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    #@2
    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    #@0
    .line 412
    iget-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .registers 8

    #@0
    .line 1682
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1683
    invoke-virtual {v0, p1, p2}, Landroidx/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    #@7
    move-result-object p1

    #@8
    return-object p1

    #@9
    :cond_9
    if-eqz p2, :cond_e

    #@b
    .line 1685
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@d
    goto :goto_10

    #@e
    :cond_e
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@10
    :goto_10
    const/4 v1, 0x0

    #@11
    if-nez v0, :cond_14

    #@13
    return-object v1

    #@14
    .line 1689
    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v2

    #@18
    const/4 v3, 0x0

    #@19
    :goto_19
    if-ge v3, v2, :cond_2c

    #@1b
    .line 1692
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    check-cast v4, Landroidx/transition/TransitionValues;

    #@21
    if-nez v4, :cond_24

    #@23
    return-object v1

    #@24
    .line 1697
    :cond_24
    iget-object v4, v4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@26
    if-ne v4, p1, :cond_29

    #@28
    goto :goto_2d

    #@29
    :cond_29
    add-int/lit8 v3, v3, 0x1

    #@2b
    goto :goto_19

    #@2c
    :cond_2c
    const/4 v3, -0x1

    #@2d
    :goto_2d
    if-ltz v3, :cond_3d

    #@2f
    if-eqz p2, :cond_34

    #@31
    .line 1704
    iget-object p1, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@33
    goto :goto_36

    #@34
    :cond_34
    iget-object p1, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@36
    .line 1705
    :goto_36
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@39
    move-result-object p1

    #@3a
    move-object v1, p1

    #@3b
    check-cast v1, Landroidx/transition/TransitionValues;

    #@3d
    :cond_3d
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    .line 2250
    iget-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPathMotion()Landroidx/transition/PathMotion;
    .registers 2

    #@0
    .line 2103
    iget-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    #@2
    return-object v0
.end method

.method public getPropagation()Landroidx/transition/TransitionPropagation;
    .registers 2

    #@0
    .line 2181
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    #@2
    return-object v0
.end method

.method public getStartDelay()J
    .registers 3

    #@0
    .line 384
    iget-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    #@2
    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .line 1415
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .line 1444
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    #@0
    .line 1459
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .line 1429
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .registers 4

    #@0
    .line 1663
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1664
    invoke-virtual {v0, p1, p2}, Landroidx/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    #@7
    move-result-object p1

    #@8
    return-object p1

    #@9
    :cond_9
    if-eqz p2, :cond_e

    #@b
    .line 1666
    iget-object p2, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@d
    goto :goto_10

    #@e
    :cond_e
    iget-object p2, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@10
    .line 1667
    :goto_10
    iget-object p2, p2, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    #@12
    invoke-virtual {p2, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object p1

    #@16
    check-cast p1, Landroidx/transition/TransitionValues;

    #@18
    return-object p1
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_39

    #@3
    if-eqz p2, :cond_39

    #@5
    .line 1844
    invoke-virtual {p0}, Landroidx/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x1

    #@a
    if-eqz v1, :cond_1c

    #@c
    .line 1846
    array-length v3, v1

    #@d
    move v4, v0

    #@e
    :goto_e
    if-ge v4, v3, :cond_39

    #@10
    aget-object v5, v1, v4

    #@12
    .line 1847
    invoke-static {p1, p2, v5}, Landroidx/transition/Transition;->isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_19

    #@18
    goto :goto_38

    #@19
    :cond_19
    add-int/lit8 v4, v4, 0x1

    #@1b
    goto :goto_e

    #@1c
    .line 1853
    :cond_1c
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    #@1e
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@21
    move-result-object v1

    #@22
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v1

    #@26
    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_39

    #@2c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Ljava/lang/String;

    #@32
    .line 1854
    invoke-static {p1, p2, v3}, Landroidx/transition/Transition;->isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_26

    #@38
    :goto_38
    move v0, v2

    #@39
    :cond_39
    return v0
.end method

.method isValidTarget(Landroid/view/View;)Z
    .registers 7

    #@0
    .line 816
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@3
    move-result v0

    #@4
    .line 817
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    #@6
    const/4 v2, 0x0

    #@7
    if-eqz v1, :cond_14

    #@9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_14

    #@13
    return v2

    #@14
    .line 820
    :cond_14
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    #@16
    if-eqz v1, :cond_1f

    #@18
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1f

    #@1e
    return v2

    #@1f
    .line 823
    :cond_1f
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@21
    if-eqz v1, :cond_3c

    #@23
    .line 824
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v1

    #@27
    move v3, v2

    #@28
    :goto_28
    if-ge v3, v1, :cond_3c

    #@2a
    .line 826
    iget-object v4, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Ljava/lang/Class;

    #@32
    .line 827
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@35
    move-result v4

    #@36
    if-eqz v4, :cond_39

    #@38
    return v2

    #@39
    :cond_39
    add-int/lit8 v3, v3, 0x1

    #@3b
    goto :goto_28

    #@3c
    .line 832
    :cond_3c
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    #@3e
    if-eqz v1, :cond_53

    #@40
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    if-eqz v1, :cond_53

    #@46
    .line 833
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    #@48
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@4f
    move-result v1

    #@50
    if-eqz v1, :cond_53

    #@52
    return v2

    #@53
    .line 837
    :cond_53
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@58
    move-result v1

    #@59
    const/4 v3, 0x1

    #@5a
    if-nez v1, :cond_79

    #@5c
    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@5e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@61
    move-result v1

    #@62
    if-nez v1, :cond_79

    #@64
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@66
    if-eqz v1, :cond_6e

    #@68
    .line 838
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@6b
    move-result v1

    #@6c
    if-eqz v1, :cond_79

    #@6e
    :cond_6e
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@70
    if-eqz v1, :cond_78

    #@72
    .line 839
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@75
    move-result v1

    #@76
    if-eqz v1, :cond_79

    #@78
    :cond_78
    return v3

    #@79
    .line 842
    :cond_79
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@7b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@82
    move-result v0

    #@83
    if-nez v0, :cond_bd

    #@85
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@87
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@8a
    move-result v0

    #@8b
    if-eqz v0, :cond_8e

    #@8d
    goto :goto_bd

    #@8e
    .line 845
    :cond_8e
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@90
    if-eqz v0, :cond_9d

    #@92
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@99
    move-result v0

    #@9a
    if-eqz v0, :cond_9d

    #@9c
    return v3

    #@9d
    .line 848
    :cond_9d
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@9f
    if-eqz v0, :cond_bc

    #@a1
    move v0, v2

    #@a2
    .line 849
    :goto_a2
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@a4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@a7
    move-result v1

    #@a8
    if-ge v0, v1, :cond_bc

    #@aa
    .line 850
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@ac
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@af
    move-result-object v1

    #@b0
    check-cast v1, Ljava/lang/Class;

    #@b2
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@b5
    move-result v1

    #@b6
    if-eqz v1, :cond_b9

    #@b8
    return v3

    #@b9
    :cond_b9
    add-int/lit8 v0, v0, 0x1

    #@bb
    goto :goto_a2

    #@bc
    :cond_bc
    return v2

    #@bd
    :cond_bd
    :goto_bd
    return v3
.end method

.method public pause(Landroid/view/View;)V
    .registers 7

    #@0
    .line 1719
    iget-boolean v0, p0, Landroidx/transition/Transition;->mEnded:Z

    #@2
    if-nez v0, :cond_59

    #@4
    .line 1720
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    #@7
    move-result-object v0

    #@8
    .line 1721
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    #@b
    move-result v1

    #@c
    .line 1722
    invoke-static {p1}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    #@f
    move-result-object p1

    #@10
    const/4 v2, 0x1

    #@11
    sub-int/2addr v1, v2

    #@12
    :goto_12
    if-ltz v1, :cond_32

    #@14
    .line 1724
    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Landroidx/transition/Transition$AnimationInfo;

    #@1a
    .line 1725
    iget-object v4, v3, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    #@1c
    if-eqz v4, :cond_2f

    #@1e
    iget-object v3, v3, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    #@20
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_2f

    #@26
    .line 1726
    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Landroid/animation/Animator;

    #@2c
    .line 1727
    invoke-static {v3}, Landroidx/transition/AnimatorUtils;->pause(Landroid/animation/Animator;)V

    #@2f
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    #@31
    goto :goto_12

    #@32
    .line 1730
    :cond_32
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@34
    if-eqz p1, :cond_57

    #@36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@39
    move-result p1

    #@3a
    if-lez p1, :cond_57

    #@3c
    .line 1731
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@3e
    .line 1732
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@41
    move-result-object p1

    #@42
    check-cast p1, Ljava/util/ArrayList;

    #@44
    .line 1733
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@47
    move-result v0

    #@48
    const/4 v1, 0x0

    #@49
    :goto_49
    if-ge v1, v0, :cond_57

    #@4b
    .line 1735
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4e
    move-result-object v3

    #@4f
    check-cast v3, Landroidx/transition/Transition$TransitionListener;

    #@51
    invoke-interface {v3, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionPause(Landroidx/transition/Transition;)V

    #@54
    add-int/lit8 v1, v1, 0x1

    #@56
    goto :goto_49

    #@57
    .line 1738
    :cond_57
    iput-boolean v2, p0, Landroidx/transition/Transition;->mPaused:Z

    #@59
    :cond_59
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .registers 12

    #@0
    .line 1782
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    iput-object v0, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@7
    .line 1783
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@e
    .line 1784
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@10
    iget-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@12
    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->matchStartAndEnd(Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;)V

    #@15
    .line 1786
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    #@18
    move-result-object v0

    #@19
    .line 1787
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    #@1c
    move-result v1

    #@1d
    .line 1788
    invoke-static {p1}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    #@20
    move-result-object v2

    #@21
    const/4 v3, 0x1

    #@22
    sub-int/2addr v1, v3

    #@23
    :goto_23
    if-ltz v1, :cond_84

    #@25
    .line 1790
    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Landroid/animation/Animator;

    #@2b
    if-eqz v4, :cond_81

    #@2d
    .line 1792
    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Landroidx/transition/Transition$AnimationInfo;

    #@33
    if-eqz v5, :cond_81

    #@35
    .line 1793
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    #@37
    if-eqz v6, :cond_81

    #@39
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    #@3b
    .line 1794
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v6

    #@3f
    if-eqz v6, :cond_81

    #@41
    .line 1795
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    #@43
    .line 1796
    iget-object v7, v5, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    #@45
    .line 1797
    invoke-virtual {p0, v7, v3}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    #@48
    move-result-object v8

    #@49
    .line 1798
    invoke-virtual {p0, v7, v3}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    #@4c
    move-result-object v9

    #@4d
    if-nez v8, :cond_5c

    #@4f
    if-nez v9, :cond_5c

    #@51
    .line 1800
    iget-object v9, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@53
    iget-object v9, v9, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    #@55
    invoke-virtual {v9, v7}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@58
    move-result-object v7

    #@59
    move-object v9, v7

    #@5a
    check-cast v9, Landroidx/transition/TransitionValues;

    #@5c
    :cond_5c
    if-nez v8, :cond_60

    #@5e
    if-eqz v9, :cond_6a

    #@60
    .line 1802
    :cond_60
    iget-object v5, v5, Landroidx/transition/Transition$AnimationInfo;->mTransition:Landroidx/transition/Transition;

    #@62
    .line 1803
    invoke-virtual {v5, v6, v9}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    #@65
    move-result v5

    #@66
    if-eqz v5, :cond_6a

    #@68
    move v5, v3

    #@69
    goto :goto_6b

    #@6a
    :cond_6a
    const/4 v5, 0x0

    #@6b
    :goto_6b
    if-eqz v5, :cond_81

    #@6d
    .line 1805
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    #@70
    move-result v5

    #@71
    if-nez v5, :cond_7e

    #@73
    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    #@76
    move-result v5

    #@77
    if-eqz v5, :cond_7a

    #@79
    goto :goto_7e

    #@7a
    .line 1814
    :cond_7a
    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    goto :goto_81

    #@7e
    .line 1809
    :cond_7e
    :goto_7e
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    #@81
    :cond_81
    :goto_81
    add-int/lit8 v1, v1, -0x1

    #@83
    goto :goto_23

    #@84
    .line 1821
    :cond_84
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    #@86
    iget-object v7, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    #@88
    iget-object v8, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    #@8a
    iget-object v9, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    #@8c
    move-object v4, p0

    #@8d
    move-object v5, p1

    #@8e
    invoke-virtual/range {v4 .. v9}, Landroidx/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@91
    .line 1822
    invoke-virtual {p0}, Landroidx/transition/Transition;->runAnimators()V

    #@94
    return-void
.end method

.method public removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .registers 3

    #@0
    .line 2058
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_5

    #@4
    return-object p0

    #@5
    .line 2061
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@8
    .line 2062
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@a
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@d
    move-result p1

    #@e
    if-nez p1, :cond_13

    #@10
    const/4 p1, 0x0

    #@11
    .line 2063
    iput-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@13
    :cond_13
    return-object p0
.end method

.method public removeTarget(I)Landroidx/transition/Transition;
    .registers 3

    #@0
    if-eqz p1, :cond_b

    #@2
    .line 1115
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@b
    :cond_b
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .registers 3

    #@0
    .line 1098
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    #@0
    .line 1150
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1151
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@7
    :cond_7
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .registers 3

    #@0
    .line 1132
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 1133
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@7
    :cond_7
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .registers 7

    #@0
    .line 1751
    iget-boolean v0, p0, Landroidx/transition/Transition;->mPaused:Z

    #@2
    if-eqz v0, :cond_5e

    #@4
    .line 1752
    iget-boolean v0, p0, Landroidx/transition/Transition;->mEnded:Z

    #@6
    const/4 v1, 0x0

    #@7
    if-nez v0, :cond_5c

    #@9
    .line 1753
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    #@c
    move-result-object v0

    #@d
    .line 1754
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    #@10
    move-result v2

    #@11
    .line 1755
    invoke-static {p1}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    #@14
    move-result-object p1

    #@15
    add-int/lit8 v2, v2, -0x1

    #@17
    :goto_17
    if-ltz v2, :cond_37

    #@19
    .line 1757
    invoke-virtual {v0, v2}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    check-cast v3, Landroidx/transition/Transition$AnimationInfo;

    #@1f
    .line 1758
    iget-object v4, v3, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    #@21
    if-eqz v4, :cond_34

    #@23
    iget-object v3, v3, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    #@25
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_34

    #@2b
    .line 1759
    invoke-virtual {v0, v2}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Landroid/animation/Animator;

    #@31
    .line 1760
    invoke-static {v3}, Landroidx/transition/AnimatorUtils;->resume(Landroid/animation/Animator;)V

    #@34
    :cond_34
    add-int/lit8 v2, v2, -0x1

    #@36
    goto :goto_17

    #@37
    .line 1763
    :cond_37
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@39
    if-eqz p1, :cond_5c

    #@3b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result p1

    #@3f
    if-lez p1, :cond_5c

    #@41
    .line 1764
    iget-object p1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@43
    .line 1765
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@46
    move-result-object p1

    #@47
    check-cast p1, Ljava/util/ArrayList;

    #@49
    .line 1766
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@4c
    move-result v0

    #@4d
    move v2, v1

    #@4e
    :goto_4e
    if-ge v2, v0, :cond_5c

    #@50
    .line 1768
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@53
    move-result-object v3

    #@54
    check-cast v3, Landroidx/transition/Transition$TransitionListener;

    #@56
    invoke-interface {v3, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionResume(Landroidx/transition/Transition;)V

    #@59
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_4e

    #@5c
    .line 1772
    :cond_5c
    iput-boolean v1, p0, Landroidx/transition/Transition;->mPaused:Z

    #@5e
    :cond_5e
    return-void
.end method

.method protected runAnimators()V
    .registers 5

    #@0
    .line 878
    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    #@3
    .line 879
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    #@6
    move-result-object v0

    #@7
    .line 881
    iget-object v1, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_26

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/animation/Animator;

    #@19
    .line 885
    invoke-virtual {v0, v2}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_d

    #@1f
    .line 886
    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    #@22
    .line 887
    invoke-direct {p0, v2, v0}, Landroidx/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroidx/collection/ArrayMap;)V

    #@25
    goto :goto_d

    #@26
    .line 890
    :cond_26
    iget-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@2b
    .line 891
    invoke-virtual {p0}, Landroidx/transition/Transition;->end()V

    #@2e
    return-void
.end method

.method setCanRemoveViews(Z)V
    .registers 2

    #@0
    .line 2213
    iput-boolean p1, p0, Landroidx/transition/Transition;->mCanRemoveViews:Z

    #@2
    return-void
.end method

.method public setDuration(J)Landroidx/transition/Transition;
    .registers 3

    #@0
    .line 344
    iput-wide p1, p0, Landroidx/transition/Transition;->mDuration:J

    #@2
    return-object p0
.end method

.method public setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V
    .registers 2

    #@0
    .line 2118
    iput-object p1, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    #@2
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;
    .registers 2

    #@0
    .line 398
    iput-object p1, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@2
    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .registers 4

    #@0
    if-eqz p1, :cond_34

    #@2
    .line 510
    array-length v0, p1

    #@3
    if-nez v0, :cond_6

    #@5
    goto :goto_34

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    .line 513
    :goto_7
    array-length v1, p1

    #@8
    if-ge v0, v1, :cond_2b

    #@a
    .line 514
    aget v1, p1, v0

    #@c
    .line 515
    invoke-static {v1}, Landroidx/transition/Transition;->isValidMatch(I)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_23

    #@12
    .line 518
    invoke-static {p1, v0}, Landroidx/transition/Transition;->alreadyContains([II)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_1b

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_7

    #@1b
    .line 519
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string v0, "matches contains a duplicate value"

    #@1f
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw p1

    #@23
    .line 516
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@25
    const-string v0, "matches contains invalid value"

    #@27
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw p1

    #@2b
    .line 522
    :cond_2b
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    #@2e
    move-result-object p1

    #@2f
    check-cast p1, [I

    #@31
    iput-object p1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    #@33
    goto :goto_38

    #@34
    .line 511
    :cond_34
    :goto_34
    sget-object p1, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    #@36
    iput-object p1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    #@38
    :goto_38
    return-void
.end method

.method public setPathMotion(Landroidx/transition/PathMotion;)V
    .registers 2

    #@0
    if-nez p1, :cond_7

    #@2
    .line 2086
    sget-object p1, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    #@4
    iput-object p1, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    #@6
    goto :goto_9

    #@7
    .line 2088
    :cond_7
    iput-object p1, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    #@9
    :goto_9
    return-void
.end method

.method public setPropagation(Landroidx/transition/TransitionPropagation;)V
    .registers 2

    #@0
    .line 2164
    iput-object p1, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    #@2
    return-void
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/Transition;
    .registers 2

    #@0
    .line 2208
    iput-object p1, p0, Landroidx/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    #@2
    return-object p0
.end method

.method public setStartDelay(J)Landroidx/transition/Transition;
    .registers 3

    #@0
    .line 371
    iput-wide p1, p0, Landroidx/transition/Transition;->mStartDelay:J

    #@2
    return-object p0
.end method

.method protected start()V
    .registers 6

    #@0
    .line 1931
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    #@2
    if-nez v0, :cond_2c

    #@4
    .line 1932
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@6
    const/4 v1, 0x0

    #@7
    if-eqz v0, :cond_2a

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    if-lez v0, :cond_2a

    #@f
    .line 1933
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    #@11
    .line 1934
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/ArrayList;

    #@17
    .line 1935
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v2

    #@1b
    move v3, v1

    #@1c
    :goto_1c
    if-ge v3, v2, :cond_2a

    #@1e
    .line 1937
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Landroidx/transition/Transition$TransitionListener;

    #@24
    invoke-interface {v4, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionStart(Landroidx/transition/Transition;)V

    #@27
    add-int/lit8 v3, v3, 0x1

    #@29
    goto :goto_1c

    #@2a
    .line 1940
    :cond_2a
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    #@2c
    .line 1942
    :cond_2c
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    #@2e
    add-int/lit8 v0, v0, 0x1

    #@30
    iput v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    #@32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, ""

    #@2
    .line 2218
    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    #@0
    .line 2254
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object p1

    #@9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object p1

    #@15
    const-string v0, "@"

    #@17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p1

    #@1b
    .line 2255
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@1e
    move-result v0

    #@1f
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object p1

    #@27
    const-string v0, ": "

    #@29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object p1

    #@2d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object p1

    #@31
    .line 2256
    iget-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    #@33
    const-wide/16 v2, -0x1

    #@35
    cmp-long v0, v0, v2

    #@37
    const-string v1, ") "

    #@39
    if-eqz v0, :cond_58

    #@3b
    .line 2257
    new-instance v0, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object p1

    #@44
    const-string v0, "dur("

    #@46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object p1

    #@4a
    iget-wide v4, p0, Landroidx/transition/Transition;->mDuration:J

    #@4c
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4f
    move-result-object p1

    #@50
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object p1

    #@54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object p1

    #@58
    .line 2259
    :cond_58
    iget-wide v4, p0, Landroidx/transition/Transition;->mStartDelay:J

    #@5a
    cmp-long v0, v4, v2

    #@5c
    if-eqz v0, :cond_7b

    #@5e
    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object p1

    #@67
    const-string v0, "dly("

    #@69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object p1

    #@6d
    iget-wide v2, p0, Landroidx/transition/Transition;->mStartDelay:J

    #@6f
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@72
    move-result-object p1

    #@73
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object p1

    #@77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object p1

    #@7b
    .line 2262
    :cond_7b
    iget-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@7d
    if-eqz v0, :cond_9c

    #@7f
    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object p1

    #@88
    const-string v0, "interp("

    #@8a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object p1

    #@8e
    iget-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    #@90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@93
    move-result-object p1

    #@94
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object p1

    #@98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object p1

    #@9c
    .line 2265
    :cond_9c
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@9e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a1
    move-result v0

    #@a2
    if-gtz v0, :cond_ac

    #@a4
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@a6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a9
    move-result v0

    #@aa
    if-lez v0, :cond_150

    #@ac
    .line 2266
    :cond_ac
    new-instance v0, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object p1

    #@b5
    const-string v0, "tgts("

    #@b7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object p1

    #@bb
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object p1

    #@bf
    .line 2267
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@c1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c4
    move-result v0

    #@c5
    const-string v1, ", "

    #@c7
    const/4 v2, 0x0

    #@c8
    if-lez v0, :cond_100

    #@ca
    move v0, v2

    #@cb
    .line 2268
    :goto_cb
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@cd
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@d0
    move-result v3

    #@d1
    if-ge v0, v3, :cond_100

    #@d3
    if-lez v0, :cond_e6

    #@d5
    .line 2270
    new-instance v3, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object p1

    #@de
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object p1

    #@e2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object p1

    #@e6
    .line 2272
    :cond_e6
    new-instance v3, Ljava/lang/StringBuilder;

    #@e8
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@eb
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object p1

    #@ef
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    #@f1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f4
    move-result-object v3

    #@f5
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f8
    move-result-object p1

    #@f9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fc
    move-result-object p1

    #@fd
    add-int/lit8 v0, v0, 0x1

    #@ff
    goto :goto_cb

    #@100
    .line 2275
    :cond_100
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@105
    move-result v0

    #@106
    if-lez v0, :cond_13d

    #@108
    .line 2276
    :goto_108
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@10a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10d
    move-result v0

    #@10e
    if-ge v2, v0, :cond_13d

    #@110
    if-lez v2, :cond_123

    #@112
    .line 2278
    new-instance v0, Ljava/lang/StringBuilder;

    #@114
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11a
    move-result-object p1

    #@11b
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object p1

    #@11f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object p1

    #@123
    .line 2280
    :cond_123
    new-instance v0, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object p1

    #@12c
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    #@12e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@131
    move-result-object v0

    #@132
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@135
    move-result-object p1

    #@136
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@139
    move-result-object p1

    #@13a
    add-int/lit8 v2, v2, 0x1

    #@13c
    goto :goto_108

    #@13d
    .line 2283
    :cond_13d
    new-instance v0, Ljava/lang/StringBuilder;

    #@13f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@142
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    move-result-object p1

    #@146
    const-string v0, ")"

    #@148
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object p1

    #@14c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object p1

    #@150
    :cond_150
    return-object p1
.end method
