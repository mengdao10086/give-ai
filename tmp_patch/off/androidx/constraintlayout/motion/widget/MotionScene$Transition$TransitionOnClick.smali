.class public Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;
.super Ljava/lang/Object;
.source "MotionScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionScene$Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionOnClick"
.end annotation


# static fields
.field public static final ANIM_TOGGLE:I = 0x11

.field public static final ANIM_TO_END:I = 0x1

.field public static final ANIM_TO_START:I = 0x10

.field public static final JUMP_TO_END:I = 0x100

.field public static final JUMP_TO_START:I = 0x1000


# instance fields
.field mMode:I

.field mTargetId:I

.field private final mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "transition",
            "parser"
        }
    .end annotation

    #@0
    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 756
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    #@6
    const/16 v0, 0x11

    #@8
    .line 757
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    #@a
    .line 765
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    .line 766
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@f
    move-result-object p2

    #@10
    sget-object p3, Landroidx/constraintlayout/widget/R$styleable;->OnClick:[I

    #@12
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@15
    move-result-object p1

    #@16
    .line 767
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@19
    move-result p2

    #@1a
    const/4 p3, 0x0

    #@1b
    :goto_1b
    if-ge p3, p2, :cond_3d

    #@1d
    .line 769
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@20
    move-result v0

    #@21
    .line 770
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->OnClick_targetId:I

    #@23
    if-ne v0, v1, :cond_2e

    #@25
    .line 771
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    #@27
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    #@2d
    goto :goto_3a

    #@2e
    .line 772
    :cond_2e
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->OnClick_clickAction:I

    #@30
    if-ne v0, v1, :cond_3a

    #@32
    .line 773
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    #@34
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@37
    move-result v0

    #@38
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    #@3a
    :cond_3a
    :goto_3a
    add-int/lit8 p3, p3, 0x1

    #@3c
    goto :goto_1b

    #@3d
    .line 776
    :cond_3d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@40
    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "transition",
            "id",
            "action"
        }
    .end annotation

    #@0
    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 780
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@5
    .line 781
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    #@7
    .line 782
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    #@9
    return-void
.end method


