.class public Landroidx/transition/TransitionSet;
.super Landroidx/transition/Transition;
.source "TransitionSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/TransitionSet$TransitionSetListener;
    }
.end annotation


# static fields
.field private static final FLAG_CHANGE_EPICENTER:I = 0x8

.field private static final FLAG_CHANGE_INTERPOLATOR:I = 0x1

.field private static final FLAG_CHANGE_PATH_MOTION:I = 0x4

.field private static final FLAG_CHANGE_PROPAGATION:I = 0x2

.field public static final ORDERING_SEQUENTIAL:I = 0x1

.field public static final ORDERING_TOGETHER:I


# instance fields
.field private mChangeFlags:I

.field mCurrentListeners:I

.field private mPlayTogether:Z

.field mStarted:Z

.field private mTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    .line 110
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    #@3
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@a
    const/4 v0, 0x1

    #@b
    .line 81
    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    #@d
    const/4 v0, 0x0

    #@e
    .line 84
    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->mStarted:Z

    #@10
    .line 88
    iput v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    #@12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    #@0
    .line 116
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@a
    const/4 v0, 0x1

    #@b
    .line 81
    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    #@d
    const/4 v0, 0x0

    #@e
    .line 84
    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->mStarted:Z

    #@10
    .line 88
    iput v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    #@12
    .line 117
    sget-object v1, Landroidx/transition/Styleable;->TRANSITION_SET:[I

    #@14
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@17
    move-result-object p1

    #@18
    .line 118
    check-cast p2, Landroid/content/res/XmlResourceParser;

    #@1a
    const-string v1, "transitionOrdering"

    #@1c
    invoke-static {p1, p2, v1, v0, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    #@1f
    move-result p2

    #@20
    .line 121
    invoke-virtual {p0, p2}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    #@23
    .line 122
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@26
    return-void
.end method

.method private addTransitionInternal(Landroidx/transition/Transition;)V
    .registers 3

    #@0
    .line 199
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 200
    iput-object p0, p1, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    #@7
    return-void
.end method

.method private setupStartEndListeners()V
    .registers 4

    #@0
    .line 418
    new-instance v0, Landroidx/transition/TransitionSet$TransitionSetListener;

    #@2
    invoke-direct {v0, p0}, Landroidx/transition/TransitionSet$TransitionSetListener;-><init>(Landroidx/transition/TransitionSet;)V

    #@5
    .line 419
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_1b

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Landroidx/transition/Transition;

    #@17
    .line 420
    invoke-virtual {v2, v0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@1a
    goto :goto_b

    #@1b
    .line 422
    :cond_1b
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v0

    #@21
    iput v0, p0, Landroidx/transition/TransitionSet;->mCurrentListeners:I

    #@23
    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .registers 2

    #@0
    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/TransitionSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/TransitionSet;
    .registers 2

    #@0
    .line 307
    invoke-super {p0, p1}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/transition/TransitionSet;

    #@6
    return-object p1
.end method

.method public bridge synthetic addTarget(I)Landroidx/transition/Transition;
    .registers 2

    #@0
    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->addTarget(I)Landroidx/transition/TransitionSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .registers 2

    #@0
    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->addTarget(Landroid/view/View;)Landroidx/transition/TransitionSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .registers 2

    #@0
    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->addTarget(Ljava/lang/Class;)Landroidx/transition/TransitionSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic addTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .registers 2

    #@0
    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->addTarget(Ljava/lang/String;)Landroidx/transition/TransitionSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public addTarget(I)Landroidx/transition/TransitionSet;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 280
    :goto_1
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_17

    #@9
    .line 281
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->addTarget(I)Landroidx/transition/Transition;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    .line 283
    :cond_17
    invoke-super {p0, p1}, Landroidx/transition/Transition;->addTarget(I)Landroidx/transition/Transition;

    #@1a
    move-result-object p1

    #@1b
    check-cast p1, Landroidx/transition/TransitionSet;

    #@1d
    return-object p1
.end method

.method public addTarget(Landroid/view/View;)Landroidx/transition/TransitionSet;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 271
    :goto_1
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_17

    #@9
    .line 272
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    .line 274
    :cond_17
    invoke-super {p0, p1}, Landroidx/transition/Transition;->addTarget(Landroid/view/View;)Landroidx/transition/Transition;

    #@1a
    move-result-object p1

    #@1b
    check-cast p1, Landroidx/transition/TransitionSet;

    #@1d
    return-object p1
.end method

.method public addTarget(Ljava/lang/Class;)Landroidx/transition/TransitionSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/transition/TransitionSet;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 298
    :goto_1
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_17

    #@9
    .line 299
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    .line 301
    :cond_17
    invoke-super {p0, p1}, Landroidx/transition/Transition;->addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;

    #@1a
    move-result-object p1

    #@1b
    check-cast p1, Landroidx/transition/TransitionSet;

    #@1d
    return-object p1
.end method

.method public addTarget(Ljava/lang/String;)Landroidx/transition/TransitionSet;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 289
    :goto_1
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_17

    #@9
    .line 290
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->addTarget(Ljava/lang/String;)Landroidx/transition/Transition;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    .line 292
    :cond_17
    invoke-super {p0, p1}, Landroidx/transition/Transition;->addTarget(Ljava/lang/String;)Landroidx/transition/Transition;

    #@1a
    move-result-object p1

    #@1b
    check-cast p1, Landroidx/transition/TransitionSet;

    #@1d
    return-object p1
.end method

.method public addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;
    .registers 6

    #@0
    .line 179
    invoke-direct {p0, p1}, Landroidx/transition/TransitionSet;->addTransitionInternal(Landroidx/transition/Transition;)V

    #@3
    .line 180
    iget-wide v0, p0, Landroidx/transition/TransitionSet;->mDuration:J

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-ltz v0, :cond_10

    #@b
    .line 181
    iget-wide v0, p0, Landroidx/transition/TransitionSet;->mDuration:J

    #@d
    invoke-virtual {p1, v0, v1}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    #@10
    .line 183
    :cond_10
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    #@12
    and-int/lit8 v0, v0, 0x1

    #@14
    if-eqz v0, :cond_1d

    #@16
    .line 184
    invoke-virtual {p0}, Landroidx/transition/TransitionSet;->getInterpolator()Landroid/animation/TimeInterpolator;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    #@1d
    .line 186
    :cond_1d
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    #@1f
    and-int/lit8 v0, v0, 0x2

    #@21
    if-eqz v0, :cond_2a

    #@23
    .line 187
    invoke-virtual {p0}, Landroidx/transition/TransitionSet;->getPropagation()Landroidx/transition/TransitionPropagation;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    #@2a
    .line 189
    :cond_2a
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    #@2c
    and-int/lit8 v0, v0, 0x4

    #@2e
    if-eqz v0, :cond_37

    #@30
    .line 190
    invoke-virtual {p0}, Landroidx/transition/TransitionSet;->getPathMotion()Landroidx/transition/PathMotion;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    #@37
    .line 192
    :cond_37
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    #@39
    and-int/lit8 v0, v0, 0x8

    #@3b
    if-eqz v0, :cond_44

    #@3d
    .line 193
    invoke-virtual {p0}, Landroidx/transition/TransitionSet;->getEpicenterCallback()Landroidx/transition/Transition$EpicenterCallback;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {p1, v0}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    #@44
    :cond_44
    return-object p0
.end method

.method protected cancel()V
    .registers 4

    #@0
    .line 581
    invoke-super {p0}, Landroidx/transition/Transition;->cancel()V

    #@3
    .line 582
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

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
    .line 584
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroidx/transition/Transition;

    #@14
    invoke-virtual {v2}, Landroidx/transition/Transition;->cancel()V

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-void
.end method

.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .registers 5

    #@0
    .line 536
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    invoke-virtual {p0, v0}, Landroidx/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_2b

    #@8
    .line 537
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2b

    #@14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroidx/transition/Transition;

    #@1a
    .line 538
    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@1c
    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_e

    #@22
    .line 539
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    #@25
    .line 540
    iget-object v2, p1, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_e

    #@2b
    :cond_2b
    return-void
.end method

.method capturePropagationValues(Landroidx/transition/TransitionValues;)V
    .registers 5

    #@0
    .line 548
    invoke-super {p0, p1}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    #@3
    .line 549
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

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
    .line 551
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroidx/transition/Transition;

    #@14
    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .registers 5

    #@0
    .line 524
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@2
    invoke-virtual {p0, v0}, Landroidx/transition/TransitionSet;->isValidTarget(Landroid/view/View;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_2b

    #@8
    .line 525
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v0

    #@e
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_2b

    #@14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroidx/transition/Transition;

    #@1a
    .line 526
    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    #@1c
    invoke-virtual {v1, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_e

    #@22
    .line 527
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    #@25
    .line 528
    iget-object v2, p1, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    goto :goto_e

    #@2b
    :cond_2b
    return-void
.end method

.method public clone()Landroidx/transition/Transition;
    .registers 5

    #@0
    .line 649
    invoke-super {p0}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroidx/transition/TransitionSet;

    #@6
    .line 650
    new-instance v1, Ljava/util/ArrayList;

    #@8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v1, v0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@d
    .line 651
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v1

    #@13
    const/4 v2, 0x0

    #@14
    :goto_14
    if-ge v2, v1, :cond_28

    #@16
    .line 653
    iget-object v3, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroidx/transition/Transition;

    #@1e
    invoke-virtual {v3}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    #@21
    move-result-object v3

    #@22
    invoke-direct {v0, v3}, Landroidx/transition/TransitionSet;->addTransitionInternal(Landroidx/transition/Transition;)V

    #@25
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_14

    #@28
    :cond_28
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
    .line 62
    invoke-virtual {p0}, Landroidx/transition/TransitionSet;->clone()Landroidx/transition/Transition;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 18
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
    move-object v0, p0

    #@1
    .line 466
    invoke-virtual {p0}, Landroidx/transition/TransitionSet;->getStartDelay()J

    #@4
    move-result-wide v1

    #@5
    .line 467
    iget-object v3, v0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v3

    #@b
    const/4 v4, 0x0

    #@c
    :goto_c
    if-ge v4, v3, :cond_40

    #@e
    .line 469
    iget-object v5, v0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v5

    #@14
    move-object v6, v5

    #@15
    check-cast v6, Landroidx/transition/Transition;

    #@17
    const-wide/16 v7, 0x0

    #@19
    cmp-long v5, v1, v7

    #@1b
    if-lez v5, :cond_33

    #@1d
    .line 472
    iget-boolean v5, v0, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    #@1f
    if-nez v5, :cond_23

    #@21
    if-nez v4, :cond_33

    #@23
    .line 473
    :cond_23
    invoke-virtual {v6}, Landroidx/transition/Transition;->getStartDelay()J

    #@26
    move-result-wide v9

    #@27
    cmp-long v5, v9, v7

    #@29
    if-lez v5, :cond_30

    #@2b
    add-long/2addr v9, v1

    #@2c
    .line 475
    invoke-virtual {v6, v9, v10}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    #@2f
    goto :goto_33

    #@30
    .line 477
    :cond_30
    invoke-virtual {v6, v1, v2}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    #@33
    :cond_33
    :goto_33
    move-object v7, p1

    #@34
    move-object v8, p2

    #@35
    move-object v9, p3

    #@36
    move-object/from16 v10, p4

    #@38
    move-object/from16 v11, p5

    #@3a
    .line 480
    invoke-virtual/range {v6 .. v11}, Landroidx/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    #@3d
    add-int/lit8 v4, v4, 0x1

    #@3f
    goto :goto_c

    #@40
    :cond_40
    return-void
.end method

.method public excludeTarget(IZ)Landroidx/transition/Transition;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 367
    :goto_1
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_17

    #@9
    .line 368
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/transition/Transition;

    #@11
    invoke-virtual {v1, p1, p2}, Landroidx/transition/Transition;->excludeTarget(IZ)Landroidx/transition/Transition;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    .line 370
    :cond_17
    invoke-super {p0, p1, p2}, Landroidx/transition/Transition;->excludeTarget(IZ)Landroidx/transition/Transition;

    #@1a
    move-result-object p1

    #@1b
    return-object p1
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroidx/transition/Transition;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 349
    :goto_1
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_17

    #@9
    .line 350
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/transition/Transition;

    #@11
    invoke-virtual {v1, p1, p2}, Landroidx/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroidx/transition/Transition;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    .line 352
    :cond_17
    invoke-super {p0, p1, p2}, Landroidx/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroidx/transition/Transition;

    #@1a
    move-result-object p1

    #@1b
    return-object p1
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroidx/transition/Transition;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 376
    :goto_1
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_17

    #@9
    .line 377
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/transition/Transition;

    #@11
    invoke-virtual {v1, p1, p2}, Landroidx/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    .line 379
    :cond_17
    invoke-super {p0, p1, p2}, Landroidx/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;

    #@1a
    move-result-object p1

    #@1b
    return-object p1
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 358
    :goto_1
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_17

    #@9
    .line 359
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/transition/Transition;

    #@11
    invoke-virtual {v1, p1, p2}, Landroidx/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    .line 361
    :cond_17
    invoke-super {p0, p1, p2}, Landroidx/transition/Transition;->excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;

    #@1a
    move-result-object p1

    #@1b
    return-object p1
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .registers 5

    #@0
    .line 592
    invoke-super {p0, p1}, Landroidx/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    #@3
    .line 593
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

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
    .line 595
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroidx/transition/Transition;

    #@14
    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->forceToEnd(Landroid/view/ViewGroup;)V

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-void
.end method

.method public getOrdering()I
    .registers 2

    #@0
    .line 158
    iget-boolean v0, p0, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    #@2
    xor-int/lit8 v0, v0, 0x1

    #@4
    return v0
.end method

.method public getTransitionAt(I)Landroidx/transition/Transition;
    .registers 3

    #@0
    if-ltz p1, :cond_14

    #@2
    .line 223
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_b

    #@a
    goto :goto_14

    #@b
    .line 226
    :cond_b
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object p1

    #@11
    check-cast p1, Landroidx/transition/Transition;

    #@13
    return-object p1

    #@14
    :cond_14
    :goto_14
    const/4 p1, 0x0

    #@15
    return-object p1
.end method

.method public getTransitionCount()I
    .registers 2

    #@0
    .line 211
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public pause(Landroid/view/View;)V
    .registers 5

    #@0
    .line 559
    invoke-super {p0, p1}, Landroidx/transition/Transition;->pause(Landroid/view/View;)V

    #@3
    .line 560
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

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
    .line 562
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroidx/transition/Transition;

    #@14
    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->pause(Landroid/view/View;)V

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-void
.end method

.method public bridge synthetic removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .registers 2

    #@0
    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/TransitionSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/TransitionSet;
    .registers 2

    #@0
    .line 385
    invoke-super {p0, p1}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/transition/TransitionSet;

    #@6
    return-object p1
.end method

.method public bridge synthetic removeTarget(I)Landroidx/transition/Transition;
    .registers 2

    #@0
    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->removeTarget(I)Landroidx/transition/TransitionSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .registers 2

    #@0
    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->removeTarget(Landroid/view/View;)Landroidx/transition/TransitionSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic removeTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .registers 2

    #@0
    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->removeTarget(Ljava/lang/Class;)Landroidx/transition/TransitionSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public bridge synthetic removeTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .registers 2

    #@0
    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->removeTarget(Ljava/lang/String;)Landroidx/transition/TransitionSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public removeTarget(I)Landroidx/transition/TransitionSet;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 313
    :goto_1
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_17

    #@9
    .line 314
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->removeTarget(I)Landroidx/transition/Transition;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    .line 316
    :cond_17
    invoke-super {p0, p1}, Landroidx/transition/Transition;->removeTarget(I)Landroidx/transition/Transition;

    #@1a
    move-result-object p1

    #@1b
    check-cast p1, Landroidx/transition/TransitionSet;

    #@1d
    return-object p1
.end method

.method public removeTarget(Landroid/view/View;)Landroidx/transition/TransitionSet;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 322
    :goto_1
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_17

    #@9
    .line 323
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)Landroidx/transition/Transition;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    .line 325
    :cond_17
    invoke-super {p0, p1}, Landroidx/transition/Transition;->removeTarget(Landroid/view/View;)Landroidx/transition/Transition;

    #@1a
    move-result-object p1

    #@1b
    check-cast p1, Landroidx/transition/TransitionSet;

    #@1d
    return-object p1
.end method

.method public removeTarget(Ljava/lang/Class;)Landroidx/transition/TransitionSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/transition/TransitionSet;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 331
    :goto_1
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_17

    #@9
    .line 332
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroidx/transition/Transition;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    .line 334
    :cond_17
    invoke-super {p0, p1}, Landroidx/transition/Transition;->removeTarget(Ljava/lang/Class;)Landroidx/transition/Transition;

    #@1a
    move-result-object p1

    #@1b
    check-cast p1, Landroidx/transition/TransitionSet;

    #@1d
    return-object p1
.end method

.method public removeTarget(Ljava/lang/String;)Landroidx/transition/TransitionSet;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 340
    :goto_1
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_17

    #@9
    .line 341
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroidx/transition/Transition;

    #@11
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->removeTarget(Ljava/lang/String;)Landroidx/transition/Transition;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    .line 343
    :cond_17
    invoke-super {p0, p1}, Landroidx/transition/Transition;->removeTarget(Ljava/lang/String;)Landroidx/transition/Transition;

    #@1a
    move-result-object p1

    #@1b
    check-cast p1, Landroidx/transition/TransitionSet;

    #@1d
    return-object p1
.end method

.method public removeTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;
    .registers 3

    #@0
    .line 407
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    const/4 v0, 0x0

    #@6
    .line 408
    iput-object v0, p1, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    #@8
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .registers 5

    #@0
    .line 570
    invoke-super {p0, p1}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    #@3
    .line 571
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

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
    .line 573
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroidx/transition/Transition;

    #@14
    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->resume(Landroid/view/View;)V

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-void
.end method

.method protected runAnimators()V
    .registers 5

    #@0
    .line 491
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_f

    #@8
    .line 492
    invoke-virtual {p0}, Landroidx/transition/TransitionSet;->start()V

    #@b
    .line 493
    invoke-virtual {p0}, Landroidx/transition/TransitionSet;->end()V

    #@e
    return-void

    #@f
    .line 496
    :cond_f
    invoke-direct {p0}, Landroidx/transition/TransitionSet;->setupStartEndListeners()V

    #@12
    .line 497
    iget-boolean v0, p0, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    #@14
    if-nez v0, :cond_4b

    #@16
    const/4 v0, 0x1

    #@17
    .line 500
    :goto_17
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v1

    #@1d
    if-ge v0, v1, :cond_3c

    #@1f
    .line 501
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@21
    add-int/lit8 v2, v0, -0x1

    #@23
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v1

    #@27
    check-cast v1, Landroidx/transition/Transition;

    #@29
    .line 502
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v2

    #@2f
    check-cast v2, Landroidx/transition/Transition;

    #@31
    .line 503
    new-instance v3, Landroidx/transition/TransitionSet$1;

    #@33
    invoke-direct {v3, p0, v2}, Landroidx/transition/TransitionSet$1;-><init>(Landroidx/transition/TransitionSet;Landroidx/transition/Transition;)V

    #@36
    invoke-virtual {v1, v3}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    #@39
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_17

    #@3c
    .line 511
    :cond_3c
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@3e
    const/4 v1, 0x0

    #@3f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Landroidx/transition/Transition;

    #@45
    if-eqz v0, :cond_61

    #@47
    .line 513
    invoke-virtual {v0}, Landroidx/transition/Transition;->runAnimators()V

    #@4a
    goto :goto_61

    #@4b
    .line 516
    :cond_4b
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@50
    move-result-object v0

    #@51
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v1

    #@55
    if-eqz v1, :cond_61

    #@57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v1

    #@5b
    check-cast v1, Landroidx/transition/Transition;

    #@5d
    .line 517
    invoke-virtual {v1}, Landroidx/transition/Transition;->runAnimators()V

    #@60
    goto :goto_51

    #@61
    :cond_61
    :goto_61
    return-void
.end method

.method setCanRemoveViews(Z)V
    .registers 5

    #@0
    .line 611
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setCanRemoveViews(Z)V

    #@3
    .line 612
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

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
    .line 614
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroidx/transition/Transition;

    #@14
    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->setCanRemoveViews(Z)V

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroidx/transition/Transition;
    .registers 3

    #@0
    .line 62
    invoke-virtual {p0, p1, p2}, Landroidx/transition/TransitionSet;->setDuration(J)Landroidx/transition/TransitionSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setDuration(J)Landroidx/transition/TransitionSet;
    .registers 7

    #@0
    .line 239
    invoke-super {p0, p1, p2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    #@3
    .line 240
    iget-wide v0, p0, Landroidx/transition/TransitionSet;->mDuration:J

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-ltz v0, :cond_24

    #@b
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@d
    if-eqz v0, :cond_24

    #@f
    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v0

    #@13
    const/4 v1, 0x0

    #@14
    :goto_14
    if-ge v1, v0, :cond_24

    #@16
    .line 243
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Landroidx/transition/Transition;

    #@1e
    invoke-virtual {v2, p1, p2}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    #@21
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_14

    #@24
    :cond_24
    return-object p0
.end method

.method public setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V
    .registers 5

    #@0
    .line 630
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    #@3
    .line 631
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    #@5
    or-int/lit8 v0, v0, 0x8

    #@7
    iput v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    #@9
    .line 632
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x0

    #@10
    :goto_10
    if-ge v1, v0, :cond_20

    #@12
    .line 634
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroidx/transition/Transition;

    #@1a
    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_10

    #@20
    :cond_20
    return-void
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;
    .registers 2

    #@0
    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;
    .registers 5

    #@0
    .line 258
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    #@2
    or-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    #@6
    .line 259
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@8
    if-eqz v0, :cond_1f

    #@a
    .line 260
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x0

    #@f
    :goto_f
    if-ge v1, v0, :cond_1f

    #@11
    .line 262
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroidx/transition/Transition;

    #@19
    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    #@1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_f

    #@1f
    .line 265
    :cond_1f
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    #@22
    move-result-object p1

    #@23
    check-cast p1, Landroidx/transition/TransitionSet;

    #@25
    return-object p1
.end method

.method public setOrdering(I)Landroidx/transition/TransitionSet;
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    if-eqz p1, :cond_1e

    #@3
    if-ne p1, v0, :cond_9

    #@5
    const/4 p1, 0x0

    #@6
    .line 137
    iput-boolean p1, p0, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    #@8
    goto :goto_20

    #@9
    .line 143
    :cond_9
    new-instance v0, Landroid/util/AndroidRuntimeException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    const-string v2, "Invalid parameter for TransitionSet ordering: "

    #@f
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object p1

    #@16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object p1

    #@1a
    invoke-direct {v0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 140
    :cond_1e
    iput-boolean v0, p0, Landroidx/transition/TransitionSet;->mPlayTogether:Z

    #@20
    :goto_20
    return-object p0
.end method

.method public setPathMotion(Landroidx/transition/PathMotion;)V
    .registers 4

    #@0
    .line 390
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    #@3
    .line 391
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    #@5
    or-int/lit8 v0, v0, 0x4

    #@7
    iput v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    #@9
    .line 392
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    if-eqz v0, :cond_24

    #@d
    const/4 v0, 0x0

    #@e
    .line 393
    :goto_e
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v1

    #@14
    if-ge v0, v1, :cond_24

    #@16
    .line 394
    iget-object v1, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Landroidx/transition/Transition;

    #@1e
    invoke-virtual {v1, p1}, Landroidx/transition/Transition;->setPathMotion(Landroidx/transition/PathMotion;)V

    #@21
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_e

    #@24
    :cond_24
    return-void
.end method

.method public setPropagation(Landroidx/transition/TransitionPropagation;)V
    .registers 5

    #@0
    .line 620
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    #@3
    .line 621
    iget v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    #@5
    or-int/lit8 v0, v0, 0x2

    #@7
    iput v0, p0, Landroidx/transition/TransitionSet;->mChangeFlags:I

    #@9
    .line 622
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x0

    #@10
    :goto_10
    if-ge v1, v0, :cond_20

    #@12
    .line 624
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroidx/transition/Transition;

    #@1a
    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->setPropagation(Landroidx/transition/TransitionPropagation;)V

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_10

    #@20
    :cond_20
    return-void
.end method

.method bridge synthetic setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/Transition;
    .registers 2

    #@0
    .line 62
    invoke-virtual {p0, p1}, Landroidx/transition/TransitionSet;->setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/TransitionSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/TransitionSet;
    .registers 5

    #@0
    .line 601
    invoke-super {p0, p1}, Landroidx/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/Transition;

    #@3
    .line 602
    iget-object v0, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

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
    .line 604
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroidx/transition/Transition;

    #@14
    invoke-virtual {v2, p1}, Landroidx/transition/Transition;->setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/Transition;

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-object p0
.end method

.method public bridge synthetic setStartDelay(J)Landroidx/transition/Transition;
    .registers 3

    #@0
    .line 62
    invoke-virtual {p0, p1, p2}, Landroidx/transition/TransitionSet;->setStartDelay(J)Landroidx/transition/TransitionSet;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public setStartDelay(J)Landroidx/transition/TransitionSet;
    .registers 3

    #@0
    .line 252
    invoke-super {p0, p1, p2}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    #@3
    move-result-object p1

    #@4
    check-cast p1, Landroidx/transition/TransitionSet;

    #@6
    return-object p1
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    #@0
    .line 640
    invoke-super {p0, p1}, Landroidx/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    .line 641
    :goto_5
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_46

    #@d
    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string v2, "\n"

    #@18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    iget-object v2, p0, Landroidx/transition/TransitionSet;->mTransitions:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Landroidx/transition/Transition;

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string v4, "  "

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v2, v3}, Landroidx/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    add-int/lit8 v1, v1, 0x1

    #@45
    goto :goto_5

    #@46
    :cond_46
    return-object v0
.end method
