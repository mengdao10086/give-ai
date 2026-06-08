.class public Landroidx/constraintlayout/motion/widget/ViewTransitionController;
.super Ljava/lang/Object;
.source "ViewTransitionController.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field animations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mRelatedViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field removeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;",
            ">;"
        }
    .end annotation
.end field

.field private viewTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/ViewTransition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    #@a
    const-string v0, "ViewTransitionController"

    #@c
    .line 39
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->TAG:Ljava/lang/String;

    #@e
    .line 193
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeList:Ljava/util/ArrayList;

    #@15
    .line 42
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@17
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;
    .registers 1

    #@0
    .line 35
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    return-object p0
.end method

.method private listenForSharedVariable(Landroidx/constraintlayout/motion/widget/ViewTransition;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewTransition",
            "isSet"
        }
    .end annotation

    #@0
    .line 238
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getSharedValueID()I

    #@3
    move-result v3

    #@4
    .line 239
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getSharedValue()I

    #@7
    move-result v5

    #@8
    .line 241
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->getSharedValues()Landroidx/constraintlayout/widget/SharedValues;

    #@b
    move-result-object v6

    #@c
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getSharedValueID()I

    #@f
    move-result v7

    #@10
    new-instance v8, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;

    #@12
    move-object v0, v8

    #@13
    move-object v1, p0

    #@14
    move-object v2, p1

    #@15
    move v4, p2

    #@16
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/ViewTransition;IZI)V

    #@19
    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/widget/SharedValues;->addListener(ILandroidx/constraintlayout/widget/SharedValues$SharedValuesListener;)V

    #@1c
    return-void
.end method

.method private varargs viewTransition(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "vt",
            "view"
        }
    .end annotation

    #@0
    .line 71
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    #@5
    move-result v4

    #@6
    .line 72
    iget v0, p1, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    #@8
    const/4 v1, 0x2

    #@9
    if-eq v0, v1, :cond_3b

    #@b
    const/4 v0, -0x1

    #@c
    if-ne v4, v0, :cond_29

    #@e
    .line 74
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->TAG:Ljava/lang/String;

    #@10
    new-instance p2, Ljava/lang/StringBuilder;

    #@12
    const-string v0, "No support for ViewTransition within transition yet. Currently: "

    #@14
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@19
    .line 75
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object p2

    #@21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object p2

    #@25
    .line 74
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    return-void

    #@29
    .line 78
    :cond_29
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2b
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@2e
    move-result-object v5

    #@2f
    if-nez v5, :cond_32

    #@31
    return-void

    #@32
    .line 82
    :cond_32
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@34
    move-object v1, p1

    #@35
    move-object v2, p0

    #@36
    move-object v6, p2

    #@37
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    #@3a
    goto :goto_44

    #@3b
    .line 84
    :cond_3b
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@3d
    const/4 v5, 0x0

    #@3e
    move-object v1, p1

    #@3f
    move-object v2, p0

    #@40
    move-object v6, p2

    #@41
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    #@44
    :goto_44
    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/motion/widget/ViewTransition;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewTransition"
        }
    .end annotation

    #@0
    .line 46
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    const/4 v0, 0x0

    #@6
    .line 47
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    #@8
    .line 49
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getStateTransition()I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x4

    #@d
    if-ne v0, v1, :cond_14

    #@f
    const/4 v0, 0x1

    #@10
    .line 50
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->listenForSharedVariable(Landroidx/constraintlayout/motion/widget/ViewTransition;Z)V

    #@13
    goto :goto_1f

    #@14
    .line 51
    :cond_14
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getStateTransition()I

    #@17
    move-result v0

    #@18
    const/4 v1, 0x5

    #@19
    if-ne v0, v1, :cond_1f

    #@1b
    const/4 v0, 0x0

    #@1c
    .line 52
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->listenForSharedVariable(Landroidx/constraintlayout/motion/widget/ViewTransition;Z)V

    #@1f
    :cond_1f
    :goto_1f
    return-void
.end method

