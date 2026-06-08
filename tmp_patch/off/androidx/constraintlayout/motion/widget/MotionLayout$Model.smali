.class Landroidx/constraintlayout/motion/widget/MotionLayout$Model;
.super Ljava/lang/Object;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Model"
.end annotation


# instance fields
.field mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

.field mEndId:I

.field mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field mStart:Landroidx/constraintlayout/widget/ConstraintSet;

.field mStartId:I

.field final synthetic this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    #@0
    .line 2499
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2500
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@7
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    #@a
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@c
    .line 2501
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@e
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    #@11
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@13
    const/4 p1, 0x0

    #@14
    .line 2502
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    #@16
    .line 2503
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    #@18
    return-void
.end method

.method private computeStartEndSize(II)V
    .registers 8
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
    .line 2783
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getOptimizationLevel()I

    #@5
    move-result v0

    #@6
    .line 2785
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@8
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    #@a
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@c
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    #@f
    move-result v2

    #@10
    if-ne v1, v2, :cond_4b

    #@12
    .line 2786
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@14
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@16
    .line 2787
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    #@18
    if-eqz v3, :cond_21

    #@1a
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@1c
    if-nez v3, :cond_1f

    #@1e
    goto :goto_21

    #@1f
    :cond_1f
    move v3, p2

    #@20
    goto :goto_22

    #@21
    :cond_21
    :goto_21
    move v3, p1

    #@22
    .line 2788
    :goto_22
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    #@24
    if-eqz v4, :cond_2d

    #@26
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@28
    if-nez v4, :cond_2b

    #@2a
    goto :goto_2d

    #@2b
    :cond_2b
    move v4, p1

    #@2c
    goto :goto_2e

    #@2d
    :cond_2d
    :goto_2d
    move v4, p2

    #@2e
    .line 2786
    :goto_2e
    # invokes: Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    invoke-static {v1, v2, v0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1600(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    #@31
    .line 2789
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    #@33
    if-eqz v1, :cond_82

    #@35
    .line 2790
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@37
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@39
    .line 2791
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@3b
    if-nez v1, :cond_3f

    #@3d
    move v1, p1

    #@3e
    goto :goto_40

    #@3f
    :cond_3f
    move v1, p2

    #@40
    .line 2792
    :goto_40
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    #@42
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@44
    if-nez v4, :cond_47

    #@46
    move p1, p2

    #@47
    .line 2790
    :cond_47
    # invokes: Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    invoke-static {v2, v3, v0, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1700(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    #@4a
    goto :goto_82

    #@4b
    .line 2795
    :cond_4b
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    #@4d
    if-eqz v1, :cond_66

    #@4f
    .line 2796
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@51
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@53
    .line 2797
    iget v1, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@55
    if-nez v1, :cond_59

    #@57
    move v1, p1

    #@58
    goto :goto_5a

    #@59
    :cond_59
    move v1, p2

    #@5a
    .line 2798
    :goto_5a
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    #@5c
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@5e
    if-nez v4, :cond_62

    #@60
    move v4, p2

    #@61
    goto :goto_63

    #@62
    :cond_62
    move v4, p1

    #@63
    .line 2796
    :goto_63
    # invokes: Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    invoke-static {v2, v3, v0, v1, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1800(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    #@66
    .line 2800
    :cond_66
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@68
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@6a
    .line 2801
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    #@6c
    if-eqz v3, :cond_75

    #@6e
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@70
    if-nez v3, :cond_73

    #@72
    goto :goto_75

    #@73
    :cond_73
    move v3, p2

    #@74
    goto :goto_76

    #@75
    :cond_75
    :goto_75
    move v3, p1

    #@76
    .line 2802
    :goto_76
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    #@78
    if-eqz v4, :cond_7e

    #@7a
    iget v4, v4, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@7c
    if-nez v4, :cond_7f

    #@7e
    :cond_7e
    move p1, p2

    #@7f
    .line 2800
    :cond_7f
    # invokes: Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    invoke-static {v1, v2, v0, v3, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1900(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    #@82
    :cond_82
    :goto_82
    return-void
.end method

