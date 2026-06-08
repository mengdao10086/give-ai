.class public Landroidx/constraintlayout/helper/widget/Carousel;
.super Landroidx/constraintlayout/motion/widget/MotionHelper;
.source "Carousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/helper/widget/Carousel$Adapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Carousel"

.field public static final TOUCH_UP_CARRY_ON:I = 0x2

.field public static final TOUCH_UP_IMMEDIATE_STOP:I = 0x1


# instance fields
.field private backwardTransition:I

.field private dampening:F

.field private emptyViewBehavior:I

.field private firstViewReference:I

.field private forwardTransition:I

.field private infiniteCarousel:Z

.field private mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

.field private mAnimateTargetDelay:I

.field private mIndex:I

.field mLastStartId:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mPreviousIndex:I

.field private mTargetIndex:I

.field mUpdateRunnable:Ljava/lang/Runnable;

.field private nextState:I

.field private previousState:I

.field private startIndex:I

.field private touchUpMode:I

.field private velocityThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    #@0
    .line 91
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@6
    .line 43
    new-instance p1, Ljava/util/ArrayList;

    #@8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    #@d
    const/4 p1, 0x0

    #@e
    .line 44
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    #@10
    .line 45
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@12
    const/4 v0, -0x1

    #@13
    .line 47
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    #@15
    .line 48
    iput-boolean p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    #@17
    .line 49
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    #@19
    .line 50
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    #@1b
    .line 51
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    #@1d
    .line 52
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    #@1f
    const v1, 0x3f666666    # 0.9f

    #@22
    .line 53
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    #@24
    .line 54
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    #@26
    const/4 p1, 0x4

    #@27
    .line 55
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    #@29
    const/4 p1, 0x1

    #@2a
    .line 60
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    #@2c
    const/high16 p1, 0x40000000    # 2.0f

    #@2e
    .line 61
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    #@30
    .line 62
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    #@32
    const/16 p1, 0xc8

    #@34
    .line 63
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    #@36
    .line 210
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    #@38
    .line 266
    new-instance p1, Landroidx/constraintlayout/helper/widget/Carousel$1;

    #@3a
    invoke-direct {p1, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    #@3d
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    #@3f
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
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
    .line 95
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 42
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@6
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    #@d
    const/4 v0, 0x0

    #@e
    .line 44
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    #@10
    .line 45
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@12
    const/4 v1, -0x1

    #@13
    .line 47
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    #@15
    .line 48
    iput-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    #@17
    .line 49
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    #@19
    .line 50
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    #@1b
    .line 51
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    #@1d
    .line 52
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    #@1f
    const v2, 0x3f666666    # 0.9f

    #@22
    .line 53
    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    #@24
    .line 54
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    #@26
    const/4 v0, 0x4

    #@27
    .line 55
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    #@29
    const/4 v0, 0x1

    #@2a
    .line 60
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    #@2c
    const/high16 v0, 0x40000000    # 2.0f

    #@2e
    .line 61
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    #@30
    .line 62
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    #@32
    const/16 v0, 0xc8

    #@34
    .line 63
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    #@36
    .line 210
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    #@38
    .line 266
    new-instance v0, Landroidx/constraintlayout/helper/widget/Carousel$1;

    #@3a
    invoke-direct {v0, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    #@3d
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    #@3f
    .line 96
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@42
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
    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/4 p3, 0x0

    #@4
    .line 42
    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@6
    .line 43
    new-instance p3, Ljava/util/ArrayList;

    #@8
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    #@d
    const/4 p3, 0x0

    #@e
    .line 44
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    #@10
    .line 45
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@12
    const/4 v0, -0x1

    #@13
    .line 47
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    #@15
    .line 48
    iput-boolean p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    #@17
    .line 49
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    #@19
    .line 50
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    #@1b
    .line 51
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    #@1d
    .line 52
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    #@1f
    const v1, 0x3f666666    # 0.9f

    #@22
    .line 53
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    #@24
    .line 54
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    #@26
    const/4 p3, 0x4

    #@27
    .line 55
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    #@29
    const/4 p3, 0x1

    #@2a
    .line 60
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    #@2c
    const/high16 p3, 0x40000000    # 2.0f

    #@2e
    .line 61
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    #@30
    .line 62
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    #@32
    const/16 p3, 0xc8

    #@34
    .line 63
    iput p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    #@36
    .line 210
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    #@38
    .line 266
    new-instance p3, Landroidx/constraintlayout/helper/widget/Carousel$1;

    #@3a
    invoke-direct {p3, p0}, Landroidx/constraintlayout/helper/widget/Carousel$1;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    #@3d
    iput-object p3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    #@3f
    .line 101
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@42
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/motion/widget/MotionLayout;
    .registers 1

    #@0
    .line 39
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    return-object p0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/helper/widget/Carousel;)V
    .registers 1

    #@0
    .line 39
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->updateItems()V

    #@3
    return-void
.end method

.method static synthetic access$200(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .registers 1

    #@0
    .line 39
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@2
    return p0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/helper/widget/Carousel;)Landroidx/constraintlayout/helper/widget/Carousel$Adapter;
    .registers 1

    #@0
    .line 39
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@2
    return-object p0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .registers 1

    #@0
    .line 39
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    #@2
    return p0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/helper/widget/Carousel;)F
    .registers 1

    #@0
    .line 39
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    #@2
    return p0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/helper/widget/Carousel;)F
    .registers 1

    #@0
    .line 39
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    #@2
    return p0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/helper/widget/Carousel;)I
    .registers 1

    #@0
    .line 39
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    #@2
    return p0