.method addAnimation(Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    #@0
    .line 196
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 197
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    #@b
    .line 199
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method animate()V
    .registers 3

    #@0
    .line 210
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 213
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_19

    #@f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    #@15
    .line 214
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->mutate()V

    #@18
    goto :goto_9

    #@19
    .line 216
    :cond_19
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    #@1b
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeList:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    #@20
    .line 217
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeList:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@25
    .line 218
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_30

    #@2d
    const/4 v0, 0x0

    #@2e
    .line 219
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    #@30
    :cond_30
    return-void
.end method

.method applyViewTransition(ILandroidx/constraintlayout/motion/widget/MotionController;)Z
    .registers 6
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
    .line 228
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

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
    if-eqz v1, :cond_1f

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/constraintlayout/motion/widget/ViewTransition;

    #@12
    .line 229
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getId()I

    #@15
    move-result v2

    #@16
    if-ne v2, p1, :cond_6

    #@18
    .line 230
    iget-object p1, v1, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    #@1a
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addAllFrames(Landroidx/constraintlayout/motion/widget/MotionController;)V

    #@1d
    const/4 p1, 0x1

    #@1e
    return p1

    #@1f
    :cond_1f
    const/4 p1, 0x0

    #@20
    return p1
.end method

.method enableViewTransition(IZ)V
    .registers 6
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
    .line 89
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

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
    if-eqz v1, :cond_1b

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/constraintlayout/motion/widget/ViewTransition;

    #@12
    .line 90
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getId()I

    #@15
    move-result v2

    #@16
    if-ne v2, p1, :cond_6

    #@18
    .line 91
    invoke-virtual {v1, p2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->setEnabled(Z)V

    #@1b
    :cond_1b
    return-void
.end method

.method invalidate()V
    .registers 2

    #@0
    .line 224
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->invalidate()V

    #@5
    return-void
.end method

.method isViewTransitionEnabled(I)Z
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
    .line 98
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

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
    if-eqz v1, :cond_1d

    #@c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroidx/constraintlayout/motion/widget/ViewTransition;

    #@12
    .line 99
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getId()I

    #@15
    move-result v2

    #@16
    if-ne v2, p1, :cond_6

    #@18
    .line 100
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->isEnabled()Z

    #@1b
    move-result p1

    #@1c
    return p1

    #@1d
    :cond_1d
    const/4 p1, 0x0

    #@1e
    return p1
.end method

.method remove(I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    #@0
    .line 58
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

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
    const/4 v2, 0x0

    #@b
    if-eqz v1, :cond_1a

    #@d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroidx/constraintlayout/motion/widget/ViewTransition;

    #@13
    .line 59
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getId()I

    #@16
    move-result v3

    #@17
    if-ne v3, p1, :cond_6

    #@19
    goto :goto_1b

    #@1a
    :cond_1a
    move-object v1, v2

    #@1b
    :goto_1b
    if-eqz v1, :cond_24

    #@1d
    .line 65
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    #@1f
    .line 66
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    #@21
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@24
    :cond_24
    return-void
.end method

.method removeAnimation(Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    #@0
    .line 203
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->removeList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method touchEvent(Landroid/view/MotionEvent;)V
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    #@0
    move-object/from16 v6, p0

    #@2
    .line 141
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@4
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    #@7
    move-result v7

    #@8
    const/4 v0, -0x1

    #@9
    if-ne v7, v0, :cond_c

    #@b
    return-void

    #@c
    .line 145
    :cond_c
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    #@e
    const/4 v8, 0x0

    #@f
    if-nez v0, :cond_4a

    #@11
    .line 146
    new-instance v0, Ljava/util/HashSet;

    #@13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@16
    iput-object v0, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    #@18
    .line 147
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v0

    #@1e
    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_4a

    #@24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v1

    #@28
    check-cast v1, Landroidx/constraintlayout/motion/widget/ViewTransition;

    #@2a
    .line 148
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2c
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    #@2f
    move-result v2

    #@30
    move v3, v8

    #@31
    :goto_31
    if-ge v3, v2, :cond_1e

    #@33
    .line 150
    iget-object v4, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@35
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@38
    move-result-object v4

    #@39
    .line 151
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_47

    #@3f
    .line 152
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    #@42
    .line 154
    iget-object v5, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    #@44
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@47
    :cond_47
    add-int/lit8 v3, v3, 0x1

    #@49
    goto :goto_31

    #@4a
    .line 160
    :cond_4a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    #@4d
    move-result v9

    #@4e
    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    #@51
    move-result v10

    #@52
    .line 162
    new-instance v11, Landroid/graphics/Rect;

    #@54
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    #@57
    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    #@5a
    move-result v12

    #@5b
    .line 164
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    #@5d
    if-eqz v0, :cond_7b

    #@5f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@62
    move-result v0

    #@63
    if-nez v0, :cond_7b

    #@65
    .line 165
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->animations:Ljava/util/ArrayList;

    #@67
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@6a
    move-result-object v0

    #@6b
    :goto_6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@6e
    move-result v1

    #@6f
    if-eqz v1, :cond_7b

    #@71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@74
    move-result-object v1

    #@75
    check-cast v1, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    #@77
    .line 166
    invoke-virtual {v1, v12, v9, v10}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;->reactTo(IFF)V

    #@7a
    goto :goto_6b

    #@7b
    :cond_7b
    const/4 v13, 0x1

    #@7c
    if-eqz v12, :cond_81

    #@7e
    if-eq v12, v13, :cond_81

    #@80
    goto :goto_de

    #@81
    .line 173
    :cond_81
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@83
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    #@86
    move-result-object v14

    #@87
    .line 174
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    #@89
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8c
    move-result-object v15

    #@8d
    :cond_8d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    #@90
    move-result v0

    #@91
    if-eqz v0, :cond_de

    #@93
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@96
    move-result-object v0

    #@97
    move-object v5, v0

    #@98
    check-cast v5, Landroidx/constraintlayout/motion/widget/ViewTransition;

    #@9a
    .line 175
    invoke-virtual {v5, v12}, Landroidx/constraintlayout/motion/widget/ViewTransition;->supports(I)Z

    #@9d
    move-result v0

    #@9e
    if-eqz v0, :cond_8d

    #@a0
    .line 176
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mRelatedViews:Ljava/util/HashSet;

    #@a2
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@a5
    move-result-object v16

    #@a6
    :goto_a6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@a9
    move-result v0

    #@aa
    if-eqz v0, :cond_8d

    #@ac
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@af
    move-result-object v0

    #@b0
    check-cast v0, Landroid/view/View;

    #@b2
    .line 177
    invoke-virtual {v5, v0}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    #@b5
    move-result v1

    #@b6
    if-nez v1, :cond_b9

    #@b8
    goto :goto_a6

    #@b9
    .line 180
    :cond_b9
    invoke-virtual {v0, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    #@bc
    float-to-int v1, v9

    #@bd
    float-to-int v2, v10

    #@be
    .line 181
    invoke-virtual {v11, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    #@c1
    move-result v1

    #@c2
    if-eqz v1, :cond_d9

    #@c4
    .line 182
    iget-object v2, v6, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@c6
    new-array v4, v13, [Landroid/view/View;

    #@c8
    aput-object v0, v4, v8

    #@ca
    move-object v0, v5

    #@cb
    move-object/from16 v1, p0

    #@cd
    move v3, v7

    #@ce
    move-object/from16 v17, v4

    #@d0
    move-object v4, v14

    #@d1
    move-object/from16 v18, v5

    #@d3
    move-object/from16 v5, v17

    #@d5
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    #@d8
    goto :goto_db

    #@d9
    :cond_d9
    move-object/from16 v18, v5

    #@db
    :goto_db
    move-object/from16 v5, v18

    #@dd
    goto :goto_a6

    #@de
    :cond_de
    :goto_de
    return-void
.end method

.method varargs viewTransition(I[Landroid/view/View;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "views"
        }
    .end annotation

    #@0
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 115
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransitions:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x0

    #@c
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_47

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    check-cast v3, Landroidx/constraintlayout/motion/widget/ViewTransition;

    #@18
    .line 116
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getId()I

    #@1b
    move-result v4

    #@1c
    if-ne v4, p1, :cond_c

    #@1e
    .line 118
    array-length v2, p2

    #@1f
    const/4 v4, 0x0

    #@20
    move v5, v4

    #@21
    :goto_21
    if-ge v5, v2, :cond_31

    #@23
    aget-object v6, p2, v5

    #@25
    .line 119
    invoke-virtual {v3, v6}, Landroidx/constraintlayout/motion/widget/ViewTransition;->checkTags(Landroid/view/View;)Z

    #@28
    move-result v7

    #@29
    if-eqz v7, :cond_2e

    #@2b
    .line 120
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    :cond_2e
    add-int/lit8 v5, v5, 0x1

    #@30
    goto :goto_21

    #@31
    .line 123
    :cond_31
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@34
    move-result v2

    #@35
    if-nez v2, :cond_45

    #@37
    new-array v2, v4, [Landroid/view/View;

    #@39
    .line 124
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, [Landroid/view/View;

    #@3f
    invoke-direct {p0, v3, v2}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->viewTransition(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    #@42
    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@45
    :cond_45
    move-object v2, v3

    #@46
    goto :goto_c

    #@47
    :cond_47
    if-nez v2, :cond_50

    #@49
    .line 130
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->TAG:Ljava/lang/String;

    #@4b
    const-string p2, " Could not find ViewTransition"

    #@4d
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    :cond_50
    return-void
.end method