.method private debugLayout(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "title",
            "c"
        }
    .end annotation

    #@0
    .line 2702
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getCompanionWidget()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/view/View;

    #@6
    .line 2703
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object p1

    #@f
    const-string v1, " "

    #@11
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object p1

    #@15
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p1

    #@1d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object p1

    #@21
    .line 2704
    new-instance v0, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    const-string v2, "  ========= "

    #@2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    const-string v2, "MotionLayout"

    #@3a
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3d
    .line 2705
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@44
    move-result v0

    #@45
    const/4 v3, 0x0

    #@46
    :goto_46
    if-ge v3, v0, :cond_129

    #@48
    .line 2707
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    const-string v5, "["

    #@53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    const-string v5, "] "

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    .line 2708
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6c
    move-result-object v5

    #@6d
    check-cast v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@6f
    .line 2710
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@71
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@73
    const-string v7, "_"

    #@75
    if-eqz v6, :cond_7a

    #@77
    const-string v6, "T"

    #@79
    goto :goto_7b

    #@7a
    :cond_7a
    move-object v6, v7

    #@7b
    .line 2711
    :goto_7b
    new-instance v8, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@86
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@88
    if-eqz v8, :cond_8d

    #@8a
    const-string v8, "B"

    #@8c
    goto :goto_8e

    #@8d
    :cond_8d
    move-object v8, v7

    #@8e
    :goto_8e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v6

    #@92
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v6

    #@96
    .line 2712
    new-instance v8, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v6

    #@9f
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a1
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@a3
    if-eqz v8, :cond_a8

    #@a5
    const-string v8, "L"

    #@a7
    goto :goto_a9

    #@a8
    :cond_a8
    move-object v8, v7

    #@a9
    :goto_a9
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v6

    #@ad
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v6

    #@b1
    .line 2713
    new-instance v8, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v6

    #@ba
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@bc
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@be
    if-eqz v8, :cond_c2

    #@c0
    const-string v7, "R"

    #@c2
    :cond_c2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v6

    #@c6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v6

    #@ca
    .line 2714
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    #@cd
    move-result-object v7

    #@ce
    check-cast v7, Landroid/view/View;

    #@d0
    .line 2715
    invoke-static {v7}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@d3
    move-result-object v8

    #@d4
    .line 2716
    instance-of v9, v7, Landroid/widget/TextView;

    #@d6
    if-eqz v9, :cond_fb

    #@d8
    .line 2717
    new-instance v9, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v8

    #@e1
    const-string v9, "("

    #@e3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v8

    #@e7
    check-cast v7, Landroid/widget/TextView;

    #@e9
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@ec
    move-result-object v7

    #@ed
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v7

    #@f1
    const-string v8, ")"

    #@f3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v7

    #@f7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v8

    #@fb
    .line 2719
    :cond_fb
    new-instance v7, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v4

    #@104
    const-string v7, "  "

    #@106
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v4

    #@10a
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v4

    #@10e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v4

    #@112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v4

    #@116
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v4

    #@11a
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v4

    #@11e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v4

    #@122
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@125
    add-int/lit8 v3, v3, 0x1

    #@127
    goto/16 :goto_46

    #@129
    .line 2721
    :cond_129
    new-instance p2, Ljava/lang/StringBuilder;

    #@12b
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@12e
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object p1

    #@132
    const-string p2, " done. "

    #@134
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object p1

    #@138
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object p1

    #@13c
    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13f
    return-void
.end method

.method private debugLayoutParam(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "params"
        }
    .end annotation

    #@0
    .line 2675
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    #@2
    const/4 v1, -0x1

    #@3
    if-eq v0, v1, :cond_8

    #@5
    const-string v0, "SS"

    #@7
    goto :goto_a

    #@8
    :cond_8
    const-string v0, "__"

    #@a
    :goto_a
    const-string v2, " "

    #@c
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 2676
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    #@1b
    const-string v3, "|__"

    #@1d
    if-eq v2, v1, :cond_22

    #@1f
    const-string v2, "|SE"

    #@21
    goto :goto_23

    #@22
    :cond_22
    move-object v2, v3

    #@23
    :goto_23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    .line 2677
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    iget v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    #@36
    if-eq v2, v1, :cond_3b

    #@38
    const-string v2, "|ES"

    #@3a
    goto :goto_3c

    #@3b
    :cond_3b
    move-object v2, v3

    #@3c
    :goto_3c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    .line 2678
    new-instance v2, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    iget v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    #@4f
    if-eq v2, v1, :cond_54

    #@51
    const-string v2, "|EE"

    #@53
    goto :goto_55

    #@54
    :cond_54
    move-object v2, v3

    #@55
    :goto_55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    .line 2679
    new-instance v2, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v0

    #@66
    iget v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    #@68
    if-eq v2, v1, :cond_6d

    #@6a
    const-string v2, "|LL"

    #@6c
    goto :goto_6e

    #@6d
    :cond_6d
    move-object v2, v3

    #@6e
    :goto_6e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    .line 2680
    new-instance v2, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    iget v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    #@81
    if-eq v2, v1, :cond_86

    #@83
    const-string v2, "|LR"

    #@85
    goto :goto_87

    #@86
    :cond_86
    move-object v2, v3

    #@87
    :goto_87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v0

    #@8f
    .line 2681
    new-instance v2, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    iget v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    #@9a
    if-eq v2, v1, :cond_9f

    #@9c
    const-string v2, "|RL"

    #@9e
    goto :goto_a0

    #@9f
    :cond_9f
    move-object v2, v3

    #@a0
    :goto_a0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v0

    #@a4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    .line 2682
    new-instance v2, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    iget v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    #@b3
    if-eq v2, v1, :cond_b8

    #@b5
    const-string v2, "|RR"

    #@b7
    goto :goto_b9

    #@b8
    :cond_b8
    move-object v2, v3

    #@b9
    :goto_b9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v0

    #@bd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v0

    #@c1
    .line 2683
    new-instance v2, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v0

    #@ca
    iget v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    #@cc
    if-eq v2, v1, :cond_d1

    #@ce
    const-string v2, "|TT"

    #@d0
    goto :goto_d2

    #@d1
    :cond_d1
    move-object v2, v3

    #@d2
    :goto_d2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v0

    #@da
    .line 2684
    new-instance v2, Ljava/lang/StringBuilder;

    #@dc
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@df
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    iget v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    #@e5
    if-eq v2, v1, :cond_ea

    #@e7
    const-string v2, "|TB"

    #@e9
    goto :goto_eb

    #@ea
    :cond_ea
    move-object v2, v3

    #@eb
    :goto_eb
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v0

    #@ef
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v0

    #@f3
    .line 2685
    new-instance v2, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v0

    #@fc
    iget v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    #@fe
    if-eq v2, v1, :cond_103

    #@100
    const-string v2, "|BT"

    #@102
    goto :goto_104

    #@103
    :cond_103
    move-object v2, v3

    #@104
    :goto_104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v0

    #@108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10b
    move-result-object v0

    #@10c
    .line 2686
    new-instance v2, Ljava/lang/StringBuilder;

    #@10e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@111
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v0

    #@115
    iget p2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    #@117
    if-eq p2, v1, :cond_11b

    #@119
    const-string v3, "|BB"

    #@11b
    :cond_11b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object p2

    #@11f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object p2

    #@123
    .line 2687
    new-instance v0, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object p1

    #@12c
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object p1

    #@130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@133
    move-result-object p1

    #@134
    const-string p2, "MotionLayout"

    #@136
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@139
    return-void