.end method

.method private enableAllTransitions(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    #@0
    .line 242
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getDefinedTransitions()Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    .line 243
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1a

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@16
    .line 244
    invoke-virtual {v1, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-void
.end method

.method private enableTransition(IZ)Z
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
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-ne p1, v0, :cond_5

    #@4
    return v1

    #@5
    .line 252
    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@7
    if-nez v0, :cond_a

    #@9
    return v1

    #@a
    .line 255
    :cond_a
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@d
    move-result-object p1

    #@e
    if-nez p1, :cond_11

    #@10
    return v1

    #@11
    .line 259
    :cond_11
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->isEnabled()Z

    #@14
    move-result v0

    #@15
    if-ne p2, v0, :cond_18

    #@17
    return v1

    #@18
    .line 262
    :cond_18
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setEnabled(Z)V

    #@1b
    const/4 p1, 0x1

    #@1c
    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
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
    if-eqz p2, :cond_9d

    #@2
    .line 106
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Carousel:[I

    #@4
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object p1

    #@8
    .line 107
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@b
    move-result p2

    #@c
    const/4 v0, 0x0

    #@d
    :goto_d
    if-ge v0, p2, :cond_9a

    #@f
    .line 109
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@12
    move-result v1

    #@13
    .line 110
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_firstView:I

    #@15
    if-ne v1, v2, :cond_21

    #@17
    .line 111
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    #@19
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    #@1f
    goto/16 :goto_96

    #@21
    .line 112
    :cond_21
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_backwardTransition:I

    #@23
    if-ne v1, v2, :cond_2f

    #@25
    .line 113
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    #@27
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2a
    move-result v1

    #@2b
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    #@2d
    goto/16 :goto_96

    #@2f
    .line 114
    :cond_2f
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_forwardTransition:I

    #@31
    if-ne v1, v2, :cond_3c

    #@33
    .line 115
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    #@35
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@38
    move-result v1

    #@39
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    #@3b
    goto :goto_96

    #@3c
    .line 116
    :cond_3c
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_emptyViewsBehavior:I

    #@3e
    if-ne v1, v2, :cond_49

    #@40
    .line 117
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    #@42
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@45
    move-result v1

    #@46
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    #@48
    goto :goto_96

    #@49
    .line 118
    :cond_49
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_previousState:I

    #@4b
    if-ne v1, v2, :cond_56

    #@4d
    .line 119
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    #@4f
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@52
    move-result v1

    #@53
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    #@55
    goto :goto_96

    #@56
    .line 120
    :cond_56
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_nextState:I

    #@58
    if-ne v1, v2, :cond_63

    #@5a
    .line 121
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    #@5c
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@5f
    move-result v1

    #@60
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    #@62
    goto :goto_96

    #@63
    .line 122
    :cond_63
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_dampeningFactor:I

    #@65
    if-ne v1, v2, :cond_70

    #@67
    .line 123
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    #@69
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@6c
    move-result v1

    #@6d
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->dampening:F

    #@6f
    goto :goto_96

    #@70
    .line 124
    :cond_70
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUpMode:I

    #@72
    if-ne v1, v2, :cond_7d

    #@74
    .line 125
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    #@76
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@79
    move-result v1

    #@7a
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    #@7c
    goto :goto_96

    #@7d
    .line 126
    :cond_7d
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_touchUp_velocityThreshold:I

    #@7f
    if-ne v1, v2, :cond_8a

    #@81
    .line 127
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    #@83
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@86
    move-result v1

    #@87
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->velocityThreshold:F

    #@89
    goto :goto_96

    #@8a
    .line 128
    :cond_8a
    sget v2, Landroidx/constraintlayout/widget/R$styleable;->Carousel_carousel_infinite:I

    #@8c
    if-ne v1, v2, :cond_96

    #@8e
    .line 129
    iget-boolean v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    #@90
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@93
    move-result v1

    #@94
    iput-boolean v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    #@96
    :cond_96
    :goto_96
    add-int/lit8 v0, v0, 0x1

    #@98
    goto/16 :goto_d

    #@9a
    .line 132
    :cond_9a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@9d
    :cond_9d
    return-void
.end method

.method private updateItems()V
    .registers 9

    #@0
    .line 364
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 367
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@7
    if-nez v1, :cond_a

    #@9
    return-void

    #@a
    .line 370
    :cond_a
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_11

    #@10
    return-void

    #@11
    .line 376
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v0

    #@17
    const/4 v1, 0x0

    #@18
    move v2, v1

    #@19
    :goto_19
    if-ge v2, v0, :cond_bb

    #@1b
    .line 379
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroid/view/View;

    #@23
    .line 380
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@25
    add-int/2addr v4, v2

    #@26
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    #@28
    sub-int/2addr v4, v5

    #@29
    .line 381
    iget-boolean v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    #@2b
    if-eqz v5, :cond_99

    #@2d
    const/4 v5, 0x4

    #@2e
    if-gez v4, :cond_5e

    #@30
    .line 383
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    #@32
    if-eq v6, v5, :cond_38

    #@34
    .line 384
    invoke-direct {p0, v3, v6}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    #@37
    goto :goto_3b

    #@38
    .line 386
    :cond_38
    invoke-direct {p0, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    #@3b
    .line 388
    :goto_3b
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@3d
    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@40
    move-result v5

    #@41
    rem-int v5, v4, v5

    #@43
    if-nez v5, :cond_4c

    #@45
    .line 389
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@47
    invoke-interface {v4, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    #@4a
    goto/16 :goto_b7

    #@4c
    .line 391
    :cond_4c
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@4e
    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@51
    move-result v6

    #@52
    iget-object v7, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@54
    invoke-interface {v7}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@57
    move-result v7

    #@58
    rem-int/2addr v4, v7

    #@59
    add-int/2addr v6, v4

    #@5a
    invoke-interface {v5, v3, v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    #@5d
    goto :goto_b7

    #@5e
    .line 393
    :cond_5e
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@60
    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@63
    move-result v6

    #@64
    if-lt v4, v6, :cond_90

    #@66
    .line 394
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@68
    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@6b
    move-result v6

    #@6c
    if-ne v4, v6, :cond_70

    #@6e
    move v4, v1

    #@6f
    goto :goto_7f

    #@70
    .line 396
    :cond_70
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@72
    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@75
    move-result v6

    #@76
    if-le v4, v6, :cond_7f

    #@78
    .line 397
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@7a
    invoke-interface {v6}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@7d
    move-result v6

    #@7e
    rem-int/2addr v4, v6

    #@7f
    .line 399
    :cond_7f
    :goto_7f
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    #@81
    if-eq v6, v5, :cond_87

    #@83
    .line 400
    invoke-direct {p0, v3, v6}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    #@86
    goto :goto_8a

    #@87
    .line 402
    :cond_87
    invoke-direct {p0, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    #@8a
    .line 404
    :goto_8a
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@8c
    invoke-interface {v5, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    #@8f
    goto :goto_b7

    #@90
    .line 406
    :cond_90
    invoke-direct {p0, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    #@93
    .line 407
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@95
    invoke-interface {v5, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    #@98
    goto :goto_b7

    #@99
    :cond_99
    if-gez v4, :cond_a1

    #@9b
    .line 411
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    #@9d
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    #@a0
    goto :goto_b7

    #@a1
    .line 412
    :cond_a1
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@a3
    invoke-interface {v5}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@a6
    move-result v5

    #@a7
    if-lt v4, v5, :cond_af

    #@a9
    .line 413
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    #@ab
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    #@ae
    goto :goto_b7

    #@af
    .line 415
    :cond_af
    invoke-direct {p0, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    #@b2
    .line 416
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@b4
    invoke-interface {v5, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->populate(Landroid/view/View;I)V

    #@b7
    :goto_b7
    add-int/lit8 v2, v2, 0x1

    #@b9
    goto/16 :goto_19

    #@bb
    .line 421
    :cond_bb
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    #@bd
    const/4 v2, -0x1

    #@be
    if-eq v0, v2, :cond_cf

    #@c0
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@c2
    if-eq v0, v3, :cond_cf

    #@c4
    .line 422
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@c6
    new-instance v3, Landroidx/constraintlayout/helper/widget/Carousel$$ExternalSyntheticLambda0;

    #@c8
    invoke-direct {v3, p0}, Landroidx/constraintlayout/helper/widget/Carousel$$ExternalSyntheticLambda0;-><init>(Landroidx/constraintlayout/helper/widget/Carousel;)V

    #@cb
    invoke-virtual {v0, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->post(Ljava/lang/Runnable;)Z

    #@ce
    goto :goto_d5

    #@cf
    .line 430
    :cond_cf
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@d1
    if-ne v0, v3, :cond_d5

    #@d3
    .line 431
    iput v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    #@d5
    .line 434
    :cond_d5
    :goto_d5
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    #@d7
    if-eq v0, v2, :cond_118

    #@d9
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    #@db
    if-ne v0, v2, :cond_de

    #@dd
    goto :goto_118

    #@de
    .line 439
    :cond_de
    iget-boolean v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    #@e0
    if-eqz v0, :cond_e3

    #@e2
    return-void

    #@e3
    .line 443
    :cond_e3
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@e5
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@e8
    move-result v0

    #@e9
    .line 444
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@eb
    const/4 v3, 0x1

    #@ec
    if-nez v2, :cond_f4

    #@ee
    .line 445
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    #@f0
    invoke-direct {p0, v2, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    #@f3
    goto :goto_100

    #@f4
    .line 447
    :cond_f4
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    #@f6
    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    #@f9
    .line 448
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@fb
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    #@fd
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    #@100
    .line 450
    :goto_100
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@102
    sub-int/2addr v0, v3

    #@103
    if-ne v2, v0, :cond_10b

    #@105
    .line 451
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    #@107
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    #@10a
    goto :goto_117

    #@10b
    .line 453
    :cond_10b
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    #@10d
    invoke-direct {p0, v0, v3}, Landroidx/constraintlayout/helper/widget/Carousel;->enableTransition(IZ)Z

    #@110
    .line 454
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@112
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    #@114
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    #@117
    :goto_117
    return-void

    #@118
    :cond_118
    :goto_118
    const-string v0, "Carousel"

    #@11a
    const-string v1, "No backward or forward transitions defined for Carousel!"

    #@11c
    .line 435
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11f
    return-void
.end method

.method private updateViewVisibility(ILandroid/view/View;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "constraintSetId",
            "view",
            "visibility"
        }
    .end annotation

    #@0
    .line 346
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@5
    move-result-object p1

    #@6
    const/4 v0, 0x0

    #@7
    if-nez p1, :cond_a

    #@9
    return v0

    #@a
    .line 350
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    #@d
    move-result v1

    #@e
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    #@11
    move-result-object p1

    #@12
    if-nez p1, :cond_15

    #@14
    return v0

    #@15
    .line 354
    :cond_15
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    #@17
    const/4 v0, 0x1

    #@18
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    #@1a
    .line 359
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    #@1d
    return v0
.end method

.method private updateViewVisibility(Landroid/view/View;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "visibility"
        }
    .end annotation

    #@0
    .line 334
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return v1

    #@6
    .line 338
    :cond_6
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    #@9
    move-result-object v0

    #@a
    move v2, v1

    #@b
    .line 339
    :goto_b
    array-length v3, v0

    #@c
    if-ge v1, v3, :cond_18

    #@e
    .line 340
    aget v3, v0, v1

    #@10
    invoke-direct {p0, v3, p1, p2}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(ILandroid/view/View;I)Z

    #@13
    move-result v3

    #@14
    or-int/2addr v2, v3

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_b

    #@18
    :cond_18
    return v2
.end method


# virtual methods
.method public getCount()I
    .registers 2

    #@0
    .line 146
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 147
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

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

.method public getCurrentIndex()I
    .registers 2

    #@0
    .line 158
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@2
    return v0
.end method

.method public jumpToIndex(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    #@0
    .line 184
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getCount()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    #@9
    move-result p1

    #@a
    const/4 v0, 0x0

    #@b
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    #@e
    move-result p1

    #@f
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@11
    .line 185
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->refresh()V

    #@14
    return-void
.end method

.method synthetic lambda$updateItems$0$androidx-constraintlayout-helper-widget-Carousel()V
    .registers 4

    #@0
    .line 423
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    #@4
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    #@7
    .line 424
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    #@9
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@b
    if-ge v0, v1, :cond_17

    #@d
    .line 425
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@f
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    #@11
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    #@13
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    #@16
    goto :goto_20

    #@17
    .line 427
    :cond_17
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@19
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    #@1b
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    #@1d
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    #@20
    :goto_20
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 6

    #@0
    .line 296
    invoke-super {p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->onAttachedToWindow()V

    #@3
    .line 298
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getParent()Landroid/view/ViewParent;

    #@6
    move-result-object v0

    #@7
    instance-of v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@9
    if-eqz v0, :cond_4f

    #@b
    .line 299
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getParent()Landroid/view/ViewParent;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@11
    const/4 v1, 0x0

    #@12
    .line 303
    :goto_12
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mCount:I

    #@14
    if-ge v1, v2, :cond_2c

    #@16
    .line 304
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIds:[I

    #@18
    aget v2, v2, v1

    #@1a
    .line 305
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getViewById(I)Landroid/view/View;

    #@1d
    move-result-object v3

    #@1e
    .line 306
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->firstViewReference:I

    #@20
    if-ne v4, v2, :cond_24

    #@22
    .line 307
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->startIndex:I

    #@24
    .line 309
    :cond_24
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_12

    #@2c
    .line 311
    :cond_2c
    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2e
    .line 313
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->touchUpMode:I

    #@30
    const/4 v2, 0x2

    #@31
    if-ne v1, v2, :cond_4c

    #@33
    .line 314
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->forwardTransition:I

    #@35
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@38
    move-result-object v0

    #@39
    const/4 v1, 0x5

    #@3a
    if-eqz v0, :cond_3f

    #@3c
    .line 316
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setOnTouchUp(I)V

    #@3f
    .line 318
    :cond_3f
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@41
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->backwardTransition:I

    #@43
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getTransition(I)Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@46
    move-result-object v0

    #@47
    if-eqz v0, :cond_4c

    #@49
    .line 320
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->setOnTouchUp(I)V

    #@4c
    .line 323
    :cond_4c
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->updateItems()V

    #@4f
    :cond_4f
    return-void
.end method

.method public onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "startId",
            "endId",
            "progress"
        }
    .end annotation

    #@0
    .line 207
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mLastStartId:I

    #@2
    return-void
.end method

.method public onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "currentId"
        }
    .end annotation

    #@0
    .line 214
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@2
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    #@4
    .line 215
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    #@6
    if-ne p2, v0, :cond_d

    #@8
    add-int/lit8 p1, p1, 0x1

    #@a
    .line 216
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@c
    goto :goto_15

    #@d
    .line 217
    :cond_d
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    #@f
    if-ne p2, v0, :cond_15

    #@11
    add-int/lit8 p1, p1, -0x1

    #@13
    .line 218
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@15
    .line 220
    :cond_15
    :goto_15
    iget-boolean p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->infiniteCarousel:Z

    #@17
    const/4 p2, 0x0

    #@18
    if-eqz p1, :cond_35

    #@1a
    .line 221
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@1c
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@1e
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@21
    move-result v0

    #@22
    if-lt p1, v0, :cond_26

    #@24
    .line 222
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@26
    .line 224
    :cond_26
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@28
    if-gez p1, :cond_4f

    #@2a
    .line 225
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@2c
    invoke-interface {p1}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@2f
    move-result p1

    #@30
    add-int/lit8 p1, p1, -0x1

    #@32
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@34
    goto :goto_4f

    #@35
    .line 228
    :cond_35
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@37
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@39
    invoke-interface {v0}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@3c
    move-result v0

    #@3d
    if-lt p1, v0, :cond_49

    #@3f
    .line 229
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@41
    invoke-interface {p1}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@44
    move-result p1

    #@45
    add-int/lit8 p1, p1, -0x1

    #@47
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@49
    .line 231
    :cond_49
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@4b
    if-gez p1, :cond_4f

    #@4d
    .line 232
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@4f
    .line 236
    :cond_4f
    :goto_4f
    iget p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mPreviousIndex:I

    #@51
    iget p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@53
    if-eq p1, p2, :cond_5c

    #@55
    .line 237
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@57
    iget-object p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mUpdateRunnable:Ljava/lang/Runnable;

    #@59
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->post(Ljava/lang/Runnable;)Z

    #@5c
    :cond_5c
    return-void
.end method

.method public refresh()V
    .registers 6

    #@0
    .line 189
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

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
    if-ge v2, v0, :cond_26

    #@a
    .line 191
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mList:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Landroid/view/View;

    #@12
    .line 192
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@14
    invoke-interface {v4}, Landroidx/constraintlayout/helper/widget/Carousel$Adapter;->count()I

    #@17
    move-result v4

    #@18
    if-nez v4, :cond_20

    #@1a
    .line 193
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Carousel;->emptyViewBehavior:I

    #@1c
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    #@1f
    goto :goto_23

    #@20
    .line 195
    :cond_20
    invoke-direct {p0, v3, v1}, Landroidx/constraintlayout/helper/widget/Carousel;->updateViewVisibility(Landroid/view/View;I)Z

    #@23
    :goto_23
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_8

    #@26
    .line 198
    :cond_26
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@28
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->rebuildScene()V

    #@2b
    .line 199
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->updateItems()V

    #@2e
    return-void
.end method

.method public setAdapter(Landroidx/constraintlayout/helper/widget/Carousel$Adapter;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    #@0
    .line 137
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAdapter:Landroidx/constraintlayout/helper/widget/Carousel$Adapter;

    #@2
    return-void
.end method

.method public transitionToIndex(II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "delay"
        }
    .end annotation

    #@0
    .line 168
    invoke-virtual {p0}, Landroidx/constraintlayout/helper/widget/Carousel;->getCount()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v0

    #@a
    const/4 v1, 0x0

    #@b
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mTargetIndex:I

    #@11
    .line 169
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    #@14
    move-result p2

    #@15
    iput p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    #@17
    .line 170
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@19
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransitionDuration(I)V

    #@1c
    .line 171
    iget p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mIndex:I

    #@1e
    if-ge p1, p2, :cond_2a

    #@20
    .line 172
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@22
    iget p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->previousState:I

    #@24
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    #@26
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    #@29
    goto :goto_33

    #@2a
    .line 174
    :cond_2a
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2c
    iget p2, p0, Landroidx/constraintlayout/helper/widget/Carousel;->nextState:I

    #@2e
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Carousel;->mAnimateTargetDelay:I

    #@30
    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(II)V

    #@33
    :goto_33
    return-void
.end method