# virtual methods
.method public addOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/motion/widget/MotionScene$Transition;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "currentState",
            "transition"
        }
    .end annotation

    #@0
    .line 786
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_6

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object p1

    #@a
    :goto_a
    if-nez p1, :cond_23

    #@c
    .line 788
    new-instance p1, Ljava/lang/StringBuilder;

    #@e
    const-string p2, "OnClick could not find id "

    #@10
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    iget p2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    #@15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object p1

    #@1d
    const-string p2, "MotionScene"

    #@1f
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    return-void

    #@23
    .line 791
    :cond_23
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I
    invoke-static {p3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@26
    move-result v0

    #@27
    .line 792
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {p3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@2a
    move-result p3

    #@2b
    if-ne v0, v1, :cond_31

    #@2d
    .line 794
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@30
    return-void

    #@31
    .line 798
    :cond_31
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    #@33
    and-int/lit8 v2, v1, 0x1

    #@35
    const/4 v3, 0x0

    #@36
    const/4 v4, 0x1

    #@37
    if-eqz v2, :cond_3d

    #@39
    if-ne p2, v0, :cond_3d

    #@3b
    move v2, v4

    #@3c
    goto :goto_3e

    #@3d
    :cond_3d
    move v2, v3

    #@3e
    :goto_3e
    and-int/lit16 v5, v1, 0x100

    #@40
    if-eqz v5, :cond_46

    #@42
    if-ne p2, v0, :cond_46

    #@44
    move v5, v4

    #@45
    goto :goto_47

    #@46
    :cond_46
    move v5, v3

    #@47
    :goto_47
    or-int/2addr v2, v5

    #@48
    and-int/lit8 v5, v1, 0x1

    #@4a
    if-eqz v5, :cond_50

    #@4c
    if-ne p2, v0, :cond_50

    #@4e
    move v0, v4

    #@4f
    goto :goto_51

    #@50
    :cond_50
    move v0, v3

    #@51
    :goto_51
    or-int/2addr v0, v2

    #@52
    and-int/lit8 v2, v1, 0x10

    #@54
    if-eqz v2, :cond_5a

    #@56
    if-ne p2, p3, :cond_5a

    #@58
    move v2, v4

    #@59
    goto :goto_5b

    #@5a
    :cond_5a
    move v2, v3

    #@5b
    :goto_5b
    or-int/2addr v0, v2

    #@5c
    and-int/lit16 v1, v1, 0x1000

    #@5e
    if-eqz v1, :cond_63

    #@60
    if-ne p2, p3, :cond_63

    #@62
    move v3, v4

    #@63
    :cond_63
    or-int p2, v0, v3

    #@65
    if-eqz p2, :cond_6a

    #@67
    .line 805
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@6a
    :cond_6a
    return-void
.end method

.method isTransitionViable(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroidx/constraintlayout/motion/widget/MotionLayout;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "current",
            "tl"
        }
    .end annotation

    #@0
    .line 822
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, p1, :cond_6

    #@5
    return v1

    #@6
    .line 825
    :cond_6
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@9
    move-result p1

    #@a
    .line 826
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@f
    move-result v0

    #@10
    const/4 v2, -0x1

    #@11
    const/4 v3, 0x0

    #@12
    if-ne v0, v2, :cond_1b

    #@14
    .line 828
    iget p2, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@16
    if-eq p2, p1, :cond_19

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move v1, v3

    #@1a
    :goto_1a
    return v1

    #@1b
    .line 830
    :cond_1b
    iget v2, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@1d
    if-eq v2, v0, :cond_25

    #@1f
    iget p2, p2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@21
    if-ne p2, p1, :cond_24

    #@23
    goto :goto_25

    #@24
    :cond_24
    move v1, v3

    #@25
    :cond_25
    :goto_25
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    .line 836
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mMotionScene:Landroidx/constraintlayout/motion/widget/MotionScene;
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;

    #@5
    move-result-object p1

    #@6
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionScene;->access$700(Landroidx/constraintlayout/motion/widget/MotionScene;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@9
    move-result-object p1

    #@a
    .line 837
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->isInteractionEnabled()Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_11

    #@10
    return-void

    #@11
    .line 840
    :cond_11
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@13
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$100(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@16
    move-result v0

    #@17
    const/4 v1, -0x1

    #@18
    if-ne v0, v1, :cond_4a

    #@1a
    .line 841
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    #@1d
    move-result v0

    #@1e
    if-ne v0, v1, :cond_2a

    #@20
    .line 843
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@22
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@25
    move-result v0

    #@26
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToState(I)V

    #@29
    return-void

    #@2a
    .line 846
    :cond_2a
    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2c
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@2e
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mMotionScene:Landroidx/constraintlayout/motion/widget/MotionScene;
    invoke-static {v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;

    #@31
    move-result-object v2

    #@32
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@34
    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(Landroidx/constraintlayout/motion/widget/MotionScene;Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@37
    .line 847
    # setter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetStart:I
    invoke-static {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$102(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I

    #@3a
    .line 848
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@3c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$000(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)I

    #@3f
    move-result v0

    #@40
    # setter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mConstraintSetEnd:I
    invoke-static {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$002(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;I)I

    #@43
    .line 849
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@46
    .line 850
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    #@49
    return-void

    #@4a
    .line 853
    :cond_4a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@4c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mMotionScene:Landroidx/constraintlayout/motion/widget/MotionScene;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;

    #@4f
    move-result-object v0

    #@50
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@52
    .line 854
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    #@54
    and-int/lit8 v2, v1, 0x1

    #@56
    const/4 v3, 0x0

    #@57
    const/4 v4, 0x1

    #@58
    if-nez v2, :cond_61

    #@5a
    and-int/lit16 v2, v1, 0x100

    #@5c
    if-eqz v2, :cond_5f

    #@5e
    goto :goto_61

    #@5f
    :cond_5f
    move v2, v3

    #@60
    goto :goto_62

    #@61
    :cond_61
    :goto_61
    move v2, v4

    #@62
    :goto_62
    and-int/lit8 v5, v1, 0x10

    #@64
    if-nez v5, :cond_6d

    #@66
    and-int/lit16 v1, v1, 0x1000

    #@68
    if-eqz v1, :cond_6b

    #@6a
    goto :goto_6d

    #@6b
    :cond_6b
    move v1, v3

    #@6c
    goto :goto_6e

    #@6d
    :cond_6d
    :goto_6d
    move v1, v4

    #@6e
    :goto_6e
    if-eqz v2, :cond_74

    #@70
    if-eqz v1, :cond_74

    #@72
    move v5, v4

    #@73
    goto :goto_75

    #@74
    :cond_74
    move v5, v3

    #@75
    :goto_75
    if-eqz v5, :cond_9c

    #@77
    .line 858
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@79
    # getter for: Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mMotionScene:Landroidx/constraintlayout/motion/widget/MotionScene;
    invoke-static {v5}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->access$800(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)Landroidx/constraintlayout/motion/widget/MotionScene;

    #@7c
    move-result-object v5

    #@7d
    iget-object v5, v5, Landroidx/constraintlayout/motion/widget/MotionScene;->mCurrentTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@7f
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@81
    if-eq v5, v6, :cond_86

    #@83
    .line 859
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@86
    .line 861
    :cond_86
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    #@89
    move-result v5

    #@8a
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getEndState()I

    #@8d
    move-result v6

    #@8e
    if-eq v5, v6, :cond_9d

    #@90
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    #@93
    move-result v5

    #@94
    const/high16 v6, 0x3f000000    # 0.5f

    #@96
    cmpl-float v5, v5, v6

    #@98
    if-lez v5, :cond_9b

    #@9a
    goto :goto_9d

    #@9b
    :cond_9b
    move v1, v3

    #@9c
    :cond_9c
    move v3, v2

    #@9d
    .line 867
    :cond_9d
    :goto_9d
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->isTransitionViable(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;Landroidx/constraintlayout/motion/widget/MotionLayout;)Z

    #@a0
    move-result v0

    #@a1
    if-eqz v0, :cond_e8

    #@a3
    if-eqz v3, :cond_b3

    #@a5
    .line 868
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    #@a7
    and-int/2addr v0, v4

    #@a8
    if-eqz v0, :cond_b3

    #@aa
    .line 869
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@ac
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@af
    .line 870
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToEnd()V

    #@b2
    goto :goto_e8

    #@b3
    :cond_b3
    if-eqz v1, :cond_c4

    #@b5
    .line 871
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    #@b7
    and-int/lit8 v0, v0, 0x10

    #@b9
    if-eqz v0, :cond_c4

    #@bb
    .line 872
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@bd
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@c0
    .line 873
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    #@c3
    goto :goto_e8

    #@c4
    :cond_c4
    if-eqz v3, :cond_d7

    #@c6
    .line 874
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    #@c8
    and-int/lit16 v0, v0, 0x100

    #@ca
    if-eqz v0, :cond_d7

    #@cc
    .line 875
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@ce
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@d1
    const/high16 v0, 0x3f800000    # 1.0f

    #@d3
    .line 876
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@d6
    goto :goto_e8

    #@d7
    :cond_d7
    if-eqz v1, :cond_e8

    #@d9
    .line 877
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mMode:I

    #@db
    and-int/lit16 v0, v0, 0x1000

    #@dd
    if-eqz v0, :cond_e8

    #@df
    .line 878
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTransition:Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    #@e1
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    #@e4
    const/4 v0, 0x0

    #@e5
    .line 879
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    #@e8
    :cond_e8
    :goto_e8
    return-void
.end method

.method public removeOnClickListeners(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionLayout"
        }
    .end annotation

    #@0
    .line 810
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_6

    #@5
    return-void

    #@6
    .line 813
    :cond_6
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object p1

    #@a
    if-nez p1, :cond_23

    #@c
    .line 815
    new-instance p1, Ljava/lang/StringBuilder;

    #@e
    const-string v0, " (*)  could not find id "

    #@10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object p1

    #@1d
    const-string v0, "MotionScene"

    #@1f
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    return-void

    #@23
    :cond_23
    const/4 v0, 0x0

    #@24
    .line 818
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@27
    return-void
.end method