.end method

.method private debugWidget(Ljava/lang/String;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "child"
        }
    .end annotation

    #@0
    .line 2693
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, " "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b
    const-string v2, "T"

    #@d
    const-string v3, "B"

    #@f
    const-string v4, "__"

    #@11
    if-eqz v1, :cond_25

    #@13
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@15
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@17
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@19
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@1b
    if-ne v1, v5, :cond_1f

    #@1d
    move-object v1, v2

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    move-object v1, v3

    #@20
    :goto_20
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    goto :goto_26

    #@25
    :cond_25
    move-object v1, v4

    #@26
    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 2694
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@39
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3b
    if-eqz v1, :cond_4e

    #@3d
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3f
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@41
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@43
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@45
    if-ne v1, v5, :cond_48

    #@47
    goto :goto_49

    #@48
    :cond_48
    move-object v2, v3

    #@49
    :goto_49
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    goto :goto_4f

    #@4e
    :cond_4e
    move-object v1, v4

    #@4f
    :goto_4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    .line 2695
    new-instance v1, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@62
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@64
    const-string v2, "L"

    #@66
    const-string v3, "R"

    #@68
    if-eqz v1, :cond_7c

    #@6a
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6c
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6e
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@70
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@72
    if-ne v1, v5, :cond_76

    #@74
    move-object v1, v2

    #@75
    goto :goto_77

    #@76
    :cond_76
    move-object v1, v3

    #@77
    :goto_77
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    goto :goto_7d

    #@7c
    :cond_7c
    move-object v1, v4

    #@7d
    :goto_7d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    .line 2696
    new-instance v1, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@90
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@92
    if-eqz v1, :cond_a4

    #@94
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@96
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@98
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mType:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@9a
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    #@9c
    if-ne v1, v4, :cond_9f

    #@9e
    goto :goto_a0

    #@9f
    :cond_9f
    move-object v2, v3

    #@a0
    :goto_a0
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@a3
    move-result-object v4

    #@a4
    :cond_a4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v0

    #@ac
    .line 2697
    new-instance v1, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object p1

    #@b5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object p1

    #@b9
    const-string v0, " ---  "

    #@bb
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object p1

    #@bf
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object p1

    #@c3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object p1

    #@c7
    const-string p2, "MotionLayout"

    #@c9
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@cc
    return-void
.end method

.method private setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "cSet"
        }
    .end annotation

    #@0
    .line 2596
    new-instance v6, Landroid/util/SparseArray;

    #@2
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    #@5
    .line 2597
    new-instance v7, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    #@7
    const/4 v0, -0x2

    #@8
    invoke-direct {v7, v0, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    #@b
    .line 2599
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    #@e
    const/4 v0, 0x0

    #@f
    .line 2600
    invoke-virtual {v6, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@12
    .line 2601
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@14
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getId()I

    #@17
    move-result v0

    #@18
    invoke-virtual {v6, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1b
    if-eqz p2, :cond_42

    #@1d
    .line 2602
    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintSet;->mRotate:I

    #@1f
    if-eqz v0, :cond_42

    #@21
    .line 2603
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@23
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@25
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getOptimizationLevel()I

    #@28
    move-result v2

    #@29
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2b
    .line 2604
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@2e
    move-result v3

    #@2f
    const/high16 v4, 0x40000000    # 2.0f

    #@31
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@34
    move-result v3

    #@35
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@37
    .line 2605
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    #@3a
    move-result v5

    #@3b
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@3e
    move-result v4

    #@3f
    .line 2603
    # invokes: Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveSystem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;III)V

    #@42
    .line 2608
    :cond_42
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@49
    move-result-object v0

    #@4a
    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@4d
    move-result v1

    #@4e
    const/4 v8, 0x1

    #@4f
    if-eqz v1, :cond_68

    #@51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v1

    #@55
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@57
    .line 2609
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setAnimated(Z)V

    #@5a
    .line 2610
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    #@5d
    move-result-object v2

    #@5e
    check-cast v2, Landroid/view/View;

    #@60
    .line 2611
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    #@63
    move-result v2

    #@64
    invoke-virtual {v6, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@67
    goto :goto_4a

    #@68
    .line 2614
    :cond_68
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@6f
    move-result-object v9

    #@70
    :goto_70
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@73
    move-result v0

    #@74
    if-eqz v0, :cond_e6

    #@76
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@79
    move-result-object v0

    #@7a
    move-object v10, v0

    #@7b
    check-cast v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@7d
    .line 2615
    invoke-virtual {v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    #@80
    move-result-object v0

    #@81
    move-object v11, v0

    #@82
    check-cast v11, Landroid/view/View;

    #@84
    .line 2616
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    #@87
    move-result v0

    #@88
    invoke-virtual {p2, v0, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToLayoutParams(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    #@8b
    .line 2618
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    #@8e
    move-result v0

    #@8f
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getWidth(I)I

    #@92
    move-result v0

    #@93
    invoke-virtual {v10, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    #@96
    .line 2619
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    #@99
    move-result v0

    #@9a
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getHeight(I)I

    #@9d
    move-result v0

    #@9e
    invoke-virtual {v10, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    #@a1
    .line 2620
    instance-of v0, v11, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@a3
    if-eqz v0, :cond_b5

    #@a5
    .line 2621
    move-object v0, v11

    #@a6
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@a8
    invoke-virtual {p2, v0, v10, v7, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToHelper(Landroidx/constraintlayout/widget/ConstraintHelper;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    #@ab
    .line 2622
    instance-of v0, v11, Landroidx/constraintlayout/widget/Barrier;

    #@ad
    if-eqz v0, :cond_b5

    #@af
    .line 2623
    move-object v0, v11

    #@b0
    check-cast v0, Landroidx/constraintlayout/widget/Barrier;

    #@b2
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/Barrier;->validateParams()V

    #@b5
    .line 2634
    :cond_b5
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@b7
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getLayoutDirection()I

    #@ba
    move-result v0

    #@bb
    invoke-virtual {v7, v0}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->resolveLayoutDirection(I)V

    #@be
    .line 2638
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@c0
    const/4 v1, 0x0

    #@c1
    move-object v2, v11

    #@c2
    move-object v3, v10

    #@c3
    move-object v4, v7

    #@c4
    move-object v5, v6

    #@c5
    # invokes: Landroidx/constraintlayout/motion/widget/MotionLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1100(Landroidx/constraintlayout/motion/widget/MotionLayout;ZLandroid/view/View;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    #@c8
    .line 2639
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    #@cb
    move-result v0

    #@cc
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getVisibilityMode(I)I

    #@cf
    move-result v0

    #@d0
    if-ne v0, v8, :cond_da

    #@d2
    .line 2640
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    #@d5
    move-result v0

    #@d6
    invoke-virtual {v10, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVisibility(I)V

    #@d9
    goto :goto_70

    #@da
    .line 2642
    :cond_da
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    #@dd
    move-result v0

    #@de
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getVisibility(I)I

    #@e1
    move-result v0

    #@e2
    invoke-virtual {v10, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVisibility(I)V

    #@e5
    goto :goto_70

    #@e6
    .line 2645
    :cond_e6
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    #@e9
    move-result-object p2

    #@ea
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@ed
    move-result-object p2

    #@ee
    :cond_ee
    :goto_ee
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@f1
    move-result v0

    #@f2
    if-eqz v0, :cond_10f

    #@f4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f7
    move-result-object v0

    #@f8
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@fa
    .line 2646
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    #@fc
    if-eqz v1, :cond_ee

    #@fe
    .line 2647
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    #@101
    move-result-object v1

    #@102
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    #@104
    .line 2648
    check-cast v0, Landroidx/constraintlayout/core/widgets/Helper;

    #@106
    .line 2649
    invoke-virtual {v1, p1, v0, v6}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreLayout(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/Helper;Landroid/util/SparseArray;)V

    #@109
    .line 2650
    check-cast v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    #@10b
    .line 2651
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->captureWidgets()V

    #@10e
    goto :goto_ee

    #@10f
    :cond_10f
    return-void
.end method


# virtual methods
.method public build()V
    .registers 19

    #@0
    move-object/from16 v0, p0

    #@2
    .line 2807
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@4
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    #@7
    move-result v1

    #@8
    .line 2808
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@a
    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@c
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    #@f
    .line 2809
    new-instance v2, Landroid/util/SparseArray;

    #@11
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@14
    .line 2810
    new-array v3, v1, [I

    #@16
    const/4 v5, 0x0

    #@17
    :goto_17
    if-ge v5, v1, :cond_37

    #@19
    .line 2812
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@1b
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@1e
    move-result-object v6

    #@1f
    .line 2813
    new-instance v7, Landroidx/constraintlayout/motion/widget/MotionController;

    #@21
    invoke-direct {v7, v6}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    #@24
    .line 2814
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    #@27
    move-result v8

    #@28
    aput v8, v3, v5

    #@2a
    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2d
    .line 2815
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2f
    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@31
    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    add-int/lit8 v5, v5, 0x1

    #@36
    goto :goto_17

    #@37
    :cond_37
    const/4 v5, 0x0

    #@38
    :goto_38
    if-ge v5, v1, :cond_152

    #@3a
    .line 2818
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@3c
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    #@3f
    move-result-object v6

    #@40
    .line 2819
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@42
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mFrameArrayList:Ljava/util/HashMap;

    #@44
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-result-object v7

    #@48
    move-object v13, v7

    #@49
    check-cast v13, Landroidx/constraintlayout/motion/widget/MotionController;

    #@4b
    if-nez v13, :cond_51

    #@4d
    move-object/from16 v16, v2

    #@4f
    goto/16 :goto_14c

    #@51
    .line 2823
    :cond_51
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    #@53
    const-string v14, ")"

    #@55
    const-string v15, " ("

    #@57
    const-string v12, "no widget for  "

    #@59
    const-string v11, "MotionLayout"

    #@5b
    if-eqz v7, :cond_b9

    #@5d
    .line 2824
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@5f
    invoke-virtual {v0, v7, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->getWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@62
    move-result-object v7

    #@63
    if-eqz v7, :cond_7e

    #@65
    .line 2826
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@67
    # invokes: Landroidx/constraintlayout/motion/widget/MotionLayout;->toRect(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;
    invoke-static {v8, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;

    #@6a
    move-result-object v7

    #@6b
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    #@6d
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@6f
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    #@72
    move-result v9

    #@73
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@75
    invoke-virtual {v10}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@78
    move-result v10

    #@79
    invoke-virtual {v13, v7, v8, v9, v10}, Landroidx/constraintlayout/motion/widget/MotionController;->setStartState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    #@7c
    goto/16 :goto_ea

    #@7e
    .line 2828
    :cond_7e
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@80
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@82
    if-eqz v7, :cond_ea

    #@84
    .line 2829
    new-instance v7, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    #@8c
    move-result-object v8

    #@8d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v7

    #@91
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v7

    #@95
    invoke-static {v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@98
    move-result-object v8

    #@99
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v7

    #@9d
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v7

    #@a1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a4
    move-result-object v8

    #@a5
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a8
    move-result-object v8

    #@a9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v7

    #@ad
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v7

    #@b1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v7

    #@b5
    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    goto :goto_ea

    #@b9
    .line 2833
    :cond_b9
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@bb
    # getter for: Landroidx/constraintlayout/motion/widget/MotionLayout;->mInRotation:Z
    invoke-static {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$300(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z

    #@be
    move-result v7

    #@bf
    if-eqz v7, :cond_ea

    #@c1
    .line 2834
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@c3
    iget-object v7, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotate:Ljava/util/HashMap;

    #@c5
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c8
    move-result-object v7

    #@c9
    move-object v8, v7

    #@ca
    check-cast v8, Landroidx/constraintlayout/motion/utils/ViewState;

    #@cc
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@ce
    iget v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mRotatMode:I

    #@d0
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@d2
    .line 2835
    # getter for: Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotateWidth:I
    invoke-static {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$2100(Landroidx/constraintlayout/motion/widget/MotionLayout;)I

    #@d5
    move-result v16

    #@d6
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@d8
    # getter for: Landroidx/constraintlayout/motion/widget/MotionLayout;->mPreRotateHeight:I
    invoke-static {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$2200(Landroidx/constraintlayout/motion/widget/MotionLayout;)I

    #@db
    move-result v17

    #@dc
    move-object v7, v13

    #@dd
    move-object v9, v6

    #@de
    move-object v4, v11

    #@df
    move/from16 v11, v16

    #@e1
    move-object/from16 v16, v2

    #@e3
    move-object v2, v12

    #@e4
    move/from16 v12, v17

    #@e6
    .line 2834
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/motion/widget/MotionController;->setStartState(Landroidx/constraintlayout/motion/utils/ViewState;Landroid/view/View;III)V

    #@e9
    goto :goto_ee

    #@ea
    :cond_ea
    :goto_ea
    move-object/from16 v16, v2

    #@ec
    move-object v4, v11

    #@ed
    move-object v2, v12

    #@ee
    .line 2838
    :goto_ee
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    #@f0
    if-eqz v7, :cond_14c

    #@f2
    .line 2839
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@f4
    invoke-virtual {v0, v7, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->getWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@f7
    move-result-object v7

    #@f8
    if-eqz v7, :cond_112

    #@fa
    .line 2841
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@fc
    # invokes: Landroidx/constraintlayout/motion/widget/MotionLayout;->toRect(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;
    invoke-static {v2, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$2000(Landroidx/constraintlayout/motion/widget/MotionLayout;Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Landroid/graphics/Rect;

    #@ff
    move-result-object v2

    #@100
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    #@102
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@104
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    #@107
    move-result v6

    #@108
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@10a
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    #@10d
    move-result v7

    #@10e
    invoke-virtual {v13, v2, v4, v6, v7}, Landroidx/constraintlayout/motion/widget/MotionController;->setEndState(Landroid/graphics/Rect;Landroidx/constraintlayout/widget/ConstraintSet;II)V

    #@111
    goto :goto_14c

    #@112
    .line 2843
    :cond_112
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@114
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mDebugPath:I

    #@116
    if-eqz v7, :cond_14c

    #@118
    .line 2844
    new-instance v7, Ljava/lang/StringBuilder;

    #@11a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@11d
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLocation()Ljava/lang/String;

    #@120
    move-result-object v8

    #@121
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v7

    #@125
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v2

    #@129
    invoke-static {v6}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@12c
    move-result-object v7

    #@12d
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v2

    #@131
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    move-result-object v2

    #@135
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@138
    move-result-object v6

    #@139
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13c
    move-result-object v6

    #@13d
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v2

    #@141
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v2

    #@145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@148
    move-result-object v2

    #@149
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14c
    :cond_14c
    :goto_14c
    add-int/lit8 v5, v5, 0x1

    #@14e
    move-object/from16 v2, v16

    #@150
    goto/16 :goto_38

    #@152
    :cond_152
    move-object/from16 v16, v2

    #@154
    const/4 v4, 0x0

    #@155
    :goto_155
    if-ge v4, v1, :cond_176

    #@157
    .line 2851
    aget v2, v3, v4

    #@159
    move-object/from16 v5, v16

    #@15b
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@15e
    move-result-object v2

    #@15f
    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionController;

    #@161
    .line 2852
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionController;->getAnimateRelativeTo()I

    #@164
    move-result v6

    #@165
    const/4 v7, -0x1

    #@166
    if-eq v6, v7, :cond_171

    #@168
    .line 2854
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@16b
    move-result-object v6

    #@16c
    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionController;

    #@16e
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/motion/widget/MotionController;->setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;)V

    #@171
    :cond_171
    add-int/lit8 v4, v4, 0x1

    #@173
    move-object/from16 v16, v5

    #@175
    goto :goto_155

    #@176
    :cond_176
    return-void
.end method

.method copy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "dest"
        }
    .end annotation

    #@0
    .line 2508
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    .line 2509
    new-instance v1, Ljava/util/HashMap;

    #@6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@9
    .line 2510
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 2511
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@13
    .line 2512
    invoke-virtual {p2, p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    #@16
    .line 2513
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object p1

    #@1a
    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_64

    #@20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@26
    .line 2515
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Barrier;

    #@28
    if-eqz v3, :cond_30

    #@2a
    .line 2516
    new-instance v3, Landroidx/constraintlayout/core/widgets/Barrier;

    #@2c
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Barrier;-><init>()V

    #@2f
    goto :goto_5d

    #@30
    .line 2517
    :cond_30
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Guideline;

    #@32
    if-eqz v3, :cond_3a

    #@34
    .line 2518
    new-instance v3, Landroidx/constraintlayout/core/widgets/Guideline;

    #@36
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Guideline;-><init>()V

    #@39
    goto :goto_5d

    #@3a
    .line 2519
    :cond_3a
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Flow;

    #@3c
    if-eqz v3, :cond_44

    #@3e
    .line 2520
    new-instance v3, Landroidx/constraintlayout/core/widgets/Flow;

    #@40
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Flow;-><init>()V

    #@43
    goto :goto_5d

    #@44
    .line 2521
    :cond_44
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Placeholder;

    #@46
    if-eqz v3, :cond_4e

    #@48
    .line 2522
    new-instance v3, Landroidx/constraintlayout/core/widgets/Placeholder;

    #@4a
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/Placeholder;-><init>()V

    #@4d
    goto :goto_5d

    #@4e
    .line 2523
    :cond_4e
    instance-of v3, v2, Landroidx/constraintlayout/core/widgets/Helper;

    #@50
    if-eqz v3, :cond_58

    #@52
    .line 2524
    new-instance v3, Landroidx/constraintlayout/core/widgets/HelperWidget;

    #@54
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/HelperWidget;-><init>()V

    #@57
    goto :goto_5d

    #@58
    .line 2526
    :cond_58
    new-instance v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@5a
    invoke-direct {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    #@5d
    .line 2528
    :goto_5d
    invoke-virtual {p2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@60
    .line 2529
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    goto :goto_1a

    #@64
    .line 2531
    :cond_64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@67
    move-result-object p1

    #@68
    :goto_68
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@6b
    move-result p2

    #@6c
    if-eqz p2, :cond_7e

    #@6e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@71
    move-result-object p2

    #@72
    check-cast p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@74
    .line 2532
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    move-result-object v0

    #@78
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@7a
    invoke-virtual {v0, p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    #@7d
    goto :goto_68

    #@7e
    :cond_7e
    return-void
.end method

.method getWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroid/view/View;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "view"
        }
    .end annotation

    #@0
    .line 2657
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getCompanionWidget()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-ne v0, p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 2660
    :cond_7
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    #@a
    move-result-object p1

    #@b
    .line 2661
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    const/4 v1, 0x0

    #@10
    :goto_10
    if-ge v1, v0, :cond_22

    #@12
    .line 2663
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@18
    .line 2664
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    if-ne v3, p2, :cond_1f

    #@1e
    return-object v2

    #@1f
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_10

    #@22
    :cond_22
    const/4 p1, 0x0

    #@23
    return-object p1
.end method

.method initFrom(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseLayout",
            "start",
            "end"
        }
    .end annotation

    #@0
    .line 2537
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStart:Landroidx/constraintlayout/widget/ConstraintSet;

    #@2
    .line 2538
    iput-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEnd:Landroidx/constraintlayout/widget/ConstraintSet;

    #@4
    .line 2539
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@6
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    #@9
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@b
    .line 2540
    new-instance p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@d
    invoke-direct {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;-><init>()V

    #@10
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@12
    .line 2541
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@14
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@16
    # getter for: Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$400(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMeasurer(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@21
    .line 2542
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@23
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@25
    # getter for: Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$500(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMeasurer(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;)V

    #@30
    .line 2543
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@32
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    #@35
    .line 2544
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@37
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    #@3a
    .line 2545
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@3c
    # getter for: Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$600(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@3f
    move-result-object p1

    #@40
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@42
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    #@45
    .line 2546
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@47
    # getter for: Landroidx/constraintlayout/motion/widget/MotionLayout;->mLayoutWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$700(Landroidx/constraintlayout/motion/widget/MotionLayout;)Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@4a
    move-result-object p1

    #@4b
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@4d
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    #@50
    .line 2547
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@52
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mTransitionLastPosition:F

    #@54
    float-to-double v0, p1

    #@55
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    #@57
    cmpl-double p1, v0, v2

    #@59
    if-lez p1, :cond_68

    #@5b
    if-eqz p2, :cond_62

    #@5d
    .line 2549
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@5f
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@62
    .line 2551
    :cond_62
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@64
    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@67
    goto :goto_74

    #@68
    .line 2553
    :cond_68
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@6a
    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@6d
    if-eqz p2, :cond_74

    #@6f
    .line 2555
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@71
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->setupConstraintWidget(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/widget/ConstraintSet;)V

    #@74
    .line 2562
    :cond_74
    :goto_74
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@76
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@78
    # invokes: Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$800(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z

    #@7b
    move-result p2

    #@7c
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    #@7f
    .line 2563
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@81
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    #@84
    .line 2573
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@86
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@88
    # invokes: Landroidx/constraintlayout/motion/widget/MotionLayout;->isRtl()Z
    invoke-static {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$900(Landroidx/constraintlayout/motion/widget/MotionLayout;)Z

    #@8b
    move-result p2

    #@8c
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    #@8f
    .line 2574
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@91
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    #@94
    .line 2582
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@96
    invoke-virtual {p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@99
    move-result-object p1

    #@9a
    if-eqz p1, :cond_c1

    #@9c
    .line 2584
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@9e
    const/4 p3, -0x2

    #@9f
    if-ne p2, p3, :cond_af

    #@a1
    .line 2585
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@a3
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@a5
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@a8
    .line 2586
    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@aa
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@ac
    invoke-virtual {p2, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@af
    .line 2588
    :cond_af
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@b1
    if-ne p1, p3, :cond_c1

    #@b3
    .line 2589
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@b5
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@b7
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@ba
    .line 2590
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@bc
    sget-object p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@be
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@c1
    :cond_c1
    return-void
.end method

.method public isNotConfiguredWith(II)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startId",
            "endId"
        }
    .end annotation

    #@0
    .line 2865
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    #@2
    if-ne p1, v0, :cond_b

    #@4
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    #@6
    if-eq p2, p1, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p1, 0x1

    #@c
    :goto_c
    return p1
.end method

.method public measure(II)V
    .registers 16
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
    .line 2730
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@3
    move-result v0

    #@4
    .line 2731
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    #@7
    move-result v1

    #@8
    .line 2733
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@a
    iput v0, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    #@c
    .line 2734
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@e
    iput v1, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    #@10
    .line 2735
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@12
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getOptimizationLevel()I

    #@15
    .line 2737
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->computeStartEndSize(II)V

    #@18
    .line 2745
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@1a
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getParent()Landroid/view/ViewParent;

    #@1d
    move-result-object v2

    #@1e
    instance-of v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@20
    const/4 v3, 0x0

    #@21
    const/4 v4, 0x1

    #@22
    if-eqz v2, :cond_2c

    #@24
    const/high16 v2, 0x40000000    # 2.0f

    #@26
    if-ne v0, v2, :cond_2c

    #@28
    if-ne v1, v2, :cond_2c

    #@2a
    move v0, v3

    #@2b
    goto :goto_2d

    #@2c
    :cond_2c
    move v0, v4

    #@2d
    :goto_2d
    if-eqz v0, :cond_74

    #@2f
    .line 2749
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->computeStartEndSize(II)V

    #@32
    .line 2751
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@34
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@36
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@39
    move-result v1

    #@3a
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    #@3c
    .line 2752
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@3e
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@40
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@43
    move-result v1

    #@44
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    #@46
    .line 2753
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@48
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@4a
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    #@4d
    move-result v1

    #@4e
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    #@50
    .line 2754
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@52
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@54
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    #@57
    move-result v1

    #@58
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    #@5a
    .line 2755
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@5c
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    #@5e
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@60
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    #@62
    if-ne v1, v2, :cond_71

    #@64
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@66
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    #@68
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@6a
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    #@6c
    if-eq v1, v2, :cond_6f

    #@6e
    goto :goto_71

    #@6f
    :cond_6f
    move v1, v3

    #@70
    goto :goto_72

    #@71
    :cond_71
    :goto_71
    move v1, v4

    #@72
    :goto_72
    iput-boolean v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mMeasureDuringTransition:Z

    #@74
    .line 2759
    :cond_74
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@76
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    #@78
    .line 2760
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@7a
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    #@7c
    .line 2761
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@7e
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    #@80
    const/high16 v5, -0x80000000

    #@82
    if-eq v2, v5, :cond_8a

    #@84
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@86
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mWidthMeasureMode:I

    #@88
    if-nez v2, :cond_a0

    #@8a
    .line 2762
    :cond_8a
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@8c
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    #@8e
    int-to-float v0, v0

    #@8f
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@91
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    #@93
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@95
    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapWidth:I

    #@97
    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@99
    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapWidth:I

    #@9b
    sub-int/2addr v6, v7

    #@9c
    int-to-float v6, v6

    #@9d
    mul-float/2addr v2, v6

    #@9e
    add-float/2addr v0, v2

    #@9f
    float-to-int v0, v0

    #@a0
    :cond_a0
    move v9, v0

    #@a1
    .line 2764
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@a3
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    #@a5
    if-eq v0, v5, :cond_ad

    #@a7
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@a9
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mHeightMeasureMode:I

    #@ab
    if-nez v0, :cond_c3

    #@ad
    .line 2765
    :cond_ad
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@af
    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    #@b1
    int-to-float v0, v0

    #@b2
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@b4
    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mPostInterpolationPosition:F

    #@b6
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@b8
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->mEndWrapHeight:I

    #@ba
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@bc
    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;->mStartWrapHeight:I

    #@be
    sub-int/2addr v2, v5

    #@bf
    int-to-float v2, v2

    #@c0
    mul-float/2addr v1, v2

    #@c1
    add-float/2addr v0, v1

    #@c2
    float-to-int v1, v0

    #@c3
    :cond_c3
    move v10, v1

    #@c4
    .line 2768
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@c6
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    #@c9
    move-result v0

    #@ca
    if-nez v0, :cond_d7

    #@cc
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@ce
    .line 2769
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    #@d1
    move-result v0

    #@d2
    if-eqz v0, :cond_d5

    #@d4
    goto :goto_d7

    #@d5
    :cond_d5
    move v11, v3

    #@d6
    goto :goto_d8

    #@d7
    :cond_d7
    :goto_d7
    move v11, v4

    #@d8
    .line 2770
    :goto_d8
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutStart:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@da
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    #@dd
    move-result v0

    #@de
    if-nez v0, :cond_eb

    #@e0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mLayoutEnd:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@e2
    .line 2771
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    #@e5
    move-result v0

    #@e6
    if-eqz v0, :cond_e9

    #@e8
    goto :goto_eb

    #@e9
    :cond_e9
    move v12, v3

    #@ea
    goto :goto_ec

    #@eb
    :cond_eb
    :goto_eb
    move v12, v4

    #@ec
    .line 2772
    :goto_ec
    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@ee
    move v7, p1

    #@ef
    move v8, p2

    #@f0
    # invokes: Landroidx/constraintlayout/motion/widget/MotionLayout;->resolveMeasuredDimension(IIIIZZ)V
    invoke-static/range {v6 .. v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1500(Landroidx/constraintlayout/motion/widget/MotionLayout;IIIIZZ)V

    #@f3
    return-void
.end method

.method public reEvaluateState()V
    .registers 3

    #@0
    .line 2725
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@2
    # getter for: Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastWidthMeasureSpec:I
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1200(Landroidx/constraintlayout/motion/widget/MotionLayout;)I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@8
    # getter for: Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastHeightMeasureSpec:I
    invoke-static {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1300(Landroidx/constraintlayout/motion/widget/MotionLayout;)I

    #@b
    move-result v1

    #@c
    invoke-virtual {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->measure(II)V

    #@f
    .line 2726
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    #@11
    # invokes: Landroidx/constraintlayout/motion/widget/MotionLayout;->setupMotionViews()V
    invoke-static {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->access$1400(Landroidx/constraintlayout/motion/widget/MotionLayout;)V

    #@14
    return-void
.end method

.method public setMeasuredId(II)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startId",
            "endId"
        }
    .end annotation

    #@0
    .line 2860
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mStartId:I

    #@2
    .line 2861
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$Model;->mEndId:I

    #@4
    return-void
.end method
